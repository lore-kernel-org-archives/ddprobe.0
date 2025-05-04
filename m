Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F593D3B3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746325194; cv=none; b=I2SgwIZWTE7wZoyO1GKU/VuCBmanVLo+LtOPF1p93UhWfIHiU7wCt+3ND4kUF7iuHi6Fw0hVdbd4pHufzMt1oQk/n5IJ/B9NTmKluqqc69TUgNMeFxEJnNTpQeDcPG2qsagG/s3nIGWM0ZSi6+bIU5wAwRDW0JM7Awn7YmD+c8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746325194; c=relaxed/simple;
	bh=79Pldw1+YPAkgVJSoExu0NQm8FsqJiSgVCCiN1GjOiE=;
	h=To:Subject:From:Message-Id:Date; b=aqU8szlIfzY4a3ECvIQBnLM5/DRzAR+w1HmwD3Qp5oAsDdlRxggT6Xmj8FV6MXzQCYnLu+/nUx4cDUitYPRbL6MjNhIrYsSwe8ES4zzwrlNGARdJAIgbm4uYk5ousN8oeV56K4HAe2JwzyvFy0Dg5S6S/iX+Fdak/2G8elG9mWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFOrEQ+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFOrEQ+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746325193;
	bh=79Pldw1+YPAkgVJSoExu0NQm8FsqJiSgVCCiN1GjOiE=;
	h=To:Subject:From:Date:From;
	b=GFOrEQ+YNSyImMUFptszM0HE/uu3EGONCTn44uNaQRamEQKNGN3jJBfHmsoAAUMKZ
	 OpygG0EhsThI2KVzaUNovlHMqTajWqsCE/PNz28u5DGd/kR17rxNquGFj1buxd+zVl
	 zy0spSDOHeFGLDKUocd1Z5QCvycjtBUt9JNcONEOTMXn9GzJJLtKpjV3Mub1qNFHSz
	 AItzChIGsd36PZB1q+d39nykES1L+6XBhcEeiSp09XdJKWnHpWdAUnWh02JJuf0cPm
	 lUt7IA4RUlbAqhFMNA72Ok/FRkltfLfwVFBiJpJ9/gmC0A420uxhU3pVd/umXP5pgl
	 Yk5xkwjxKym4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E48C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632519357.12978.12887917374956460585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c975e4bcd550a23904a772f6d60d7cbfd98821f2e598dda3b3b7c719bc180bae
Date: Sun, 04 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746325193
