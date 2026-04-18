Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3F61C84BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776538654; cv=none; b=C1JSxBLq8H/gXm+iKPkOeW6em9mWwbuXuIf1CARm2okVhRco60fF8loGEHhf4FVMWw0NlTcsp4ySLfh7DPozXKqlZ2hdu8oe0teVRa+kc9oLxep6CvIGkcsJ3t7GCLP/Of0LwAL9g2UDdKpLkhkfey8FUvrJFUT8qdsn73UJPm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776538654; c=relaxed/simple;
	bh=sJS4g8YRckeXPKl1QteWCmf2vQrZcny9U8DCcljqcxA=;
	h=To:Subject:From:Message-Id:Date; b=pE+d0AVkM6zpFdEqsOas1nkZ8jRjw1cd7eq4jZQpW8HuaBYmBxcK2QLdVqIMpWjfiV1WuRrkeJ9zrEshchN1GZO1ml+9O5kABVTq14RnZU7cS88n+mlJZgwkyvL807onuTHbhHSB5PbH9mt06Vxc86P0RStlcdpIKiEY3VSwEoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CREHNznp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CREHNznp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE12DC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776538653;
	bh=sJS4g8YRckeXPKl1QteWCmf2vQrZcny9U8DCcljqcxA=;
	h=To:Subject:From:Date:From;
	b=CREHNznpaD4gslyf9Jl5hI9b8zgVJGHa9TNQ0UlD7Wq31taO4HJeNU+dP7KJFjm70
	 j8OsdLVjpn/5jlHNgruK50UmM33cXscu1SJUbUeoSZtov2KJ+prmtxGRkPYkAlLi7I
	 /R8Qk9OnMRFxI9WLTQ7KgLc+2/bpYltzQXW4gK1sVkmNypl8376e7DDUAqD0NdM+Jv
	 0DZdr0RfnbiFG+RxHW7AtGQ6Gk4aVAzcZ7tFpXsLCV6vhLJDtYX0LKiON/y1qZnntq
	 xBHZh2HpqiohBwiKPSvsE/hZs5uWyfHfcMD7pRVgaI8ZWZRjt5D3scQA+dmBIfEN16
	 E10ZIUh3AnHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB68F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653865368.16836.5526866974697855688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730553b4b17b007a6c1493725dfb49f39e4b0c12af66b75b2f4f56f46d2186b9
Date: Sat, 18 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776538653
