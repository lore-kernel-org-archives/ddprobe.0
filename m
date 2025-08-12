Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140F22ECE85
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755010194; cv=none; b=SoOOPZN3pTPhebB2o2VXL7/tI31M/NHmNZcmAyHvxXSe09hA+8Hf0AStTS/Sfmv+GSrGO8nS9xRptCrX4AkLVtX/IUbSrhHudcqoIZXjKtJ1BAcXHkoArAztxX4vTEK8bJG37qKSc5xcKxrkrKPy9DPHIyxvJ7tTHwgbzXZ8x0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755010194; c=relaxed/simple;
	bh=MNygCT4yE9FMTVAKsEXAfkKjarUaIMNueG7g6fW/VGU=;
	h=To:Subject:From:Message-Id:Date; b=e7uq9Fsd/7kp/clsbqstwj8R0wEh9aEC01NkGyjslA3IMvvWrRuncE9uxIYqkTUdlHQBpPcV01menOX0hyBlUA0aJZj3ByZSeTAYFO672YXh1TCUkDTkCX6MATxA8teT/enu8qKNUH5v+luxAvIjAeRB2B14gPRwtxsDYhjaVhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAkLbBV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAkLbBV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB73C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755010193;
	bh=MNygCT4yE9FMTVAKsEXAfkKjarUaIMNueG7g6fW/VGU=;
	h=To:Subject:From:Date:From;
	b=cAkLbBV724HXi6xmzsUVKO3haXQnkTZKpGylC/XON9+ybHi4G3BYWY6ywtzGery0w
	 IEXtPlo66Dq6LUUH9oLOhHExVc5ju+g9CNPIGXi+0ySORwV80zYheOemwK5H+ZuePg
	 di6j/1NLH4e4sYxHrS7PTaa8W4ZVr3/q3cQLvMR/n4zvTNoLWGevzYDivFDLrFfqOX
	 WWlCzbnmsxcQeKNfVrAxgv9KrroA94kU6o5Yr2u6pEefkkOMwZ7NYO8ilng4VBtH0M
	 Osg8j884STuMkaPVQEAUgo1yRigrNcZt9PduLZ+knyimS91dZ/T0x9dqxklLo3I0kC
	 OpwdY+3bnmoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F165CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501019357.7161.827046038677377349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b727bcc3b0e4347cc9c3eac1b37e16f0ebeba17561ddf08144f92530881d0fe3
Date: Tue, 12 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755010193
