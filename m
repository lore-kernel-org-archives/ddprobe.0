Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE3567D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721585754; cv=none; b=eqJe0XPqz6WLqWT8p/n9voAR53KMJCU6l8nMSLieUTR9BCECZ6dO7D4eCZNNuulVD/w0OirVf3X0lDpedTFrvbSShJooigkj4pdynZ+FzR7vN5tbRHh5XnPVhnm24XDOwkmONTs4Iv9iSsisR3CpeQ+Rmpb6XuVqnuGfDGNiMVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721585754; c=relaxed/simple;
	bh=vpAR1K/CNY9z15WcrrzaSZE3IyUfpskxpQBizgTZ1sU=;
	h=To:Subject:From:Message-Id:Date; b=kEcQ8AoP9+/ZfF7SYtoP4mDb8/7oppiFnaxUQ5j+wbnVzwloC+cvXDMUxAYo8FLy0/4cQ4CVTgRWq6y271KMtiC26dV7gGBL+RC6A13ki1uQYicN+hzfA6nL6jrx2GmUrbtOp0oV5/SoMWa7lg9lBohp9nimV5lULzGhwUWZpc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT2AyKuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT2AyKuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09FAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721585753;
	bh=vpAR1K/CNY9z15WcrrzaSZE3IyUfpskxpQBizgTZ1sU=;
	h=To:Subject:From:Date:From;
	b=iT2AyKujvhDcJ3j0oPIX4g09J1hV4Fz4z2Gcvi9v+li2shDSctZ4kta0EVlvAOCR7
	 PIEW4fZCWluY5dJgNecSVAmHbR6zWTwuxmDiBoB3j4/BTl9U9vYqD+pvpAF2NBzKVC
	 XiMu8MzkMH33co6ScxPSpIWHgyZy75/z+fMa64LdqEMw1tImDtLIJw8rJNXP3UcOP7
	 OgMgqbiEhvr+5hUBguBOvOzggbwkHPCdB9eAE/M1xOwFMQGrBUVgQyOazmxMsIobE6
	 jr7wGLQhw+K9oZ1/ptsM+KPbdWveH3Z83+3tIzKTeFkgzD+sz03Ecwkw59uabYGAUc
	 oDVIFkU9huWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C51EC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158575359.22588.13529473930619815804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0417ab5b69bea818806f6bdbdd21612039524f22372de0b9b01550759407dcd1
Date: Sun, 21 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721585753
