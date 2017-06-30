def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT
    b.title,
    b.year
   FROM
    books b
   WHERE
    series_id = 1
   ORDER BY
    b.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT
    name,
    motto
  FROM
   characters
  GROUP BY
   name
  ORDER BY
   LENGTH(motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT
    species,
    count(species)
  FROM
   characters
  GROUP BY
   species
  ORDER BY
   count(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT
   a.name,
   su.name
  FROM
   series se,
   subgenres su,
   authors a
  WHERE
   se.subgenre_id = su.id
  AND
   se.author_id = a.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.book_id = books.id JOIN characters ON character_books.character_id = characters.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) as book_count from character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count DESC"
end
