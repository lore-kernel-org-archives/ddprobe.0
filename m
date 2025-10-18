Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2037D12CDA5
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760804994; cv=none; b=SHNeUjn4rYI8RvVZwdCPqncSrbC8/qWdLz8EoaIFdcrjGp/McQcs6EmjZhXzyY4cLMLGFYV5+7gCd97MaJQpMKIXmz8bjPhWMUF5kLk3n+oI9hoRjkaCMnP+wefyTyLaEoms+f/YcGwRdUjViF6Ffuab+yfWhk+N2zRl53IDvvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760804994; c=relaxed/simple;
	bh=ddbPk6odIK7tZlbbrvY/CUheIWgdqH0K5eQS49x42tI=;
	h=To:Subject:From:Message-Id:Date; b=LKkzg7//S3i26yArmX8X4FWg96mTq9aR50rlg/fJzgGwanqG2l6gMGwkLie2qXWEgqgD/FCQh1Gbdn3Giym4nOgFDL7sSK/CJvMkFc1KkdDW5QJnunITM+0sQOArJMG2GBVC2a0K7U9cAZMG/HQ8YFAGP5qx7+a/SvvSq+mrcX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNF1Z9Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNF1Z9Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F358C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760804993;
	bh=ddbPk6odIK7tZlbbrvY/CUheIWgdqH0K5eQS49x42tI=;
	h=To:Subject:From:Date:From;
	b=kNF1Z9EeVdVgVSfpTBMkWlORMDGyrzI8vSaqE8o5xDQvE61VQQRlGZBdS/bIOGPMC
	 SvrSHCbjXoGMnhk1uH368w/rzI3VrcnV91YHopNU/o3bes5jLUW2FNzCEbKsYL+Wj8
	 ZWOSOllIWdj9JWd008F5mURetsdKAliVC3HSdQicg4Jz1OYCJjI8SYh6lxSzJCWS7+
	 PSVd5Pj7YirwgoG9Tu1RQUAYC5WVmOTKeXTcbEdmrixVPlqYpE/LVlUTJwbhj0sAco
	 UAircInmDp04c8ta9SLSuiZTvRhjxHveSSNs4g3C3ar2SIpW18kYXz9b/yc84L+WDw
	 0zo4B+P2ZVaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1BCCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080499358.1447.16801115227646558392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d8e9249b3b854c7a832e30e63a88c275c81ca2df476e127834ce0c3dcc4a2f
Date: Sat, 18 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760804993
