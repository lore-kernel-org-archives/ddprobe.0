Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7A21D63E4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785898234; cv=none; b=Svgbh81vMqB9FTJdtTSr6PCkIUMtYcjfdhseNZxpPR6a7XRqPX1Nu5vXuDynyTjM4t9GdyImhypOYwJN4E0LehYQ4pSMTz0Rb6pdjutPTp0/CQy7YgVrCjXJKUt2PSzfVm+rBpYNclIU+HbT3Soew8u4YDQ68NeTE5UIg/anjxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785898234; c=relaxed/simple;
	bh=JbT3dLVDZbNG88ecdbr0rVn/VFUTC7fAYU4aC5hRwWE=;
	h=To:Subject:From:Message-Id:Date; b=TlO4ZWdd3NMQGF00Ue6wcTvB/7yNAXuxwgofGWzApofEIDM8dTgKINrCv9zUm9TG7if5UiaogJUIqqSyIkBdHNoY3D7Y5fHOLIeQ9Yo4u4o1Kn1S+k4BnCTNCi7+TsCp5WHcz5dLCULhHVxYlNDrL2ZjGQHBevWNMD1edgVRCiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPQgv0rH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPQgv0rH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A2AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785898233;
	bh=JbT3dLVDZbNG88ecdbr0rVn/VFUTC7fAYU4aC5hRwWE=;
	h=To:Subject:From:Date:From;
	b=FPQgv0rHJYdq/TiAmwQ8zGxw5rg5+PLtjwlwbBl8NIbl6OIVcm6AgzgcT/C4y/5cP
	 DMZxdQe7zhzju7s0VfDPrgEiD9Hc4a5vCc2XOILniFXhHn8b+vGSzVPbfKsGU1W8P1
	 skIEFm229e/7ma8nYk6s4ydOyMQwvARx9dhv2jmBLHh0+fWcSaqoW6sqqFyKjmS0wI
	 ooLSrFnN+sH2KHGE0fKK+ikYRSdr1yP1R3gsnTkrSoIL8lWmmp0TV4HxbyPidlRykT
	 OR2waEtpQQTHsTk40KLEmUDXKCM/HKLGtmjYNYzgdykZ2Qnvl+Qe5xr+bnxA5flHN6
	 Opp24mAF48dAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB49C2A09B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589823368.18838.16961589350180479113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e25a3fdbc871572409baa5006d4360203c69492c077b156009860144378a27
Date: Wed, 05 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785898233
