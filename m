Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC7F31B830
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777666654; cv=none; b=cD4eAO9wewlNN+QNcQ4XPlqaaExjhShgAhTYlrDd99zyoIl7/8EdbMohjGUUBF05wxkfalRMKu26hbyY7yRsmaSe0FdiU0e25LNvZ8s3ph0ZuHvy8PsNiyyNo1QlpkQpTM8X0lHmifbEovCP3Q/4Apa9rJBdXPD/O0zo7CVz6S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777666654; c=relaxed/simple;
	bh=jISepRvm9MvLjQqCdeL1LhvBeiB6sD8AfQeMOi+Ec94=;
	h=To:Subject:From:Message-Id:Date; b=IwCpBgdErhkKuJ9nFmkt+pJ38IcCSFs6GpV9nwqxuYAl6ZvkbykXYQkZkJk6IIVxkAwzlD0eSBYdNy3E7T2pGNz3e3lnVAgICHBWUCy+5bF0dv7AuhIhpGNeLlhdPNTKfS8e7mIX/jEj5wSTbCAStbei42c7AFwY4sHz3G5xNVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY/9WkC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY/9WkC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEFBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777666653;
	bh=jISepRvm9MvLjQqCdeL1LhvBeiB6sD8AfQeMOi+Ec94=;
	h=To:Subject:From:Date:From;
	b=KY/9WkC7TeIGF3AvDJIEdjVg8h1j78trzsKh91cvEsMNqKB6M2QRWcLaumRatJFPy
	 271tokXOTVxU/DD3Vyt1tmBxDknNqOJn7Gov35Uyqxj5aJz371Gc1qbYGSnVXH4nIx
	 8WyZ9KtDZ2cT8arPKPDuh0BGoEAI+miQIsLEZ8rw0nFc+UQnGQMXu4Jw1vQq8/+tFO
	 BRQZDtqvc2EZEVsnHE9A2P8gpYIcU68EIrrqHBJC/eWonAZswVZqHicOsISQYVmqic
	 R5/UrlvTCFzYZ9410OT10l0igzpQ4H6RJDEcvrV4/6MVFBGK38PQM5XRahgZxm36YF
	 GOxuX1VUzVw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB04CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766665369.29810.1266142551254507405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad794d62b8e524324dc1661a1c63ceebd59d259928c592432e06c2941ca23cdb
Date: Fri, 01 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777666653
