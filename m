Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3859143C7D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724671554; cv=none; b=MxXSa8VPGDB45mePuaHLzZq5wYMF9En5DR+xmbLjB7pCNQdjFt7EiIau1RHVkC1NlgALnJmKdK/YbWgG3SP2gSLL0uHpVPm0mgSW4xTAQ573h+tpTWx1XiaJ0JEN8ydI3bObOIhuzW3ZKxBHwgEPskvhz+ussLiGssg8LBhvTB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724671554; c=relaxed/simple;
	bh=fpcBXcr62VBKL7L/Xuxtmn/xf9oi/FZ6/lKAdPWp3dw=;
	h=To:Subject:From:Message-Id:Date; b=TdQMqSz6yA7LYgyecT95+wFcvxJz37b7PoyBVgGHFHTiAN3zWgm57k4KOyk6Tm3SnT33csUOtYe1Yl+5MsN05+V7j51iTaaLIZXCqOb6b2QDtAUYphKsq+2gqMTZQAVsHk+RzEdLriOuYflXSFEMMdw6x2xGbPrmC5llXeo8xGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvuz/C4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvuz/C4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D60C4FF15
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724671553;
	bh=fpcBXcr62VBKL7L/Xuxtmn/xf9oi/FZ6/lKAdPWp3dw=;
	h=To:Subject:From:Date:From;
	b=gvuz/C4kSvPbgi6g2G6JcyzV9eNa01muC6we+IERApPdi3IhH/Jxcm1sMk/r9uzx8
	 mFh+gzJjkY1cWMAexTOlJG6adD7CoRtEpfF7PKsFSv8t/bCquh5ELrWRVCqk9S8ud0
	 ntOYFvgGTOJnIYxbhP5UJdb8c/otTzSgNpzgackbajGKzIDBtM4UP/13VyRwf+5BMz
	 3ev7zkGxw4uUlbcGpruX+MursErO9n3vnDDi50lQsIab5wBD57Zs58u2Qs39jtNBFw
	 /oYS0XirlJD6DU9VyO35Rt2M0j3V6UsB4TbxIC1FNngp3sbgCo9tgOccdFxxY2L3F6
	 pwf219HX9+Z1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9368BC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467155359.24210.6298464936027991794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88a6813d6ef84d9b20d06a29b8c01c7fa8c7ccde28086e94a989fa34bc5384f
Date: Mon, 26 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724671553
