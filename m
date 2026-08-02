Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610E2318EDA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785698434; cv=none; b=V/mE1W6qPi2u/b8tTB4WYN0EzrPa/Q0p88FIbvh6Ms/VvOWQec08qjDNxAH+flXGZ5Ct9VGO7xmxwYTEtd8x83vyKa4AY+fbkOZmKPBttKnIeMcyKWn5EfrskMi3b8WnhMtMoZRUlS9nzt4F1Hm7BWCcirQQ2uvnBLNi2gM3xYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785698434; c=relaxed/simple;
	bh=JwSXn3FSSaos9H7YlTIsmMPv/CSptb52o9GkkItQz7I=;
	h=To:Subject:From:Message-Id:Date; b=dP9HZS4+3sE3AHSGv3ZIO6RWEJo9T6IqhkVMnMstUxCi/wJ1DFursJklW6A1xejcq515aSZllBezTUcLsaAXDH9pzasPvIGxlWg1QzfCRglNFK3ri038t1/9itPHJqCHjFtrtvLzyL2QumwD5gMp5bAEY7Ex50DKyyKW6Qk22cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJKfYM+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJKfYM+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10B2C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785698433;
	bh=JwSXn3FSSaos9H7YlTIsmMPv/CSptb52o9GkkItQz7I=;
	h=To:Subject:From:Date:From;
	b=gJKfYM+xxW1kSOZOGkly0yhtu3BlzC9wnzLFr8fXySTxbOQRkiMaZHdz7Wuyveol6
	 v4hL2jhU2KvHUvnVth1yv5XsUmTBlTNWcy4kwRRtVAT1rLB/Qs5myc3cXT/I0KRFIb
	 RzamhbjQJya8SRS8J0BctUpe0bWtDiEWZHsyYT0n0KcQKMC1DpdBUDPpnj0lmCnoh4
	 ZFxipWcGaH23KorpJXZwsppyOo8LPNN5JPD/PjHE1BFfuFDyqToIq/A9XH3CnmuGLn
	 D7IU3q/7LlL/X+I7f8/RVe1LwjLpZ+Qz3+t2mzIInwXUyssgD6qp9BgwZJH6LS5rp6
	 Tc5wZpK5kEWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC41EC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569843368.28006.16598442861138833397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db09ebc62087911de4775f3b3dd887b935fdc8dda2012071beecfad54e1c91f4
Date: Sun, 02 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785698433
