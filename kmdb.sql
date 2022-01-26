-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS roles;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year INTEGER,
    rating TEXT,
    director_id INTEGER
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    role_id INTEGER,
    movie_id INTEGER
);

CREATE TABLE directors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
title,
year,
rating,
director_id
)
VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    "1"
);

INSERT INTO movies (
title,
year,
rating,
director_id
)
VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    "1"
);

INSERT INTO movies (
title,
year,
rating,
director_id
)
VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Christian Bale",
"3",
"1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Michael Caine",
"1",
"1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Liam Neeson",
"9",
"1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Katie Holmes",
"8",
"1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Gary Oldman",
"4",
"1"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Christian Bale",
"3",
"2"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Heath Ledger",
"7",
"2"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Aaron Eckhart",
"5",
"2"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Michael Caine",
"1",
"2"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Maggie Gyllenhaal",
"8",
"2"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Christian Bale",
"3",
"3"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Gary Oldman",
"4",
"3"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Tom Hardy",
"2",
"3"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Joseph Gordon-Levitt",
"6",
"3"
);

INSERT INTO actors (
    name,
    role_id,
    movie_id
)
VALUES (
"Anne Hathaway",
"10",
"3"
);

INSERT INTO directors (
    name
)
VALUES (
"Christopher Nolan"
);

INSERT INTO roles (
    name
)
VALUES (
    "Alfred"
);

INSERT INTO roles (
    name
)
VALUES (
    "Bane"
);

INSERT INTO roles (
    name
)
VALUES (
    "Bruce Wayne"
);

INSERT INTO roles (
    name
)
VALUES (
    "Commissioner Gordon"
);

INSERT INTO roles (
    name
)
VALUES (
    "Harvey Dent"
);

INSERT INTO roles (
    name
)
VALUES (
    "John Blake"
);

INSERT INTO roles (
    name
)
VALUES (
    "Joker"
);

INSERT INTO roles (
    name
)
VALUES (
    "Rachel Dawes"
);

INSERT INTO roles (
    name
)
VALUES (
    "Ra's Al Ghul"
);

INSERT INTO roles (
    name
)
VALUES (
    "Selina Kyle"
);

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT movies.title, movies.year, movies.rating, directors.name
FROM movies INNER JOIN directors on directors.id = movies.director_id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

SELECT movies.title, actors.name, roles.name
FROM movies
    INNER JOIN actors on movies.id = actors.movie_id
    INNER JOIN roles on actors.role_id = roles.id;