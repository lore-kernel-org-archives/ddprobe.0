Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCB0279335
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753198794; cv=none; b=Kmr4W4xFd3pOjGO2XLWbag8YV4K4743VGmFuJm7G951KayrctVFqZLFaNFNgbR1me8uVoBREzdV6izY7ipfxPX3b4y0xTXejqHijUe5IW1bs+1taGxFKSS1t9yXMiXCgpbMPh/KR38qHox7lb9x6HY9EEyOY0+OrFFcKUW7LRCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753198794; c=relaxed/simple;
	bh=npSYrlJQniCJeJBXrgjEP9wL0tC0AKeJwbiW6f9HvKE=;
	h=To:Subject:From:Message-Id:Date; b=nqOoRwpcYaAqDQtpnr25ZBWYf2PPrPy4fORvLo/J/GrlwSLgZHz5bjQbtcVOgojxkqWiHVCjLS6EEbh/0iRhfJH38UtxtpU3bdI8/ni/5cM2jg722EI/gqpeVJ6Ta8yf/T5ogEGjASLQpVZ/jmb0y5zhCcjtRV4rT44/7DB7+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvnEp2aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvnEp2aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F30C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753198793;
	bh=npSYrlJQniCJeJBXrgjEP9wL0tC0AKeJwbiW6f9HvKE=;
	h=To:Subject:From:Date:From;
	b=dvnEp2aNnAeYxIrzf/9dA2OOkb48penriuOsIBnaW4MwO/2p+bEGmgeD5cYLekZ1x
	 Cq5Tg6ObMqquTXGzUU1rxHRfGlwl71t8WdQLcNgJRJHwQWOpn+TE21zDU5ZcPjpzGy
	 F1NleFDWLmVkkFXZ2vkzbfx9mQ04DdSxRq9K8yQ9i078eUVI1/k8scuC0/UPIrElBn
	 9vauCCNA0SWYLV2EySGGmd4mLwhCii/oQMfNSE3ViY3tqODpTMKzD3YO4k7RGmT0FL
	 5ABLjF0iKM4uDPHoQo/B3/gX8yqw3AVwTsPFQIL3iUZM+2v+6HP0dRg/YWoctQwq6a
	 KLRCu0J9wu6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90703C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319879358.30805.7370424517757675942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9f6568d1f2a6fb025d5cee81443af4abb00866ef79feedf8e2edb062686770
Date: Tue, 22 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753198793
