Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA15A373BE4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773930293; cv=none; b=tRSdARY/MQehDMdgw0m/AV+08qr30pBwgQYWwI9w2P3vO4WAJGaXDSWeYU06DC2CJx4toxAGkRxNrNO6PxMNVleCjS0s2chs/GRq3BcEftq4FnIfpSCWlmuzyOgyKp9WZv8rn+iBYQEcUgF3RnmGewPZspslqkkBX0EJPm+DM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773930293; c=relaxed/simple;
	bh=JVVEUhRvpBMtyyl5jR0Edpml5HO4PwOokwZJkqyff0k=;
	h=To:Subject:From:Message-Id:Date; b=gGkDTq3kLWRB5tz6Q3itow5qOlG7ylsYfyJYmuSPAwl5CZLDuUqSGO+PWotSjjZMnGFKuzx3jMdCDHorDwsepr2dKvLYok/ViKWsyqY5iSgMUb8TTEXl2uMVma46Yri9P8DbLFIBMFstiZlBaRt+qLfTyEVOsH0YzmpDly1FsR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZwezMf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZwezMf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBF4C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773930293;
	bh=JVVEUhRvpBMtyyl5jR0Edpml5HO4PwOokwZJkqyff0k=;
	h=To:Subject:From:Date:From;
	b=EZwezMf8bWKpQ6Sc0NCIsRVC4MtJ0uG6r6EEDusJRDt4Ms++AYDY31hKl5sIGcDZI
	 ztA3iPbtdMt8kNLV+q3DNE/T6KoK1au5EXwUbBsBb7Ln9iRHCZAo70x+r6iIUeAVG0
	 5Dp6MN6AuiEBnFqvoRHLid8grFhSrfYlEsjVL204Mxixrk4H3b1ou1dh1s+vY52tt+
	 pstYlqtwbIy6Fr7nE7g1Kv1y6i64m9+nt3GsuyHiwgNBYEmZ77cdryj/Fc9RUkcTKW
	 Ya1i2HAsIpGNinW+QcLiaU6/D26EvDDcxEh83PEX1VFvlgJ626AC9FobmQo60PXXIl
	 1Ou2nAKkMZwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCF81090234
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393029362.32249.10703078748456420414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f7139c418aca438a5c5927d6a24c3a43394a1c1e1fe92c41a814d140a4c06e
Date: Thu, 19 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773930293
