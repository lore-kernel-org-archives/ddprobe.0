Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41D43C490
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706482097; cv=none; b=drJWKrs5HZxb1wXd77ciCAt+SvJycjtX3iDfLWXiDSrH/+mIZBcmpjTV1FD2RoXz8MhvRoscav08h//1m7MeMr2kUXz9NJXxWGbKe8Um+CzCnVfq7TkLeFhFChdPy8dDZJpAz732atZsuav+a2NTqEk9cFaVib+7sXh1pEO5ht8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706482097; c=relaxed/simple;
	bh=dGM5OuaPGKtEhNHD9xQzUCEvvNfgB5jM9nbXERAFoHs=;
	h=To:Subject:From:Message-Id:Date; b=kmdilAllmt48msTe7+DXZCVt72r0M9daTeb/9fGRMk4vOprgRJrWgv0LXK4UsbxqR2p37IjpQfPWBlDy6htOdB6bseV+F7oJpIz8Z1MRd4rUQdthG/3VtxpSBsVGLwrw2+awLapbcoFX9IawoNk+vcT1U0XwxQR2OmcwlyQDMbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rp3oth5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rp3oth5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F83EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706482096;
	bh=dGM5OuaPGKtEhNHD9xQzUCEvvNfgB5jM9nbXERAFoHs=;
	h=To:Subject:From:Date:From;
	b=rp3oth5vGJ/x9PW7zXl4FJtP82BFLfOZ0uU+i68A7619nJOu+1pkj1y40b+RN6Eto
	 w5fMntTVf2oeymu2VofpkeNoYR7JpDGIqGuYisA87OihpxPqwCjlgkdXySrdcXLXrN
	 25jJ401RmRHi2Gi7vjL+l9TebO3bzT+0prr+D2JEFsRTey0OWHPfe8C+afhnQmEM3c
	 1j5vsg5dnqGSSrqv7FnF1EYj6OIOf+MZTWUmcx0IxsPEURDARpadoOF+tRE0g6dWrG
	 jxSfwuQcB/koEJ9Au6V7zQx8y99aV1LBGEJ4drX8TyGhCBUc0H3mIQwsmumKH6NDoo
	 q+NwVC+Q3GPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E79C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170648209638.28004.2936979401288665937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90eee4d50894f8b4c4952af09c4eb83ac517802221cc567d878eb5f4efca2de
Date: Sun, 28 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706482096
