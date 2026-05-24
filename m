Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4CF2E413
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779584554; cv=none; b=r33MVzOtc7eTwcEJZA2YZppDGQy5nE95BOxxrvo9RJbeDMgQi+/8wZCwqyXkQOUYMdyk+PIoXikrEmhO/rT2yVMPLUi2leVjCY+B/ObDhV/e7DsPnk6GG/4XIM8ebZa3vj0Qm8LXmKrGLojPYU30zgirnaD4cl278R3ASaaRPFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779584554; c=relaxed/simple;
	bh=RF7kvh2ZF8ckdpPw+uVn2pAL1/KSyGNj1coEdDU7KWI=;
	h=To:Subject:From:Message-Id:Date; b=iobu94z1iHVkoChb7GrZrbAIqd05pusPr4lOadkxLu5IdjHZ21NH+AeISos0PIY3b98zwQ4xIdMUrC6NswZtHuIq/oOSA3bH4ry7hwMaBrauzrNIajeDAoEEdmZibP+cw+F6bsI7seS9TjBmWOHVv5IX1UQumXZO+vThpiQQ9+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swlVmDvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swlVmDvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16CEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779584553;
	bh=RF7kvh2ZF8ckdpPw+uVn2pAL1/KSyGNj1coEdDU7KWI=;
	h=To:Subject:From:Date:From;
	b=swlVmDvMmyqGi9FV2/zFp2oDunB/l6/b8qASoGlgLoNYzckdjG7PVHz91wE+fgKmT
	 T43+b7jlZCs0fPNgeQv0bbO8qWdxYfaHqN4LACF4Y2EKF8CzvDAQwn2zK1g/bAwTh3
	 bsGOMiUbajXCWJkpTixCh1WX5GJ3pLp8Sb+zAUrgzeu2md+Hf9Q7/nMtINPVDEVoXe
	 P8xEOYG/ziDrRbtaA59+xvFRv/CTzfrkAWLcl8JJAJpLdRRQNsNpd9/ZAd7DLGIqEq
	 MOHN/A7uzS25getXbIezWByZ7WygyLE5N3arNE1w5okXI23eoJq58kRcCLmI2UuYaU
	 vZ7GyNjr9YOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B4CD5BB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958455368.9219.11013697828583261066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b574d2a6b43c6f1242b76ac31e89ff06ebc82e910eadbdba6c31d258fd9fb4
Date: Sun, 24 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779584553
