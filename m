Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475B52620CA
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746827394; cv=none; b=vD+YmMkpls1PzkpOjnnikvIKPYttQhnp/IoIndzUnygsCq28p0hM4q1PTzyPJa2EeQ9lc41JCEVL7WTLFNWx3GGz5BXum+Wzfe0LULthD5uKLp2KRRJz3tRHCNd3humC+iwWEX4RdYbCUWp6vTtUOCP52CQulZyVPWqff7Wp6UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746827394; c=relaxed/simple;
	bh=/24KMs4KxQkii5lqQfNj5SyUmbd93wUtW/dgJMs52Yo=;
	h=To:Subject:From:Message-Id:Date; b=iPEvPkJtrHdp1LfHBaC+9ngQJh34Kx9lrL5jblCSV4hidyoWGBBvGW/4wE4iTHF9yZ9B4YQOrt5Lg65XsBlRn9O1M2TYkRSmjq9EZegM4ovrHGsn5AoNSh8gbICO/RIxqwsnQGpBRTeqOdM8HY58Lg4CQs4BWa5++XseRQeGyEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh7C6YWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh7C6YWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746827393;
	bh=/24KMs4KxQkii5lqQfNj5SyUmbd93wUtW/dgJMs52Yo=;
	h=To:Subject:From:Date:From;
	b=kh7C6YWD0DTLwKgjHOz2XY1D2VxIZ6KPffMGzLM42cKEykeJenXJpLokTPgsmt05/
	 xHeYpdK8cDbbIEuCzVe3lHnEtXWV+dIa6ceODjlai05xq/0RQ8HMgD9/8rAHQaLNTh
	 v4uCKrp2WHjb6kuKWUz1d3GT0TaaUvbfCTRWErjE2PGHqw/5Fvb112cKexlwIPmpDp
	 OpGWbRUIK/vCwX4XqfYItfPkDsJLikQctaY4685D344bWGVQ/5SV+71YYaOXza8u6N
	 FrYNQSuBwzd6q+lk2DjVcAjegDWGtKCwRK22lDFMCUAcjyMA26cRbfOsEf33MCLH+Y
	 k7ffwmZtMPYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E9C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682739358.25801.13224038197900560003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0912169cd4702158c3b5f57b9eda290a145526b4b5bc3fee008232cca3be66
Date: Fri, 09 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746827393
