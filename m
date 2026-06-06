Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AA34071ED
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780728274; cv=none; b=HDzcr+/DH4CrOxglP848UY02/xms14OpS6j72jGfPz7ixTjkRoOYt8+ckDUjcHX9uMY6x+hWPDkYUiI+HDUZiOvWGRP/MKUIkxL14p0pk38zl5E/QY5cl2Y3fKtFqrjqkBMmSyJheKXpZn13H/BXnxehl3bHqH55tKJGHzGOhrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780728274; c=relaxed/simple;
	bh=NPmXgjDtDCvc5kMx0WiX9oBaWr1TcCt+XR5gOkq02eo=;
	h=To:Subject:From:Message-Id:Date; b=oXAKCfAEsXdqd7LpKe/mxjKnf+lgq1svR9VM2kDVXyhDzItqU6U5uJbNCc4WOqdoWnqIoY3RprlGHianT5894ONM+Me/P5o0MqYeAvkFKP4zsMONS5hdkGHaUGzjpxAOreESlOiAZx0LW7aKxEFtYDSu6+2tT3az8fs2iy1WvIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK7NRBSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK7NRBSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04B4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780728273;
	bh=NPmXgjDtDCvc5kMx0WiX9oBaWr1TcCt+XR5gOkq02eo=;
	h=To:Subject:From:Date:From;
	b=LK7NRBSkgVgwq6W9i38JbZOgOJbn2BQTf++pZuv031RTIeqejupR7U2rjVlLL8qRi
	 +1tkwmHVKYW3zLFdW9OLNJtquq+D1vDTql6qMOp85aVLcose5jpQN0740lfUKEBS/k
	 /QAlQRxAI9Pj+KWDl1i//M+G5bzxvBPevHuLo2g2j/PavsCVv9SIO+Nhe1Br85dEnF
	 fP0UA9TSCYbo5gKDqy4653ySbIcmNLzmlwr/qFiXRTwpx2ecr3xPBYLSlwo9ahZEsl
	 AoemLdGFgwhq9+BJlQehYrcYae0OyXkj81uWO4VJIygMDeclm3d8mGktaKeqUjePkM
	 rzN8WV5dkmurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5679CD8C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072827370.6450.9947253587535975160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a94562fe7948eb20af04a93a2882e1aedfe578dadde6531570904cd4aba57c7
Date: Sat, 06 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780728273
