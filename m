Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D84C52D2C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791984634; cv=none; b=CKfnBNaBRnQP8K+zXwjb1eqOjnLF4mRH4ilRTGKm25X6lAoxcKxRsXpq05ljwnneGMPRgvtKGHL5SkVhzf+Nwx43Y4oUm2DEt7k1+KgwERpug0sirXCR/adbomEEdu9ByRQ3y7XcgbC2M054nVWAnfCbaLj9qlfM7n1zpuNee+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791984634; c=relaxed/simple;
	bh=1XkursJZWsWAPpUATislPIyduti5o7ztlaBmw25r3zg=;
	h=To:Subject:From:Message-Id:Date; b=m9pJBa7H2nEamno2SI6mVWzHCF8qOmg0KW+7jxtm775qpEfIsnDISpVvq7U4URzUFzSvoZ42GhnBJiISniQniM6vBcR4hkfKqi6VzxArfcoM87t3N6AfzZ1Qq6LbXQ0cyo53UbxmsCFQscwa6+gRHF18HL3y8f5EH0ZSYHWi5mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn9l/y6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn9l/y6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00CEC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791984633;
	bh=1XkursJZWsWAPpUATislPIyduti5o7ztlaBmw25r3zg=;
	h=To:Subject:From:Date:From;
	b=Zn9l/y6sviyCaWHpF/ELEAiOLsFX6zPpb35vPAmiynU3nN68m+UMmHYP6YIePTEWJ
	 40ck4UyboMT/Fca0Ap/MjczqyIr2H1nGf1tNLncG/LMhCyoloaG4pIiILcyauuHXCY
	 AdqAXjFHSvWVgMe1U658LC6xLO4uoRhC4odZNWdaHQSHF9eHAoovlyiPdnITf3fPY2
	 pr7gSPiVlRZ3EH/o9FIlpcimBwhxxSPOWBNBEEkwkzbc4rK7dSNsIye2a/wbRtlRTE
	 FyEwjJI/4EknPQe6+f876aAx4d+y2knP+5pGylSiiycabnWN7VgigD0066Cr60Ld69
	 xCYyPyf8BtoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC127CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198463369.28510.6199331244925213325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f9b998ba42027de80c058f6a5d747f5b0f949b3ca7a88fb8721551174b792d
Date: Wed, 14 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791984633
