Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA1A2EEE91
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785463834; cv=none; b=kgdtnMtSlgbm5pSoiARvl5fMOctfeS4FTGZ4FXOI7p1Ev6bf/T1ydpLmTlATnk6SXGx/gu9AsP2xBX6GxC+3wy3a/CDwxj/3hvC4Gvq6bd/syMIHyNBtR9dBAb3losV1fkUjpKPn41QlrWO+SSyn6HoClzT+J9uJnSiq+3yMDjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785463834; c=relaxed/simple;
	bh=9kDO98zChL4ywdrvkm50JtgBBT/AhOIlL0w8bDr2tfo=;
	h=To:Subject:From:Message-Id:Date; b=ez6Wsbt4tlaKMLZpT92WzkRskkesaJuRQIuEyz8MACUP88MCtVtr7qYgcbaBq250Tx0PqQCsJj3n9a6ImahowDOaB+FGzc1KZQuwJm9rxIPN1NsqGCKzqFTuUp+kk2oVn/+nmx2g9EGrvTBOLST94Lc07noclYJ6kLqMy/IILGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEdgOEZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEdgOEZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD06C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785463833;
	bh=9kDO98zChL4ywdrvkm50JtgBBT/AhOIlL0w8bDr2tfo=;
	h=To:Subject:From:Date:From;
	b=XEdgOEZP9pOp5E38HAXRCXdO+0T+NxBTgQWbOxNBaFQRGRlUE0zARZA/nYPGeSV9E
	 /ecE7qgbxoLU42caGbSwNcH+t62tkawyNsVpCaljuTq/QaHq5k5dxnM/kB1u1YBoLH
	 yhYvlJOwTivdfyCbpBe32ECoTc4A9q2dRfaq3ZOmliT0FXZIydg2zfyiaGQfxsvcTs
	 BnN1g6Hw/89GjWyMZXhR2HPBbCiXGAGjT8v9Gwy6SCTFFwl325R0lNpEEBksJ1PZsz
	 h7rUcd+qs81cUoioDgQAf2wkwM0RPimbyfrqeKq+omzbDVtrQLVGNe0jbYCes8uy9W
	 +TGiwNHfUATow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D2C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546383368.13020.14239479775522023544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48174b10767e34844c91b71e01f12b7a87b9681093e56f9da7afa9e00c2c7559
Date: Fri, 31 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785463833
