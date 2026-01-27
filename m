Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C54287247
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769554434; cv=none; b=hIhEMom4ZXMIWrJxhC144ua4lLrc2w0Chad9CXUxGs4l+RnUeFNe6/1uM8T0gZhvNmjv1Hm62ZrkHTyTO+8NJ2gTNG+xJCusL2z0Con6qBBUkYDwGyQ29Usy5XK9ZaM79n49PVLoA5lzm1WNX+rwhtNmQa7xB2OD2ZVGWh3HjqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769554434; c=relaxed/simple;
	bh=RvSACmlQbtSXAo4xSXvER7eNwi0ZV7YmifY1MnYhrCw=;
	h=To:Subject:From:Message-Id:Date; b=VoB391PA7Umbgz0EEi6FFC+/jEePJgdAd4KYkF7oB11aA2ZoS2Y6RwBfPGy1WB4ofhF/Ieq52DLxtSGE/u6Ckz6ZfmW8lCP41auyZ4qyBFasLRgre1MPdqVxspaQc/Iy4nb89I/rKabtSLS+TFwg51D9H8V/VlxAB9qpvUME390=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QITou2uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QITou2uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F575C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769554433;
	bh=RvSACmlQbtSXAo4xSXvER7eNwi0ZV7YmifY1MnYhrCw=;
	h=To:Subject:From:Date:From;
	b=QITou2uA3MyVTs6jbLSHAHdbgsB7FLmML36Ax4FG8MGxPLuHYgOeagaOj8SHBE8IX
	 29h/VzVCeejbgFjQhHLkiDOig34b+Lx9EawD1GXmyoHAlYBzupegm8HF13lm8LDHwm
	 ukEdpXtYEZVVVmfKevU6xtp0/3AMo7ns0uXr0/8+bnq2gRXDVkNo06t7dnxl3RTCX9
	 KdsOlCUT2RF82SFtmAgJ0AgNZfxhAkFyS4ExGNXODpbiwzOIqDwMPCYBRuzNECk2sZ
	 qBN1yaHv0yOQufNjSkLc6xZZ9G2yCGIeakQwC+0/e8qklOUtX5OzX0Wh1dJ+iEZOcc
	 cZ5nVFX/b+Pbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBABD2FEF5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955443357.1513.18206626830917442926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192b2e844e24d10aca4c100f0ab4726ec6e5f5d08ef65d9591653a54f89dad05
Date: Tue, 27 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769554433
