SELECT * FROM student_management.students;
insert into students (`Name`,`Address`,`Age`,`Email`,`Phone`) 
values ('Huy','Thai Binh','20','huy@gmail.com','0987654323');
insert into students (`Name`,`Address`,`Age`,`Email`,`Phone`) 
values ('Trung','Nam Dinh','24','trung@gmail.com','0987654324');
insert into students (`Name`,`Address`,`Age`,`Email`,`Phone`) 
values ('Hieu','Ha Noi','20','hieu@gmail.com','0987654325');
insert into students (`Name`,`Address`,`Age`,`Email`,`Phone`) 
values ('Kien','Thanh Hoa','19','kien@gmail.com','0987654326');

-- Xem thông tin của Student có id = 4
select * from student_management.students where ID = 4;

select * from student_management.students;

select * from student_management.students where Age >=20 and Age <= 22;

select * from student_management.students where Address = 'Ha Noi';
select * from student_management.students where Address like 'Ha Noi';

select * from student_management.students;

create table student_management.classes(
`ID` int not null primary key,
`Name` varchar(50) not null unique);

alter table students
add column class_id int;

alter table students
add constraint class_id_fk foreign key (class_id) references classes(ID);
