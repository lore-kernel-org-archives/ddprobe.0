Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067D1F4168
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748251794; cv=none; b=evEBji5UXiDzVwqeffAV0PUW38IGuwgfYQoVcjggT2qFsy3kE44qjlXqmCuhspdRUoTrvsMhx8McFXCDNDvLlU3QT3Aqbk6Xc4ZiEyxEXzxTM+xXh2dz5OR9wgh6+XLvhOk5qFjtU5hj91aQqP1RRhr6h6oad+MzMoJvh9n8szc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748251794; c=relaxed/simple;
	bh=7qEb8He6xuMpe9w0uzYn/2c8iJjthHW8894UNOfeNLg=;
	h=To:Subject:From:Message-Id:Date; b=MkKFLGf8ODYbK/D8+s1Y2IYoVaJTtXbidYUsh4aJkMHMPqGLvJEiguBnyqESWYB2QaR8aQtMOGF52hzbl9UKovvJ74iTC5x5uqrVhU4Jo1ykC5mypJ+LAX3dgy6gbrh+qj/TtpFwAokXu3A88Ga13xoUL6jDATQ9/5OnQ//isBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCrqYpWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCrqYpWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3021C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748251793;
	bh=7qEb8He6xuMpe9w0uzYn/2c8iJjthHW8894UNOfeNLg=;
	h=To:Subject:From:Date:From;
	b=NCrqYpWR5GkHwp2iY760dvSCLZmnhxexVUyhkyKNkMEhU09uUYQovPdpcfE/jRxjd
	 K0KToAUl19SQJn5jjG+fO4Sjnyn5rQhqzP744ss6JBcbz3/JiTuczfNG4pUr0Gk0es
	 CVg9jgzHFofUXORKl9L2pLG6apQISpDK1eRWMwnaFGBG1GWzBrFLRlIszxyoqPFrd3
	 WCuuT4FFz3ZE0VKVRn7eILiDhNm0ByuLIlZ1osADhg8gRcWZvZes9samGhSD529l83
	 5CqlNtgmdsGbkLR7XqaOAfn1y/REoZiJUA2WT3TB5Bk53GbJiGfmAs4o/mSZzYW3lZ
	 6v/qEvtIGNfZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA0C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825179357.3358.8295075361259845120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dc9b6e50157d70884f04ab9a9e9111c04789cc0949c672ee7d35718d02cbb3
Date: Mon, 26 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748251793
