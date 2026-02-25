Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3992A3E8C52
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039094; cv=none; b=tPg+ZCtI6klUCWseBbB5hh2FHP6k3Cyv9panFKKsF4Ow/EezmuDi+70XpUFLLAsYXYRAufBcP3x18208/6y7io9hZlwTecAUuILMWnkiIkcoLC4g9fqDq0OsObgioJPfDtpj3dcxvgifZCLxwoKJk4xrCiT+8DQ++cinIw159uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039094; c=relaxed/simple;
	bh=2QbiNjVKoTpObtyVs7H1m5EzOAKRTwsQhMXgSgDWl4M=;
	h=To:Subject:From:Message-Id:Date; b=dVyT4x4kuWI5QL83a33mxXkfF/dsRRi2/6WIyDdjWsNBcmAy+flZn1823b4uSPGnSIUPzZQ24vr7ep2S0Wi56nDTeSE9ZQXGmjykc/FvlRgfNAEml2k0nkJTHZppjejIBARBU4JW/2iNXjqsp5W6nRacKUOEs4akWgkkATwYbDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqbeO9QW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqbeO9QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B137AC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772039093;
	bh=2QbiNjVKoTpObtyVs7H1m5EzOAKRTwsQhMXgSgDWl4M=;
	h=To:Subject:From:Date:From;
	b=gqbeO9QW+8TmDNWL2kZFIIPh3g0PthCVUMjDb75hu1bB+fP8wCz35IZRiHjBLpzPg
	 0nbC4idZzIZ1tY26nJNoWc98xV42XBhkLn4By9J9U5V6Q0j+BxqR1NY3H+h/AlWMTp
	 9SMYyyuUudPSFE0QSfkQJXUwWsq5FXWjA9Z3QRVX1piGgI0yxzU7dATrx/pZd8Gt2L
	 U6+geu4fj/rVCb3IUqYmJoxKAqdQIJyXx4p4ND31w0ExzGME3Ot7XaDTECOi6luy86
	 x3SXPYdsHbfLp+xoutv7mTQrpNiokPzSm24LHw5rnbPH3XrugN/oXtd3zggNVeF1FI
	 8hmzuhLlPogTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D05AFD3775
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203909362.19879.17838933688100039338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb453d497d69121ac07c542f2c5e571bb55597ed778eacb4bd952e3313ab5f4
Date: Wed, 25 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772039093
