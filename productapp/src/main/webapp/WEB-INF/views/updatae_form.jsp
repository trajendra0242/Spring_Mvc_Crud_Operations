<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style>
    /* Apply styles to the form container */
    .container {
      padding-top: 50px; /* Adjust container padding as needed */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Box shadow for entire form */
      background-color: #f8f9fa; /* Background color for entire form */
      border-radius: 8px; /* Rounded corners for entire form */
    }
    
    /* Style form inputs and buttons */
    .form-group label {
      color: #007bff; /* Change label text color to blue */
    }
    
    /* Style input fields */
    .form-control {
      border: 1px solid #007bff; /* Add border to input fields */
      box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 2px 4px rgba(0, 0, 0, 0.1); /* Box shadow for input fields */
      color: #007bff; /* Text color for input fields */
    }
    
    /* Style the update button */
    .btn-warning {
      /* Customize update button styles as needed */
      background-color: #007bff; /* Blue color for update button */
      border-color: #007bff; /* Border color for update button */
    }

    .btn-warning:hover {
      background-color: #0056b3; /* Darker blue on hover for update button */
      border-color: #0056b3;
    }

    /* Style the back button */
    .btn-secondary {
      /* Customize back button styles as needed */
      background-color: #6c757d; /* Change button color */
      border-color: #6c757d; /* Change button border color */
    }

    .btn-secondary:hover {
      background-color: #5a6268; /* Darker color on hover for back button */
      border-color: #5a6268;
    }
  </style>
</head>
<body>

	<div class="container mt-4">
		<h2 class="mb-4">Change Product Details</h2>
		<form action="${pageContext.request.contextPath }/handle-product"
			method="post">
			<input type="hidden" value="${product.id }" name="id" />
			<div class="form-group">
				<label for="productName">Product Name</label> <input type="text"
					class="form-control" id="productName" name="name"
					placeholder="Enter product name" value="${product.name }">
			</div>
			<div class="form-group">
				<label for="productDescription">Product Description</label>
				<textarea class="form-control" id="productDescription"
					name="description" placeholder="Enter product description" rows="3">${product.description }</textarea>
			</div>
			<div class="form-group">
				<label for="productPrice">Product Price</label> <input type="number"
					class="form-control" id="productPrice" name="price"
					placeholder="Enter product price" value="${product.price }">
			</div>
			<button type="submit" class="btn btn-warning mr-2">Update</button>
			<a href="${pageContext.request.contextPath}/"
				class="btn btn-secondary">Back</a>
		</form>
	</div>
</body>
</html>