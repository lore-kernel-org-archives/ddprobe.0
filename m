Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4093176FD
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755430794; cv=none; b=VRvjfPKunuRuaGPnAMcSkv7pC1FqAA1oDndgv5wFrJzUb+ZaJtWMKUqnPfZ0DTvVk/iR0ik0AsXsl2fnC1CoNKcwG6Hm8xnYnZZ7pIG0PQt54h6oarFe53oPzOrNQ2IlHNJhL0o+KsnNC1j0wMBp5YzHOfRaorwbMgNp7pV8dT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755430794; c=relaxed/simple;
	bh=Yaf7ToAqKt1P4PaDXCnbk1h8R8scsPVNwp6R/SiPPoE=;
	h=To:Subject:From:Message-Id:Date; b=MnPBrpeWjjx710G5fqEHnpq8XnYwCJdtYgKn8rwmht+VupyXDvVcIT1Bros/ZHusVVbHWogv7zvRpnAWcxods23oynbqf3war8e6jAUMfLXngk75mH1/ApyiO6GHDZ2Qy8uhGQSFtIA6CvVJew9papZDLkP50ZR8ol/LjqyPwS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFLZuSzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFLZuSzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C52C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755430793;
	bh=Yaf7ToAqKt1P4PaDXCnbk1h8R8scsPVNwp6R/SiPPoE=;
	h=To:Subject:From:Date:From;
	b=ZFLZuSzy60jYBgJN/lIi8j3dGUd7Oe9zYvCJigOQqPFcopTrkByyhzC+TuDjX3pqg
	 8VzRt+ezP+vmef2S/nDkK2LEsL0pMWDenPQxAzIoWe4NZOGhn46qAh3wyGfhEdGTG4
	 TXJ9VQTtNGcl99d+H6VR5Isqa65XavKQgZ0SAUOP629dWNrYZSKidZS3FU4LQHA2am
	 AqkEwh9UUFFBNg5EtsgESRLRn8gyy3FTXsLd3ELBK9hoFboyF7j2AQZSTHIrHmUV3h
	 PNP3/+8oNhuZfN6cVvO9yjck2Df3qK+BGYgam3gBBg8NOnP4TcKxtayk5h7tElgKd1
	 L0doNlodic29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233DCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543079359.13142.9180274036236757577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a84dadaded80ba24c5b8403a5e12d1cb920f29333e44153ab6cafb107ea0261
Date: Sun, 17 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755430793
