/*List the following details of each employee: 
employee number, last name, first name, sex, and salary.*/
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary 
from employees as e
left join salaries as s
on e.emp_no=s.emp_no;



/*List first name, last name, and hire date for employees who were hired in 1986.*/
select first_name,last_name,hire_date
from employees
where Right(hire_date, 4)='1986';



/*List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name.*/
select d.dept_no,dept.dept_name,d.emp_no,e.last_name,e.first_name
from dept_manager as d
left join departments as dept
on d.dept_no=dept.dept_no
left join employees as e
on d.emp_no=e.emp_no



/*List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/
select d.emp_no,e.last_name,e.first_name,dept.dept_name
from dept_emp as d
left join employees as e
on d.emp_no=e.emp_no
left join departments as dept
on d.dept_no=dept.dept_no;



/*List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/
select first_name,last_name,sex
from employees
where first_name='Hercules' and last_name like 'B%';



/*List all employees in the Sales department, including their 
employee number, last name, first name, and department name.*/
select e.emp_no,e.last_name,e.first_name,dept.dept_name
from employees as e
left join dept_emp as d
on d.emp_no=e.emp_no
left join departments as dept
on d.dept_no=dept.dept_no
where dept_name ='Sales';



/*List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name.*/
select e.emp_no,e.last_name,e.first_name,dept.dept_name
from employees as e
left join dept_emp as d
on d.emp_no=e.emp_no
left join departments as dept
on d.dept_no=dept.dept_no
where dept_name in('Sales' ,'Development');



/*In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
select last_name,count(last_name)
from employees
group by last_name
order by count(last_name) desc;