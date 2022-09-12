# SQL_DDL

##   Таблица employees

1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name Varchar(50) not null);

2. Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Andrey'),
       ('Andrey2'),
       ('Andrey3'),
       ('Andrey4'),
       ('Andrey5'),
       ('Andrey6'),
       ('Andrey7'),
       ('Andrey8'),
       ('Andrey9'),
       ('Andrey10'),
       ('Andrey11'),
       ('Andrey12'),
       ('Andrey13'),
       ('Andrey14'),
       ('Andrey15'),
       ('Andrey16'),
       ('Andrey17'),
       ('Andrey18'),
       ('Andrey19'),
       ('Andrey20'),
       ('Andre1'),
       ('Andre2'),
       ('Andre3'),
       ('Andre4'),
       ('Andre5'),
       ('Andre6'),
       ('Andre7'),
       ('Andre8'),
       ('Andre9'),
       ('Andre10'),
       ('Andre11'),
       ('Andre12'),
       ('Andre13'),
       ('Andre14'),
       ('Andre15'),
       ('Andre16'),
       ('Andre17'),
       ('Andre18'),
       ('Andre19'),
       ('Andre20'),
       ('Anna1'),
       ('Anna2'),
       ('Anna3'),
       ('Anna4'),
       ('Anna5'),
       ('Anna6'),
       ('Anna7'),
       ('Anna8'),
       ('Anna9'),
       ('Anna10'),
       ('Anna11'),
       ('Anna12'),
       ('Anna13'),
       ('Anna14'),
       ('Anna15'),
       ('Anna16'),
       ('Anna17'),
       ('Anna18'),
       ('Anna19'),
       ('Anna20'),
       ('Kate1'),
       ('Kate2'),
       ('Kate3'),
       ('Kate4'),
       ('Kate5'),
       ('Kate6'),
       ('Kate7'),
       ('Kate8'),
       ('Kate9'),
       ('Kate10');


##   Таблица salary

3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

create table salary(
id serial  primary key,
monthly_salary int not null);

4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400);

##   Таблица employee_salary

5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 1),
       (2, 2),
       (3, 5),
       (4, 9),
       (5, 4),
       (6, 13),
       (7, 6),
       (8, 10),
       (9, 2),
       (10, 3),
       (21, 1),
       (22, 2),
       (23, 5),
       (24, 9),
       (25, 4),
       (26, 13),
       (27, 6),
       (28, 10),
       (29, 2),
       (50, 3),
       (51, 1),
       (52, 2),
       (53, 5),
       (54, 9),
       (55, 4),
       (56, 13),
       (57, 6),
       (58, 10),
       (59, 2),
       (70, 3),
       (71, 1),
       (72, 2),
       (73, 5),
       (74, 9),
       (75, 4),
       (76, 13),
       (77, 6),
       (78, 10),
       (79, 2),
       (80, 3);       

##   Таблица roles

7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

create table roles (
id serial  primary key,
role_name int not null unique);

8. Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

9. Наполнить таблицу roles 20 строками:
role_name:
Junior Python developer
Middle Python developer
Senior Python developer
Junior Java developer
Middle Java developer
Senior Java developer
Junior JavaScript developer
Middle JavaScript developer
Senior JavaScript developer
Junior Manual QA engineer
Middle Manual QA engineer
Senior Manual QA engineer
Project Manager
Designer
HR
CEO
Sales manager
Junior Automation QA engineer
Middle Automation QA engineer
Senior Automation QA engineer

insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

##   Таблица roles_employee

10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key(employee_id)
references employees(id),
foreign key(role_id)
references roles(id));

11. Наполнить таблицу roles_employee 40 строками:

insert into  roles_employee (employee_id, role_id)
values (1, 1),
       (2, 2),
       (3, 5),
       (4, 9),
       (5, 4),
       (6, 13),
       (7, 6),
       (8, 10),
       (9, 2),
       (10, 3),
       (21, 7),
       (22, 2),
       (23, 5),
       (24, 9),
       (25, 4),
       (26, 13),
       (27, 8),
       (28, 10),
       (29, 20),
       (50, 3),
       (51, 1),
       (52, 11),
       (53, 5),
       (54, 9),
       (55, 12),
       (56, 14),
       (57, 6),
       (58, 10),
       (59, 2),
       (70, 3),
       (61, 15),
       (62, 17),
       (63, 5),
       (64, 16),
       (65, 20),
       (66, 13),
       (67, 6),
       (68, 10),
       (69, 18),
       (30, 19);   

