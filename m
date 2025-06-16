Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352252045AD
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750108194; cv=none; b=FBCsnAJCz+Pg7RVj1Bcn2IVtUmWh1hMp3hBrniU4WF1ojTkJ0VdDXeT5M0WJBb0Wg5C4LxxjRe1ScWBXuKeCOMtflQ8NLfPrr2A+OhY7ckmmvzOrdobK6pBa+vkP0Vo9rJFT/87DWhcIrlBI+VQ7EpaVcvx66UvM7nFRTAVTpEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750108194; c=relaxed/simple;
	bh=WVHUMaHXvCwop1cQi375tPPcds0SvE/1HXIWHjS35M0=;
	h=To:Subject:From:Message-Id:Date; b=P0UlBxDzflaIupVn38c+dE2IWVB3OBeY0/lAGJe6XSlgY2K7wqLRTavYAdpqVTvYEhZ/kryc6HvhNfcCpdX+Qf6Zj/SIesRHYBdZLEIH+rGnVAwnyJSnhPu1ql6P4enU2farkByTTVYkbFWSMLu9fAUwb8t3rh5v9lfnjk2wA9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmkHy4k8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmkHy4k8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7159C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750108193;
	bh=WVHUMaHXvCwop1cQi375tPPcds0SvE/1HXIWHjS35M0=;
	h=To:Subject:From:Date:From;
	b=ZmkHy4k8wzo21F9oFUKPO9kRl2trTUOwzOBMaMCzMgUwfMcnmp89kNiNtELiND3nb
	 0kT2GisE9v0l9juVRrcXF+WYxTnQQQGY7xui0PKbfXHBJCqKbFa6/hSbEmw1ltduk3
	 e7LmH6mxWhFLi+JseJTCCHN10KrbV4Nc9s73xZ6EX3Etd+7wISb0VgV13I/EDt5Srh
	 WMWVSVyFsLP1o57jVdBmtsoN3MoyS5MxnfwIJJ4tFWCdPbiyuoZZl8J2FMdegMmj36
	 yBKRsIK0drVUy4t3aaKxk9AShJxWv40SVReT3I5vF41Jkn11SmxJP0SwYOw0Kp1pWW
	 T3nfz55BvasPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B82C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010819358.8318.14172769189463009617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece0eaa553fea1471d2820fe67b1a4b351f5ce0a05e1d584ab6d96ba267ec013
Date: Mon, 16 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750108193
