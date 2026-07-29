Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4468E209F43
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785297034; cv=none; b=OVpfYgtEdt40/3IWIDnQUEwrZbfO/Np+damYhvo7LAL7+dp/ZMv3wO7ere5VddQegyXLjrcjEICJNloXDj4Ep0f+odprudF3nGjKuNH/j0Hkw//bFeheKGajwzCGes/4IzYo6ED2xol5u2yCMjMfK5l+HtYGfA2S0PwyiKAAZZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785297034; c=relaxed/simple;
	bh=ZoR6bu1PIVCVjzNIln18MiZJr2a/k4ebKaMNMkE0i0k=;
	h=To:Subject:From:Message-Id:Date; b=DS7th8WrB+P5Qo1romD3SkXPzr91rJjpDjuNydOqrb4FGhW4WA3AKG1iHeW7GHPaK7AxMdBLOvWZYUZHlnu1G+MNH46aR8iSszH63AaZQnxbTsrKve4GA8DkAGQeFUB+Hk7n8EJhG0CUarlXtVn6gLf1FuYOC7UaqYKo7SzfnKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/fcc96r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/fcc96r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0150C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785297033;
	bh=ZoR6bu1PIVCVjzNIln18MiZJr2a/k4ebKaMNMkE0i0k=;
	h=To:Subject:From:Date:From;
	b=D/fcc96r2SIQrr822a+MQGav2TNcaljqhp8jE8M9arWbpsbpAMxbUXG3XVCY/EKQr
	 Y9fMItZMY4tkSn+dHjK9rANXOAqE2McLliJ/bVl5oMDvzc0Ln1F1Nsj0na5BAyeJ6w
	 fWACFO00OLGMl+xt9Fm67sGHtv+r/ue6kjIcvbYE2qg/zAwC72N5AhJEGpUpetkuMj
	 gUIn0jg24S93C3kLwhw16pCJuzs0hZzLWtChTVbu+uMK89P/HvBw3mjB+oMscOJPrH
	 2MLq/PVO3G0Zw+s+kUiL1yfLyvpfmrzs2iNf/Zhw7TjXElyZQYX//9sv3aBbboBEV8
	 DiIpt8LZAKybg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2EC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529703368.29626.16892995444052871398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde17b120b1776d194111b545f2dbe7526b06cd7fa28c8c9adf76a4a83fe3d60
Date: Wed, 29 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785297033
