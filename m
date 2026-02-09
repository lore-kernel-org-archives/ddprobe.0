Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C2238C23
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618234; cv=none; b=KIt+Vb5lzSX6dw9pDu3uRJ5Hl8kT87PVVWlhnY/tF71ubG5SVTqs53Fhl2iV+iuwazNLDuHNEAbBtUswYlt1omCjvoFlgqpEDpmflHFYaXDS/+p6IF+Z9oQyPx0cvBhq+P/U0f+MYkINfHtFLiZCdajsSiXR/8XTexooVpeh78g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618234; c=relaxed/simple;
	bh=kjRKO40ij30v6Isg24fF/8/v8sEaApJBHN+gGoyorl0=;
	h=To:Subject:From:Message-Id:Date; b=oLKiCooByJjmAp+aPzQ9zrsCO7U19O38kK6kimeAlmP26+fJ/MpUdIpibGKlB9OyRDxYjlJcqi6I5TiP3dpalPkf3xiyhum/7Xv6YpVQiaKSylqjabeXKp72vVO7iTfi8Pdir3+kQ5UtE0zmDeoT/fxOxPP/4VH5/0imqQHOn2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLc/Tns6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLc/Tns6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF1FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770618233;
	bh=kjRKO40ij30v6Isg24fF/8/v8sEaApJBHN+gGoyorl0=;
	h=To:Subject:From:Date:From;
	b=XLc/Tns6sMwg0xWvcdITaj1mR/VI0HKChof8jHTKztBumsCjfLIULqm2U40MZrd6B
	 DUfdK+luBcmU52y+W4tT2+QdrjrXEtOEz0Wxcq6kK6IE3Jiv/btywVRav2WJXCj7HO
	 Py0DRPdf+h2akIOog8r4Qhfr1OB+HhihZekjMBVpY9vAI5N7lLjsh9WOld32OpdkUa
	 uZm18OzxWJ10TiMHG/1C/vHO5tuoNPR1dYYucoh+4rCo0z7NcT9ufRHGQeySmpHWR2
	 jmV79b+ljiwkB0RMhh0Z4A6NGYyLSTYLj/8e49PvkoxMchtSOD8Gt9uurKYUmnacro
	 IRyjMtTd5AS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99807EF070F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061823361.27087.5857870348633207963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065aa86e78fcffe23e4caac441f4db8085d15295b8eaadd5b06e3d9b3e3b421e
Date: Mon, 09 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770618233
