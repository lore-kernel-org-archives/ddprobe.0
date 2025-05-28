Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202D42857E4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748436594; cv=none; b=AQeV/ZyNci3dNYLB3zdlqY7qdwwQzKzpLZXjcd9NgUnIt4pdsGBkszo2NBm88hS9maEIMDw+7JSFFTk3p3mxOzZTAUqD96msEO2ngj6kf4Ts8W6tQeJb13R6M5VT8s7zj/hY8o/WepqXzQ8d+RDPrCqHx4maYcaSwI8W/yLhbxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748436594; c=relaxed/simple;
	bh=IdgtJCG4VvJfWETngp9jfkd3kEVk4VNClt/u66hjdx4=;
	h=To:Subject:From:Message-Id:Date; b=uWSLiUqs+cKHxZRUq5v7vOQWzZGAnChLjTjfSTyyzXpJCPb4AHTR0lKQnRgl9G9YNJEoNAKpiEXD05D5GuRR5HJDKRA95xLwGIMPvtJeLcXikJYAX6turGhCs26U803VuNvoTMDcoVJ1x1J3PQI5cONp0+FHWxwyQecHFvCvsP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=go+/D7jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="go+/D7jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3FFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748436593;
	bh=IdgtJCG4VvJfWETngp9jfkd3kEVk4VNClt/u66hjdx4=;
	h=To:Subject:From:Date:From;
	b=go+/D7jf1uRr/2CNJsVqyfQqeqi/+JwwmpBk2RaaRknJiSV8Ia+4wuBsJQjJbWzmd
	 YUvBsmz3zhSbbeXPf7dD3rFF1snDThgP/kl3D3s++97SbnqnbD13RSmN027Onv0pPa
	 QEvZU/8z2bVJM1EpnKwm7zVvz/DJuqHAnpnFv1qe68ewiDS6+HALHzc0enXlRh0Ab9
	 CNGWQhhur3tYsyOQiqBd3fppUPQfXjTfW2sXa9jghL6TuOJWqKJQktantfMKHM9YbB
	 tSjZ0ZJH+Q03a+ayCUVWcWhoU9oacXBrnrFwqLEJrKkb8knAEH76PbS60ZL+NNqIm2
	 uzUA5ZKzopvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6DC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843659357.18649.15227625630025851373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578e276f2bb424d3e1639d92479f844c1d37e2abd0119b9f229e444400a122a1
Date: Wed, 28 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748436593
