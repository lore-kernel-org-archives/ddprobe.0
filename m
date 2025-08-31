Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1743A18C933
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756612194; cv=none; b=IZZg+l/a0UwDApLMpc6XVKfrLUbqVWwJAuA+8x5rJ1A+hDK5PAWPEqp78Rceh/7SCM0DzQMcmhXCk81buaLHkbEjDksl3UWhwnUvIUG4RqGIAYdjgJYtlYjF72QJkprBqytm9F8tAMmc+7hGrkbmf6ehAZ5wpX8+1GWEmoynEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756612194; c=relaxed/simple;
	bh=J3M11OyhG0Rp1pIL0cdoZAV0CubfNOICB0EwZ2thIAU=;
	h=To:Subject:From:Message-Id:Date; b=WZOaXSomYdy1AV6UOWzyQx6r9j+CwdgbdgaL/aT1J8nTsUlA2fMm6RAC0CP+mEQ+ik1lDrABPoaLUv4+T+CB6xbWR7i9TlL8Y/NzbRZvjQe5nQWnHPbEA+9uzATc7eJBgCUiRF9oIu8yN3S3MrcKz8nMqGoFPyM+cfF4GKa0jVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRvAYhRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRvAYhRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F008C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756612193;
	bh=J3M11OyhG0Rp1pIL0cdoZAV0CubfNOICB0EwZ2thIAU=;
	h=To:Subject:From:Date:From;
	b=YRvAYhRzEdGjA5iyZQVGLO6FVrWQTW+BAfhxQKei3F3Xwz1+sfwtAMxluIphTiUic
	 NX8ApwQC7r4xpWH6eS1m2C1e3CGiya4TpNtZfDv6bFGeIgO9si0RnEXMCuXKgUscki
	 Cb1KawbWsA6N4wUeeTR3YKkEXkk7p5rNSzOmVAsQV/d0T00cKomu7tU+WmSZIzfWl1
	 i0UM015ySgx+5lf1P587XHDtxIFx2nj3uvuZ2hUCRtnvyM5MHukYgV0nBiSWMbWnHp
	 FJemzPIDr4pPoPG7C30UFVwzOxl4l84/4MlBTeFeQe549SAijECLOWUf3AgprYwyzE
	 9HJnj8xVzE1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAC7CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661219357.22530.6575051671153578037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5c6fc91af13c85d36f5e18bdd03d8cbeb57bbdde2025d8f66dc4c0d9ccc27b
Date: Sun, 31 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756612193
