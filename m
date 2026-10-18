Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6505948CD50
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792324834; cv=none; b=HlMEkZthSBNs7EPCl4xCEvpWu83pXpmmuRmbN4g6M7/sm6pGBUKcjvRl9o3+6wduz52y1MExKjltv+cLcRHGLXlMnMxcxEvGbAUPlIKm8szGUSHtNDdgL7vpl0bgR4CfMUDbui21WgoolbnERuGYa58mNSplr1vCPt8oKnIop3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792324834; c=relaxed/simple;
	bh=6rZVxnwU3G3AjnIsMgvQKTo6ZsQK3U3+Vswh1ENtiWQ=;
	h=To:Subject:From:Message-Id:Date; b=nwpzZ12+duLfx1+SHnReIc37C/pMr+bIc+7HSYXAO0CEjsW6ajdGxJdnhnWWYc9YHkjXUSCzGFee9yeNIUr12nIBFSCOYRTBpEH0EPNrSYNvSvXBx9hei1yYphLu8aVfNm2pLbmPP3tCe9tA03qRoacZdoJ+dI0HSdlKTySwyeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLpQa5/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLpQa5/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3110C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792324833;
	bh=6rZVxnwU3G3AjnIsMgvQKTo6ZsQK3U3+Vswh1ENtiWQ=;
	h=To:Subject:From:Date:From;
	b=QLpQa5/YzmzEZ59ZAEHcbrvksEd3IRHWJW0F+Frzs8TBJ+e6Pu72d0Hsys62W6Pz4
	 lt/MBctLfw0MFR8bin4bwORd8lN9Wb2NmN9ZecprMu3xL7WG6kKnMtvrjlwc2Alg2h
	 fIAqwfhHqJC8dJbDXdexZQJe2By3y94bcrHBX8O/Uk+qtJgR65jIQBMGV9myvp/0qi
	 DDYTGAVZzcyCBQZp/ZchzON7h/YH2UAPneoZUlKxhHRFm30o1LSSKlHtNLAJTl7x+z
	 4EDhjVLP2J1dSp1CaPiLMJuLavSWVFCswYaFkrO4YsndmLiEgLTq2hT/yZX6UO8eq4
	 J37yNS5pp/D6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05A9CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232483368.9841.5565723164136619540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727f6cc9f6d6019e7a6e6f530daa51144ee5c5114694fdf815df061ec79e83c1
Date: Sun, 18 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792324833
