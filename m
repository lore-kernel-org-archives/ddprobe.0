Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6173539FD0
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719779663; cv=none; b=tg2XJM6Obi5K2Xq/KR8xkPCTc5GIBpMeUpkI5m/mur15cxLH8ar8aD5mCH/20sx2jdwpPh2e7OzioVVYAdsJquxvJ/oRCFQWdJ74MDpTuMiP2ZO4idAO4ym+lszaNQvmlBODjV58WouA3tSJ1LswuGRqa+Z1h8gae6TgZ/lCdYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719779663; c=relaxed/simple;
	bh=cXX86Y9PQDC5vCVHdIHmSekE+kUzaIogTssceiogk6Q=;
	h=To:Subject:From:Message-Id:Date; b=X2aeAvKY3q4yl1Rj1xjEJZMpnvG8CKX6AdaWkgXu2aW1GqXddRicT+eQfbWr6VTCNcDaAhFoxDtp7Q5qF5uZDaNLFXzrPHPecIPUM56Sv1bhdDcOVGAT6RNXDn5zuydrcK7uhiblxa23oxWQew98bvqjmLQgQo++KXhSk9BxKPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPHAO5n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPHAO5n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E39C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719779662;
	bh=cXX86Y9PQDC5vCVHdIHmSekE+kUzaIogTssceiogk6Q=;
	h=To:Subject:From:Date:From;
	b=sPHAO5n8XTrKpDIAXzMqDaaUWmbQffRcR9R4V4kY9NvugbtCjqXULyPWm8ZXVv9hb
	 a401LHyr3hH5A2DgiTEUuJD+jSaZzwMv0Jx9WatTWNXtEBPdZXdCwiwDRWwm0bryRS
	 LUdVEwKHLInfPSlIAI4cThswS/sO1z/DPHKpwxWCyuhwccdxWr6xiTFopEwx5Ol1/G
	 KIyNr1WoipwR1nOACQgms+26W+IlMnmN8Alf9fsbzSMa0w6WSDE+wZ4GmpZAD5rRRi
	 nPhZO6u9rRc3BjDnr2Og0DfwwQyo7F/jn2YRhaan3FxC+Gj2kSEuS62B0BFVKgXqsc
	 TzAQsWMrScCfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B7FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977966275.14526.13355929861193476747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520ee1aad1f65c4f928b28d88293fec34662da14af2d5c3b703a8bae6f0bfd75
Date: Sun, 30 Jun 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719779662
