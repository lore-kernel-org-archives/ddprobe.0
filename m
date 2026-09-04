Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E13D34A2
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788493834; cv=none; b=Lgxz8tYqJoJBpx2k1YFem3MIF7Jq2kN9Is6oDMD8806taPMZYeHdGWoRYJ3gbc2PoR/esdJWCKj1pNiKKOXgBe2Sg0u71FNuSNrw70G8y0z8awSzIYVbn9jTIoX3fu5Seep0/Os0XMJm25NkyOYGW1gTMG+kNSV0A2k7j4JkUjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788493834; c=relaxed/simple;
	bh=mdRQdvzZSj5J/JGkPvyeCPaGKHRFWlVoxshatFxzcTA=;
	h=To:Subject:From:Message-Id:Date; b=MR7LXTkhR9QG+cuKcoos8NQe2OARrYUrrzHX6zS8WKDiJR/adq0dcmgH0Jf8XWHIbqGumKqyDyd+Oo340h7m1URTjqx0q4fvf/CZUpVGJ8ehw/FIW7mb/LKgTVV3TQ+2M1H/NmdRBvGs6/LiSEq30iM/sKTntILzH+tYvqL9aIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHr2araw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHr2araw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD508C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788493833;
	bh=mdRQdvzZSj5J/JGkPvyeCPaGKHRFWlVoxshatFxzcTA=;
	h=To:Subject:From:Date:From;
	b=rHr2arawFvr1ftCPhfUGhTGuL+p4gY/VJik8FmeztdY/layOp+AzING9WvE6GHbdD
	 ra4GNBdk2ElmnhqPfvIHOftA6gKuBeI6IvVBuNj0BOiqthp2SY2dHEbmgat0ttvlPz
	 2SQkwoWyPekA1roq4MTdKZWsdDCkwUMTCI7yKeqTwkkyvpImHjdlHsUmUSd80sC4GS
	 BAkLKCCqa7BAxgwwAL03Mywi1GNgQVVlzqbo927LaNE5slaKWbL8S2Up+m+lyELdYQ
	 k3Ucma/Q4YbUh9qGjnfMYKFjRjs3MtGNJqTrrBqv9r1nJvCylHxEnpGG0cxSQ6aZa5
	 SAfafe8x4VfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB373C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849383369.8205.9053712181128470419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb2d2f30317c2683b48534c61cc2219fae489b2d78261a67eadfc5b3fe10986
Date: Fri, 04 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788493833
