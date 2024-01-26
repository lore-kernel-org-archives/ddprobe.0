Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE158F54
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706237897; cv=none; b=AsNfh/PoT0O6fjmDtABjXDTlPcPp8Mt12ln5WRhi7Dpn6yMbWrd0HHzgnXR4crAgS6cfRvk7Ajy3mEoe8Lo/+AGYG+mtlc9dQJg/1SEdOM0YazW8/pblQfdYtKQ8hDBkFXDoawZrdgMQ76m19/XW2zjCOvC1cizNs8Uiur4dU/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706237897; c=relaxed/simple;
	bh=TcExMr+t76TEUPVfu6tX4juAMpFgZfZ6PM1l/wR3peI=;
	h=To:Subject:From:Message-Id:Date; b=NfLqoHICq45L8ocLZ+Flc34ePZWyQSlGbVeITna2uW/3AIFWa1ggniqRGAEt7AeZp1U/dlQYH05w4fMWpAiL7juxluu871Xbm4ByqjoDbtALxruII9Moz1oV87nz+rVQhbS80HxXQhUezmAEBqMoXQVASOl2Iid94S2TShnyd9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcCgiiTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcCgiiTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3E6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706237896;
	bh=TcExMr+t76TEUPVfu6tX4juAMpFgZfZ6PM1l/wR3peI=;
	h=To:Subject:From:Date:From;
	b=hcCgiiTK5tQCBWikPTCE1yGQohJqoiLSHwKkDp9vSN8LtbhZ8XFgcEv0+AhwCk1RW
	 HS6b2CRGDSWUM/w5uH1HLvvzylSPkjPOntqFUos9AEKa7BdNhyi7ktqaMvVHo7SSjl
	 iQP2kxjGtsOBnnGt8+ypJGAYiVtEjnc1Dmm2tQqw5zaeL/hF1K9OvH8FElI2u2ddfE
	 1qXTTW6XEh06s2Yan52W5aE2+8fnHM/hYAhIJqlTw/vQeC85C9QDPehA1479D6mWp1
	 deVpjDOtOECgmyp3tWUlZuIvUEJsKBGV0H4NvjmKLcJXwU71yFVfPXtvr1zhx1uDhT
	 T/fYpKaVhmoZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F625C47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623789638.21173.3592620272048255154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c2dff1163cc3e9d19262c640c82691944680b8143c94f71422bdc61254bc7f
Date: Fri, 26 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706237896
