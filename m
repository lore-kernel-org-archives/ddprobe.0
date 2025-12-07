Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE2119D07E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765084374; cv=none; b=VKY9YdhvcXVZAxucoSB5q4B9U0rmg94CaEsyLdZhifnWbYu6q4k7vWK44DqCV4N/7OST35tg7hjCd9+forQoN3P2I/PhhtVgV4qyP9fyIkfB4hlQjks9ahiEqyYCZAYLLIT7kA7VWAzXcqoVm3avZA7ccsur1R6m7+mS5wKe+Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765084374; c=relaxed/simple;
	bh=x+oQvJ2wMtkEqmvvI/ZF2HvzdYS5jAU2FWWRT5rq6DU=;
	h=To:Subject:From:Message-Id:Date; b=thBqPpyjRc1OdR9N6s4YqGjPoxTs0elT7uv7I9X3xTAmbRhPUxpGBqpERwBYd6tjv0osTYw3CPuiom5D1sqgZNCRBj2OA5UaGVeb6FdE9pNHOHUAfrUgPBW/Z4T4YaYCFyUFjKHSb7MOZKi8stov+Lt9kHV2Tnz/Z9ZxkwAi7Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT02v5rV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT02v5rV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABF6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765084373;
	bh=x+oQvJ2wMtkEqmvvI/ZF2HvzdYS5jAU2FWWRT5rq6DU=;
	h=To:Subject:From:Date:From;
	b=BT02v5rVPc/MtVU460afZomLEELKXLBmkiy/qvx/pNYCndMBFd004nCB9moEx9Mt8
	 ArE5DwHAPINPomu1JyJojxsZMUVXAeJdOiJslf2PjvBMTT4RNO6g6PKuoCkB+tP/6p
	 ANRIdrWrBljHK9N8Y2z3VXq+Qdu3dZXjREl5bTVhP5d2EdEfg5MbT/1lMT1DxSk79K
	 JP+syEhfeOh6DHr2icobCugkBj1YTgLJTopVN2LUnn5Cb9QksbuMMmNhZu1CVqc0z5
	 OSf3eVSIyO+QLDQiwbOzNMzYpse+mLLhQv1kpyNraZPdgqGqXqjNOXLlFKvSIH9VGb
	 HylncCPhOv38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773AD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508437358.5243.15664322675911510696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920483de0c5c57c9c4087ccf13746c87b892b2ffd70d056b8752fa784ccee2ba
Date: Sun, 07 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765084373
