Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC0B1917C0
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725388554; cv=none; b=o6PRrGLweRaeqpTX2kjA/TIAJz20dJyGaWzFcCFEfXSh3Jl+LRtGKBOU81Q4OrpHELbSdeDMZpwzkimgXgJFmh79G43X89gOQqRYsKMekKWD39m4/+nx7IZQ3mGZmp6RgkxVbG5xBg8H6q8sAcaf5znlWzUA1VHkIrZe9TbG8Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725388554; c=relaxed/simple;
	bh=lu5PAd4zkQBkbURgS4Zsp8Wny0HhzLPVxjGsL7ieptg=;
	h=To:Subject:From:Message-Id:Date; b=cA6S0fJ6GmsdZbu+Xj/eXk8vw4T7gSh2hKlWaJxUOr1ys+w6GT1UfYXIDFKUf6IwlCPqnECdwN9m0zeAgApm4xC8PliLT+/Qg4WKYaFT4cFA/tsds+K5DU7JCw1I/PAf5spFqw3DBfUwxadtz7XufvbkyZj6kJJ/GLm7W1RuqhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdnscX7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdnscX7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AEFC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725388553;
	bh=lu5PAd4zkQBkbURgS4Zsp8Wny0HhzLPVxjGsL7ieptg=;
	h=To:Subject:From:Date:From;
	b=GdnscX7B6LNFoWJYx/YGfLPGsHI9Spvv+KVY05s20LmDQtwuFNChvL/9ULDQTO/wv
	 C6b+kbmuXK/dxdPj243jCWMeXPqTTP862TMOMeL6aY88xOACmtlRy6m0Zgp93R8OCQ
	 21off1ydpnrjoj48zEmL0/N01KzUAbNXcAf+iK4PF1kMC03SjC9REi+vlBtA5ZhVLG
	 EuEZDThSeMO+/UztT3gwQ4+XyuTPHsU/Ak6I36/GUmlr1U4XzZrLvAcpFt5Qz/cjiv
	 5kBdjTYrghaDhX09Ee0LtRcpR7A2s/MJMwXMlXf4Al4UyjHA/fYXGGv6WMcA6Ek0NS
	 F+zDJCL1M3a1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438CCD37AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172538855359.27699.17410699091981585125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc202adf970cd6c9c9d8ecfaf38c27cd74e26def55c9582f241c932e03a7201
Date: Tue, 03 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725388553
