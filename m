Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675DD13F442
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717539383; cv=none; b=MZcViE5hZNY+tRhya6bEYuS8+dKBMBw1BXnuIuBjdUBPRYTCPUhYBuMkFBTX7DjzAZfiX1utYhxsyAN1Kx5EFRAcZ8Q2hsouaGf1fDJbPCqHbSeBcYL2ciHAbCAcior1ljh2fC+ZBEdlEvniaEvIIL2E43LtLkM1TpCmg4JMjnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717539383; c=relaxed/simple;
	bh=F6pi3o6b5Y8lLU3pGqAPsZ4s9uQCXVD0SM3IW3FAJr4=;
	h=To:Subject:From:Message-Id:Date; b=nrMpFH1THFZAQ1PhZIhRQ0MwhWOKzLOEKRyD9ysR5Ytl2Bqe6eXygabLBD9j5azC1ecLAdvBRhRTK7C1tu3NbVZpyB9OOWsiuU33lw1oF2s85PH5SeueqTGamBGlA7BjhFLL+K7UykdkgXeniTg3evcaAkIfuavvaPmrDcGYv6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak137IVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak137IVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E7FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717539382;
	bh=F6pi3o6b5Y8lLU3pGqAPsZ4s9uQCXVD0SM3IW3FAJr4=;
	h=To:Subject:From:Date:From;
	b=Ak137IVmJVrhj5D7XICYxHU2HIlUPiBNQhUo0KDH7msr1aBA86CqaBDAQCyuUIG2J
	 Y9DokcbMXL7w7iSMdjwTXuPxO69OjgLSwh/GwTdU52XXoTmLswz9N5Xq+SF7HvCEAO
	 i9Dbr9s9ALMjlyF+EB9zYlDMPk+MQjatUDdu5hQWmh4Yd3eOOekPv4UMU1DsJhST3O
	 yiO24rRoVVpowrct3fxj6kdp73z16bZAXzZw7xjNyeRMsJUkPD6jxXrBShP10obmQg
	 GUwzkRh355weqj0VCRUfOR2WhLubK6dbMKLNNVX7dKILYyz3ycRaVhYz0x44wbIZun
	 LAeOkZVeKaV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A89C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753938285.5220.11401148902764319776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef03ca9d203da29debe1dde39d1f6c44a983ec57662ec13b77b97598fe12058
Date: Tue, 04 Jun 2024 22:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717539382
