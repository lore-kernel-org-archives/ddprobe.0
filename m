Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E45134AB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745887194; cv=none; b=fqUgbec3UWCqEz/wNDF48PO+KZVLLO4zV27/P24YAGvi+Fw/VlJOtVBq7h3NK64dQkpqpwwUrzoN7ikvchjTpmTd9gM4GO5WmKoPrwAx/cF6tC1a/hlpz8N7WU/qD4zBWeU18q0yaMQJaCkHYT04hj8a1u95T1hL5dJuLx1HBes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745887194; c=relaxed/simple;
	bh=I6FEcfJ7f++8jQN8ii5mc3ay/hkfoqow65+Yqz6Rq9k=;
	h=To:Subject:From:Message-Id:Date; b=OUf52rV5hQwghRk/hKM9gt235F7DhmjgCM9jiM26airjO4FNZ2OckJHIRz++2KjhUCACTWK7Boj/DzrAgYgx8Y0D1W9u1B6APouKoO/axy9A9DhM0gcU+8a6XUmtyeG+Y9lqptGMZOPLpJHdU8PNVFxHVh8irMs8vKrYruuhkO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRV3GG2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRV3GG2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745887193;
	bh=I6FEcfJ7f++8jQN8ii5mc3ay/hkfoqow65+Yqz6Rq9k=;
	h=To:Subject:From:Date:From;
	b=CRV3GG2ItXufd6zJMC1foASyuS7Y74P1vhWkTel0nMp/vWtXab8CygUcIj0DxlnDG
	 fVG6Yscw+8rjCFHIMbEOmZeh6FcRfdXOKAGvce0FmjLoV7ds1+5q4QdKQ5M+pVyapd
	 LJ/ZRr/wXTAWLMiIKz0yV26qUXRW9Kd0uy+oHqwpbGaqn+xAG/If3C37XBXW6/v88z
	 s0YNjeYgJcW+J7WJ+chNVWBxYwtssbj2dal0ifxjp5rKm0TOka4NhDdmnitWugfDdf
	 /9GsYdM7gTVLGCzMf1oiCmRn3RuC6c7+hBtOPar+JDrASx9oGi5o6i0TEuswPC40yz
	 beS7ROmFfbPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DAC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588719357.27505.3042025746151116406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995c9c4d53121d8b6eedf0bc229dc491fd14fff47883508a64deb3d2e1f402b6
Date: Tue, 29 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745887193
