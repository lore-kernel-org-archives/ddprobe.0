Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEAB83A14
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737983754; cv=none; b=fk4BflBcCx5cdqbQL4OCro7fu2KHuHbJCqCeklE8TzcfVWcOdOX+iFt5ntCz/xhQMFj+BEB0ICV9T95+VQ1hxZeEOIJj5n2Sa3ehio9AM+OKKoNAGlQRfQXZrhPcDp9pZKWC1CLdqjDIBoC4vKmogXYELvCoYjn6hbkQL+42sBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737983754; c=relaxed/simple;
	bh=VI/aWpLkGf//NCbQ/XyhtNKLlwQcmnWZURzP9dNs8f4=;
	h=To:Subject:From:Message-Id:Date; b=lXX9Mi5tN/zMBfsWLA9rxS4NzyJuSqGDI6SNTOSr1fVsqWnUpqE3VcT+IDON1n5prIRyoz9/PSzlzuOX/Io2bXstPTbj1r+qruKCESGG7BeNBzUM50TsKjA1s/tgf5RG0y+Mp+MwwO+gX3GfRFOO3ai6CeI36sbQLGtjbLL8L5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcSRRpbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcSRRpbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E1FC4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737983753;
	bh=VI/aWpLkGf//NCbQ/XyhtNKLlwQcmnWZURzP9dNs8f4=;
	h=To:Subject:From:Date:From;
	b=bcSRRpbcoaMAZH2WNgWyMCwxwiSuTaWL25RcYD7YAmhBd2ZMMkX+IBYe4g7Ppu0sL
	 GgHyDAb0AtCsSn1rGrVtkxx90SAFaCeIPEIQ2qY+kb70DoK9k+rZXJk2Jwgw2EMVE9
	 fBGcQNq+nM6ebZZpk+w+djFBtWP/Bd5IOdpre5Zg9G7hRiObGkcprmyRCRrG1Jvn3b
	 uf4OPpypEVLhwpRKMLnFw+xOdpGyAr4L1V7RQoznxJuZsfZtdAQXlkhQ4VRMwE90LO
	 V0U0vn7kPlTi00hnMNDWsVlEX8PJ89/4cFy7+4EGTJU+75H4i8IlWSgr5vNzavaYQG
	 EVHhe+NxwPzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96754C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798375360.13359.16429371348021065083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789083eb1a9524b169374d410248e44e3fb0f3bd0161d7559d43fba0e4265ec2
Date: Mon, 27 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737983753
