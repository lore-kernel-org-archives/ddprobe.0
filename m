Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAD9223DC9
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771688693; cv=none; b=liNX61dlNc3sH1pp3oqYL/ThFlB9p1/aI9hTNrKylbyv3t+D5b+xF/tsjbME7MwsYqnPl5aKk/tL2yzy7roeBm/1I8dIy9qsusFkR8WdRfrkrYyr5oejMRXCH71x5k99kyLQcy5FMAnQKiNOe1eihJqmUnSS9TJur582gxLjGGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771688693; c=relaxed/simple;
	bh=NmGBIvvBcotkqQhaPb2rtXv7kdPLFYSv9sydsEhEdcw=;
	h=To:Subject:From:Message-Id:Date; b=HIdIdxdf9X5s4hB1BpSf3L1MrNb0vXn2SyEJGfw0GyNEnAxJXfwAG0Sd4Mnc5HDNk+PyFaSO7/3wut4fkwCGKycOg88ADcXp51cQ5vziPLMnMtxX4wWMHVFwmIUb+HhX74fpVDMI4TF3z6Z4mRfTNatxQBouWxD/yzQZfPPElOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df5rvOAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df5rvOAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2355C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771688693;
	bh=NmGBIvvBcotkqQhaPb2rtXv7kdPLFYSv9sydsEhEdcw=;
	h=To:Subject:From:Date:From;
	b=Df5rvOAdJIAtFINRfadsKu5TGN9Qr3pczGGYcXUNc4FHdu3CUAUsDEXAprRTZld3t
	 dtDEWy4+y0xhP7jIt2PwrwmcuPS1fxhK7M9RV/291ZfVZmLJfbGhumwjoWyIUPMf5Z
	 9p7eK2yRnJ20LDo+ozkZY61z3jgSJylv+ezYuSg94Ytf7XAXE5Cr1rB3pzykscqTb8
	 dZJoAZv7wnxTGnndrMfR5WwKeN1GeAF/PVrEJ/kt4M5w1wIJ1piQ+TAKz+Jnzg2Tz0
	 UKJXu9ovTQKvCYLh5wjFmOrxDISLN+gbVvtuxciJgy6gPSU13SkAlKrfIBQxf0dU1S
	 lXFl3iR28vMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0DCC5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168869359.9181.2562869730079605242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ab45a1eeba03ab3f8bdde224a762b4ba3ce5f333c273b2dc8fcacf4174861b
Date: Sat, 21 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771688693
