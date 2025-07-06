Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248BF15D1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751818194; cv=none; b=Dn/kD/yX2mipjkeUU4PgkOYNABMLSL8sFOeT1zNxzgI2xV7dSnqVjv44nGzAzUHd25FmB29igygMpBkam5vVLfg+I7U8t3rcqDMoM10XAxSGLb0tdobuW2U55UWB331I+/oHEIYhYP1pHK5dpVt+whZaGEfbXthSQQ4Y9+4MBH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751818194; c=relaxed/simple;
	bh=RwK45p3pf9LRAh+kKABqBfTwCn6QCiSMNv5qYC9Xrs4=;
	h=To:Subject:From:Message-Id:Date; b=dECnZMTLpt828+/7cZNNCKPa5OwjGRSmj3cydI6aST3xc0DDgOODnNI7WXGLBqlXGNZSvS5H3Tdg8stvR8xVANi/DO5N09FW3irrtkFW9ik/5VVa4nHiPBIOEArHhSyLumKAen6AipeCSy5+GYyd06TfTuDtoAekGBvU0496Wt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx9fZhr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx9fZhr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0854C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751818193;
	bh=RwK45p3pf9LRAh+kKABqBfTwCn6QCiSMNv5qYC9Xrs4=;
	h=To:Subject:From:Date:From;
	b=mx9fZhr+Bt7pkSEjLaz94pMaARhC1Ga/DHd28kSaonj9Q4Dqs4wVcmcikF1vOSBAL
	 VTEntVd19iM3R8bFmbL+hCX2rNmt46eAA/rTo/X8nnN0gAb2v5oE6wC6JpBQ829uRM
	 0yZ02A98f3iDJzo0xpf4599I25P1ZUGZLXfvr8+QZ/U1Uyh8/RGJJjpFga6qMvJXLE
	 0xkV490mgh+qaFpgpG3nlsgkJFOrIReJRe9cyCcq0OE4xdegItbdaiX6Lc53Y/gZcv
	 w2BzvEqktjS8N0PU7dVpDtBF8OAtNsI9hTrQiJY4LQ6jlaoRJp8a5JOPdHGnefwHyk
	 nlbQDFEd+zVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136DC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181819357.30232.6953298018150091132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc65636b1fc28b2df1c921292a03cdd4b20ac4b89b4e1f0a634d842663cd466f
Date: Sun, 06 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751818193
