Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780D547D926
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792392634; cv=none; b=DxUp7MVgwc0ZBtDz5d7U0QhusVppVPjJ7DoOGZG2QKgWlNF+dl7VJ9tXkqsDPPy2whYW6vstDLyFIVhsLKLuYPTgiyPEOojTcvVG62qtf/2jEJ8MIXTy89pslk/49FKmWLC/7j7zzB7RstPfNxnsoG/Hn+oS8jNL4/x/NyPwspc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792392634; c=relaxed/simple;
	bh=AXJuGfsQ6Atwh494JlFkWeEyuEnd70wdfuW5QQKpCJo=;
	h=To:Subject:From:Message-Id:Date; b=LHzH4mErsB7nFMbdbrhmu/zT/NQGqWMF+txP9JKUKSowkTaJ5AvKvEeijjimMXtD0RcxVW0WVcJ40J5w/uGr+qqVFHAdxjM5d6dZh40y80QWXTVFpPLVWNFXlxE2r0Mh5eUvkg23Lx+8zrsSNGVUwxr6OLsLxY2rQ0J4vMFUM3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPcyk4ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPcyk4ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0138AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792392634;
	bh=AXJuGfsQ6Atwh494JlFkWeEyuEnd70wdfuW5QQKpCJo=;
	h=To:Subject:From:Date:From;
	b=tPcyk4ugpEO8D/X8JdSDwrlwIA7NPosBEypRJuobCu3SJVSTuh95i27gCqVirzqRl
	 4LY2/zLBck9ulamMiEeXyAHDNPmXAfvffoZDHNtZ3mG5xIgvrVfBMhoCCmwukuria2
	 lotIC3ly/7pBV3Iwgj0ObB5Ykv9fvg6Ck5qt2w8YAYLkPqjWGFL2RVV5XRM7bVpxHa
	 7Fa4Gj0NWjHa5qYfj0bYDp03q7IcpyWb1lP3tb+05nk0Hxg7+E17bjU8VP9RUcAfrn
	 NIIP4ufmIwjA65JYTlbBcpuBCpAmQh946aglo2byTgcU71xwk4jPKkp6Z1WBRIN8lx
	 oGhjK62uHp02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC806CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239263382.30298.11391397514236111952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1535b895d560a9440455202e1e81ad73e479bb9fd1fc468365d7b042b26042
Date: Mon, 19 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792392633
