Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BDA22FDE6
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779724954; cv=none; b=ByRrhiPddVyyazMlE0AtpvLSZQgKfEKGrNh8VIVaa6knE9fALsNySzno2Jx18FGOzU8n1dARNgrj3n6KqYtK7QOhyyOt61gp1mowfSMRTrW8KxVBwXSkwq1bW9j6+dsz019Ryi3TCma1OpyfXbO7nTfKTVPLJd/4N3v0KBT3dSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779724954; c=relaxed/simple;
	bh=ZMacCo4LFV7ZT8rNFOsCUbEjeRELhdLDUpY1VL9+ggQ=;
	h=To:Subject:From:Message-Id:Date; b=YgbN4kOGKSTmRw27EHcL0bEdCS2hHIUbHr2g/Ial5g4yjhEMxtA7nuT2BLALRQaDq26NRzadYm8SpJ+yz92s013J/ID0dP2IYc1KNmFq7b24c+6kGSxyiFaCiO1sRfXvE3VNBR38QyJgUy9VlgC8TBQ9DgAhzUoll6C7icif8XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfb5+pbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfb5+pbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C824FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779724953;
	bh=ZMacCo4LFV7ZT8rNFOsCUbEjeRELhdLDUpY1VL9+ggQ=;
	h=To:Subject:From:Date:From;
	b=mfb5+pbPlL4D2AJLKaol0mHswk4L8ss09dbhp1aiqGGlRs945KOWGllMspxCDIPgL
	 lSIC/Mb+UHBA4yRxn1Npwxx53XyLuNCIqJ5x1Xut0l841JnqIBZLsxVEABpxYx+CN/
	 si5Z9vNEgQnFfMfxYQJw8zUP3krmddYf3CVIB8wtZ61aczuYORoERZGqcb0IEnBSdw
	 DYedy/4O0TWDkstDOPCXDKFrfDXZpwPbtpUMeoAIiUzyBj/hTK2IOpjrlRdpMjHhj2
	 uV9/bYmfHqTWeVXJh2ETFQV3zE3JNI2Jzb8NOLXySy3hUrJ7i4+UZRHbkMwfIdmF8U
	 LuOFvaHpEgW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA26CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972495369.9307.1689809109303694839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f47e850758b3a4c4f8c2312294c1a289657de914d5285885969c3ed65a2952
Date: Mon, 25 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779724953
