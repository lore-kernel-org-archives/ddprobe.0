Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD6026B76D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752603594; cv=none; b=PznBYO/b0VZJvy8Wt3DXIsOZGBb232vE9a4zYXJFn8WgrpLnvGYufZm2R94jbH4fDooWi6wvbfLUAmX54zxnPqLODtL7KB/3P/NBm01aSoMeD0eoMAezzWkyIYlyyP3zwo0qOAIx8a2oDU6P1X+JKT5WODp4DWilCpHhmvedFOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752603594; c=relaxed/simple;
	bh=X704zm2+4muOxXCZ6SJvCkmhbEuTy4zgpMud3j093Ng=;
	h=To:Subject:From:Message-Id:Date; b=K0lyzTrLqfoWTJLkt/l8D3BA7oHQYNWULOawHrNu9hGCK2g3Jxd9UeuB1qznMZUh0LidKutXcKfMpfCZhL6/Yi4P6upR5RcYeTfaGjjXCzkctqxSa2cxiy4qv2MTyH4NbQW9S+hCmzCbyv4L1aC/8vsLRh+JhrBdADMMBcPL5lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n69BVP7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n69BVP7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752603593;
	bh=X704zm2+4muOxXCZ6SJvCkmhbEuTy4zgpMud3j093Ng=;
	h=To:Subject:From:Date:From;
	b=n69BVP7m+Mu1tJywktwXwV3HjnwqxZsaOJuhK9KazTHMrhjnKlapD4nMOGXWzPvm0
	 ALCqd+eYQiMyBT0XW3iEnBnk90WOA1Ol3izabzgBb9Frm5E/dlOWcZzgfKCay34qZa
	 8FGmP4IELZ0l8Y2xfADj44dmKr04BdYEb0LVuwpBQnRhze2podxuxT47kF9a1Q4+Y1
	 CVXmX/uy4Z5+JuTi9uX+kow6MKVpKqRUccG7LizAnymMORw73g7bl3h/KETkig6mSb
	 jVyB1MJNtWs6+ayTNN7W2dQ1EPC289Hr+rRFG0lirGd2QG76k3orHl32J3gxjcMO5d
	 Pp/GV6y+DO5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94759C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260359357.15277.16652623344443180034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20e3b7c6b6709ae54c63a37a6602796d963eb7c06298f32088297578fb9a2c4
Date: Tue, 15 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752603593
