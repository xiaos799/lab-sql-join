use sakila;

#1 List the number of films per category
select * from film;
select * from film_category;
select * from category;

select name, count(film_id) num_film
from category
join film_category 
using (category_id)
group by name;

#2 Display the first and the last names, as well as the address, of each staff member.
select * from staff;
select * from address;

select first_name, last_name, address
from staff
join address using(address_id);

#3 Display the total amount rung up by each staff member in August 2005.
select * from payment;

select sum(amount), first_name, last_name from payment
join staff using (staff_id)
where payment_date like '2005-08%'
group by first_name, last_name;

#4 List all films and the number of actors who are listed for each film.
select * from film_actor;

select title, count(actor_id) from film
join film_actor using (film_id)
group by title;

#5 Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
select * from payment;
select * from customer;

select sum(amount), first_name, last_name from payment
join customer using (customer_id)
group by first_name, last_name
order by last_name;





