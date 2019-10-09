<!DOCTYPE html>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="title"%>
<%--외부에서 문자열을 받을 수 있다--%>
<%@attribute name="head_area" fragment="true"%>
<%--외부에서 HTML 요소를 받을 수 있다--%>
<%@attribute name="body_area" fragment="true"%>

<html>
	<head>
		<meta contentType="text/html">
		<meta charset="UTF-8">
	  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		 <title>이한주</title>
		
		 <!-- Bootstrap core CSS -->
		 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		 <!--- Handmade StyleSheet-->
		 <link href="public/css/style.css" rel="stylesheet">
		 <!-- Custom styles for this template -->
		 <link href="public/css/shop-homepage.css" rel="stylesheet">
		 <title>${title}</title>
		 <%--EL 표현식을 사용하여 외부에서 전달된 문자열을 사용한다--%>
		 <jsp:invoke fragment="head_area" />
		 <%--invoke 사용하여 외부에서 전달된 HTML요소를 사용한다--%>
	</head>
	
	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		    <div class="container">
		      <a class="navbar-brand" href="#"><h3>You alone live</h3> </a>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class="collapse navbar-collapse" id="navbarResponsive">
		        <ul class="navbar-nav ml-auto">
		          <li class="nav-item active">
		            <a class="nav-link" href="index.html">Home
		              <span class="sr-only">(current)</span>
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="login.html" target="_blank">Login</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">My Page</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="Free Board.html">Free Board</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">Q & A</a>
		          </li>
		        </ul>
		      </div>
		    </div>
		</nav>
		
		<jsp:invoke fragment="body_area" />
		
		
		<footer class="py-5 bg-dark">
		    <div class="container">
		      <p class="m-0 text-center text-white">Copyright &copy; You alone live 2019</p>
		    </div>
  		</footer>
		
		
		<!-- Bootstrap core JavaScript -->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</body>
</html>
