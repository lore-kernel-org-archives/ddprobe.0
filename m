Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6092D6E66
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788080434; cv=none; b=ZtifOymZFF8BzaIAJsim6eDHfrXanyef3UKYncX1nNoE/CSb3MGO0IkqfqgH8eR58k2bofrO5d9g/275xGG9VKT4OPAbGzNAHPw7nf+KTuFHoW+OBxYpObl1vlD/wFx9PBR+KtNzMeWRm9i2+60mxcKlyzDwvywoeYooX5gfWQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788080434; c=relaxed/simple;
	bh=kEn7T/sbax4yS8ru8MkzOhJ3RwQp86rew6wKsbuoSL4=;
	h=To:Subject:From:Message-Id:Date; b=RupihQIJqBVKJg5HD8pK+FvXcTKsCocSTCagpJPyQukiHjlXwcOH3Z608l/1zEhjEQ1Bt+q4EnI+o4MXK+e//ydI6BLfxr641VHsafBxlGtdm8oIVGh3EjA450EXFFZrJtDTNSSOB96GwapjJlypU6Q2kkIxvaZ4BDY28lcQr30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKxQdfqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKxQdfqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F7C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788080433;
	bh=kEn7T/sbax4yS8ru8MkzOhJ3RwQp86rew6wKsbuoSL4=;
	h=To:Subject:From:Date:From;
	b=hKxQdfqkLCqKjRKmxOLWBviJwppyli0k6hlMfRVO5Gn27LMfhTGISGweV1DOxIT0u
	 DtvSEaFmGfhMC1sVCgN4sAzk3W24a8B3XGgqJ2RRSh9zcymj4Qzq+rpJUOeMgPPL6t
	 dynQrg3G7MSjawCBLMWx+YSRfd100uT45nQCzCKms6LaQhI8POW0BlRCQoP5mp2A5Q
	 OrM2lOKyaqZ/3OwP6OSoELOfMBC30pFjpidoEFfUdqMHDGd+d+W0I6JNG10lWl7BtT
	 yyP7VujZ4KfF3oqqWmBBryCgzvWBKMzMpCdMDSweGBD1h+D+vY9LysZm1D19SB++9g
	 h4w5XBJpQuR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB30BC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808043369.17545.1209063875943621651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3284476994c407fcd2e26b58a1540be88c06f011940b35029993ae08331db857
Date: Sun, 30 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788080433
