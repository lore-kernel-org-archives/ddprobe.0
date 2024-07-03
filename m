Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA3E136E2A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720002923; cv=none; b=Vv/LXvgvUg86+b3+gb3ILeZUwcB4YyCQU8HA4swnP0SYihZfi77QJ8k+ZsSZUDg6BazNJpxSNPdXlMTKPdIEvwlT2DLDO4XI47nNnO9iNR8iZjsUGOrq0K+PH3y7KgmchQwz1j29VQQrpIB+2RvqciXvowrQHDnhA4zm9VfD2MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720002923; c=relaxed/simple;
	bh=Kl37yNJU1/Ts0bXsKRtTP0lSRaU5HJovP74N5Huu1bk=;
	h=To:Subject:From:Message-Id:Date; b=pkEDNDOj7M/aVPHvFm3S1UthBGmLRFSyXeWwE3l0Gyd9YzWGaX9so6pB90QsFz2EmXz1LqSBvUZEWL1fO9w8yMdOk/zmyVHEHGrvlIU6nq/TiXDZTNBI/Xnwz8S03Ismhm9Fv+FXdskYKYN74xoQUd5VmFS7OVhjT6ljWmmnnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW93pBil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW93pBil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD41BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720002922;
	bh=Kl37yNJU1/Ts0bXsKRtTP0lSRaU5HJovP74N5Huu1bk=;
	h=To:Subject:From:Date:From;
	b=DW93pBilOF4ROlAKwtLOC1vnChbSz68HVZ4hS87anmatD4aL324HWh38M5C/H8B+B
	 E48aMfjPilVFj+zDcsq8OyXcmdiWZ295wbpvv8e3689z0qEhGlUZsvJyHbZJOFmKMt
	 TUZO5fpv8H9i7uNN4XufHwL853O50cy+hRd94+Q9QBAqQfhQOwaYCvqkKSsgxtviR/
	 tmwSlUXj1Zzx8aXpeHUD+mu15ASqhcdzk0B9rcWvB2Ch/o7+bmbg6y3xuW2AGb+SiN
	 w/rCAlJsWT2VSPRKsmdWTXCOH6y8F5G+jne7PRGwQ9yCKIqz8M9fdLVoR2hXMlj/MS
	 nN4w8jWsH2RqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E9C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000292280.22932.6021631291674973675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc1c37e294372a9746fc5313136db1ee35ee50c05a152cef2c6eee2d1dedb89
Date: Wed, 03 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720002922
