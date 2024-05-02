Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A398171082
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714672943; cv=none; b=bq9+CPahfFVzMZBatwKQnbhSHXM2LDbwavPc+Y0p3vkwXruI07c5Gt4osA839EZsmJoiD4+iQGtKewbdcYcjYs23V80ypTsx9HoHI2ZAdx98pAmnRjvRUvp75cYRqyGhy6xQme9lAp0Y484b1BlHctfjchoeOHNy0Lg1bYsbVNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714672943; c=relaxed/simple;
	bh=BVBpxk19VeqH9AgwRtndpz0n7DjjFTtYD0xG7AN6bv4=;
	h=To:Subject:From:Message-Id:Date; b=oSVs4PJEJ/2JGaM8XdqY3EVaPITl+Z5dNDsjeN+hkV2iEq5hQxd/r+OvEWGgpDfBPFpFHkXfzuMcgTvdEeXsbrtsbI5uV3ppyeI2yusBjIYJhFxboeTysCESo+GIt/2trsYYu3hbrdO4JwGJcPLBFPKgDwflSAPABlxVg2oC3I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnMZmnOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnMZmnOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0344C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714672942;
	bh=BVBpxk19VeqH9AgwRtndpz0n7DjjFTtYD0xG7AN6bv4=;
	h=To:Subject:From:Date:From;
	b=BnMZmnOZEbtGufTB7hca+RLTP9oiXi/SX3ghLogw3Z8hK/Gln/ejr7XDGvbYTgsVU
	 kXO1triPjxx3iwIETPo1JovQZmpvJvyB9axGLAVd1FYEbkSmdnDEZk7QOB2CdYQasy
	 r0vo2JEVQhBhR2yken3iUI/9xKFieHJRA0Xtxfv4z4NeBb7VfnhRbQ09PRUsTasJlq
	 PtFp5XhwQnlAt6iXLUcrVpWK9UWkogq3SST0/NTS2psg5SQUlYLoThjFgf8HeYVOBG
	 /HqlHTWsdldmeg7724Rb+KSpfhZj22vfXfD6thUFFMxu3lNIWtWHw61wMTvf4yrdYC
	 BsbgL32k/oG9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D57C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467294281.31097.4946619532842477145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b40d004072c076e02bc9362264b19f5a49e3e945d6c2ef4a71a7f0511fd338
Date: Thu, 02 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714672942
