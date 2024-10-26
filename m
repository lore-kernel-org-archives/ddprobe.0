Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2392D70839
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729916754; cv=none; b=ShWvOVt6nMmVlTcIc2SaNlQetJykb8hmgYstdevFWvlfTMemme+Lyn4du1ARRgq9FYTDPZvRAAZKhJpR4+0m8Xo04ZbLQeKoNDyCY1/7yKz3B3ih/Z9LUZbDFC25m3gHABVVcIqHu0esgpGsSoZf05fiBOVggLqCf88cP9y/WQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729916754; c=relaxed/simple;
	bh=CLgduWyDozkHSEkGiuSqkIsounU0C9mBelpGunZtkdk=;
	h=To:Subject:From:Message-Id:Date; b=Naox5D6tqbBPwJ/W7q26Hd7lG5XiM/76k4GfqEXOZJst8lvxUOKpjZ4jf3a5ttF3szxdWihxA7tyexFE8aY/xtjaphQMdhTgS231K0OPsDTOWCyWP0g3Wpw6sTYDipEusJwW3rzHtJgd+0yuXvv1rCL3E86mlk9111IyEn7mauY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjHVPFmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjHVPFmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729916753;
	bh=CLgduWyDozkHSEkGiuSqkIsounU0C9mBelpGunZtkdk=;
	h=To:Subject:From:Date:From;
	b=mjHVPFmEETKUJmeVx9crZj1hH2y3ErTnrr7uRfagW0Hv31hidgGIJjPJMa91rkniq
	 oJZDt5iPu1/a2EJu2H+8HdX7gez1V6yvBc+5HfLAQgtPs039idhbr5ve4USlhdwy1+
	 in0X/5myOPEXksm/PS4gzIIy3Bwkt9JlWZTqBUFTfJnuTRnnw/XWVVAQ1CeN+O118x
	 ydJB2h12OWBE+O7hvDJJK3RT6jtFPyPMrEStZeKSPQ0svStsWmyErz6Scm59iF6E1B
	 mQ+x+Hlgjt10fWa4V4hPtFayOeB1tT9uu7ThEKASxn6Un9/zVS4f2sO3rGKIKgN02I
	 29ZfxTeOkQT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875ED10BEA
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991675361.5841.15293518185392385608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80960c94a07d627b01dcb89254aeeaf083d953fe702bf358f8cbad97e2aaec94
Date: Sat, 26 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729916753
