Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25A288A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753553394; cv=none; b=fVcdvAaoSO7HN/RukXnokCfTPRG8yfP07/K6UgZGzAMJxV4AMPID7szzmeIXVuTfZWERhadvsBbk/yOyTy8/NP/KDeivuUG4prdvV8GQvAIGSepbBbg6gfpxRgfLEIbZYHQp7adyLC2mGAsOuTC3aWS4fH/5I4pdVlgo/zxY1ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753553394; c=relaxed/simple;
	bh=0A1djzsurl/isp5VAXJQs7d7+mYmB7N6VDGv/VDO1h8=;
	h=To:Subject:From:Message-Id:Date; b=WQLsMomxoU5oZjUqdPajjGrmYSdpW0Eg3ESZvWh1eFcSOsKPk/RcFSykSyfzVsTNy9mKR5/t1tgkDV1KeurG9dj53/9B11KK0Bycx13q+X1Q9v0kjb+DU1cP2MWuEB6czO4+2safaVzY5k9LNcJRFRTkB56cMLgUYSCvNpR0gBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apR+6f47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apR+6f47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CADC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753553393;
	bh=0A1djzsurl/isp5VAXJQs7d7+mYmB7N6VDGv/VDO1h8=;
	h=To:Subject:From:Date:From;
	b=apR+6f47NLONuQCaMHBx1feStkXKpvNHbYRjW+hLaW3KgWx6+OBAeOKIDdIohRp0t
	 lXFpgsj0nVBLYn1OudCh1XEWP2/fjizEEEz46gR1G6ruHHUpLEVqn2HIvs886wHSIp
	 L+z2HN1ScFsI8j60nL6BpqcThHcMiWZXbsjiyOcTTsrbFN/8wuLHymESfcz2qdb6Oj
	 kg0IEr/XNwKK6RBgT2IcOuFqu1P9S6NwADPGaNZXVkhWheKmn/rvKevciE+e8mnRQ4
	 hgs7fDHt+2yApWKloemioPtTCEpKNiLe6Emy1XOwFuhh/gUWP9R0gD87YpXIQtK6uC
	 4w0a9AFPuRiAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91580C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355339357.28548.4951865141153316387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272b3a523a341bc0b979a773dcf6438e48f006b7211e0d352438727eb4940ba8
Date: Sat, 26 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753553393
