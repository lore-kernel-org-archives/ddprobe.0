Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEFA289831
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749211794; cv=none; b=LSXjH6R/EfBuYYAT6j9nmeS7Gfm/2DQzZCO1JNPOYhYjluEgXmHS/EEkcTqZMhAvQGMeD2pzp5PQ+nduWls+p1gv+v2Ho8btCoah3NlLysF7UQqsN/SKCLGfOTREOXanxUwJNQQl9Qb2ZD0/EFfGSHu3FXa99iVLsw9J7lLLxWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749211794; c=relaxed/simple;
	bh=r1pG9EY2YByU2l/e39M/ky0j4k0gjV2onX1k2JMXl+0=;
	h=To:Subject:From:Message-Id:Date; b=iy7sTsfJsTEUsgoc/rW15gI05QuHyJBIULPJRXrjJvZnBFQwIIb3XDT20kW2ZhGGIBGOOSz4OT/Ycc0rrkpaaoSh86FvGrA07WJprg7k4hoY14B5OZM7fck/oT7JijanhZDvMWKVyWK7giVUIQPjW+yATI5waWsUIuJRqkR7r5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkQLBGox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkQLBGox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749211793;
	bh=r1pG9EY2YByU2l/e39M/ky0j4k0gjV2onX1k2JMXl+0=;
	h=To:Subject:From:Date:From;
	b=bkQLBGoxQUecbesoZHcy4lNQR3ar+EzohGCLdmCz5hyJH/U1Rb5ISZjCsuosoMWWE
	 zQo03bD3vpuf0z6uwwH2dsm6EB5lJg8Qe1w0va7ysm78fbBzXFUegxJr7BFYustaXK
	 mGECbagjdQs7IgkriqVdImR7eDlkZz9R3fpU6RQK6Tc1tje7tgM6TAU3yr5rDEDwix
	 oMw09VKsWshPKxbq7kAxdNsBh+iTLFTpBn31Fo53MDj1CNyP2OBe+ooh4MDZWhtaIW
	 StigRvMA0z3Xnm9MrH2Zmx7Ewgg802VOM2Kgq8O9hvgYAWhgVhnygauiQN3/0t6BbP
	 IhXVVN8gJZTtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B6C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921179357.7664.10132089128198580183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e5e78274444f862dea3ff27ace9e6ecf0aa1575bd3d2bfafd1231fcc63889b
Date: Fri, 06 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749211793
