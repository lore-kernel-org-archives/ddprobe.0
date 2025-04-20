Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449BF1373
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745131194; cv=none; b=XaaLSQbBUR4yLy/Jj2QtChD8QhdcoG3xiRhKGxBooxEnobCwIzaILvivipl0Piw2aw8tIzYt5UYQr/ZZrzgspLOdftwMdbg7XQDBWEuxK5zYRe10s12ow5TlhZEQR6ysg20Z7sGJErZuhcC5yALJzPoKaH9zekZN4IVe2/UYRYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745131194; c=relaxed/simple;
	bh=Ywd7oT3OEyDq41ivHr7pUv37rtfgc+7Pz9fFQfzxItc=;
	h=To:Subject:From:Message-Id:Date; b=uV26C2bbyvij6VKJvR1H+SjyD+zLSiJ7i+746XFlH6suVan/OdcFiR1W3dqshc2N+QN2uVN8zGvY+gKyRRCiLXm57oTTetxr76+OutQr/GcLLRV5ITppbFTxhrBG86U9Sd3dyOwBJrT+G6IudE6QmYkFJn2AgYT7rMFZcpHC0jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Escnfi5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Escnfi5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745131193;
	bh=Ywd7oT3OEyDq41ivHr7pUv37rtfgc+7Pz9fFQfzxItc=;
	h=To:Subject:From:Date:From;
	b=Escnfi5jcEQ/Nx7T5NMLEdWV8SDKx7VpmvYz9ltW5y0r/hdyU2u8vKMSjrtUu2jVv
	 zc9fBTflIT8hLo0kgLtWb1UN3PJLc/Laotvv6UpCuNtPq4OoIsN+iHR0Rm5McTgUi3
	 gr1rdVP40xIMAe2RqguDNfFGWKf7anouv59RoFpxFnZp4x1f2Izbx74jpGI+lmGwRE
	 KnR4ZW3dBGbclJKxaGkB9V7pT3kYO/GP4XHr2aWmB3dhL2h5O1BcGqVYdHGLzxS8Hu
	 aih6Vp/Lk8o0iy0pbZyb+eVy+gqbfCUO98eNlufqmMz/XE0SUb2iHy0Pt0jEIQ44ri
	 QgT4H/RIU+fpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281BC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513119358.13280.795858807697656705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4608204c881f8c64d906ff2807f6d46c9f0545d824248603e09b29cd27a83714
Date: Sun, 20 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745131193
