Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03B014658D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751549993; cv=none; b=oy4/IpUFjffpc5/r5YpvwKvKCrkInyRT5kGhkmJdBvGWLOfztwe8iM3ZgJRTiGqngc0ErQ45wks4UsmQQH5VP99dCS010yKvtfwVjkh1dL0rg14iW+3RHbe9Yz2bFE4xR3oGSi8Z+bumSsaX/CaqyMxrWGFC5oEqE2orx1rlxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751549993; c=relaxed/simple;
	bh=kp5KPd8IMB0kRfCbvuZSNQa8tbQ24rAAz6cv2ne19Y8=;
	h=To:Subject:From:Message-Id:Date; b=dbOn0gj8jxDtL1icrc8zUhaoCsthCZR48DSzw419uFmcm1257M5oQoE0iy6cnP4xcVAdggGlU6Zx/xjvNAVHxN51BssEojDUSY6n+wHdvb9J4i+OYBdnwwxPUh+t7jKX88qrf8VuWcYO3Qg+wFdzE7AUJTDO+BNt1Tz7IkmLS6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suteLil4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suteLil4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F09DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751549993;
	bh=kp5KPd8IMB0kRfCbvuZSNQa8tbQ24rAAz6cv2ne19Y8=;
	h=To:Subject:From:Date:From;
	b=suteLil4Mbw5O6N1FmIGIdZLXQFDjcHHCT7Wlk2TXaFUghLEYqB9hQWY0lKmGbnc5
	 1nWf7wiheqiVi/HB0oGRUXdasUBjN9l6hSCasUgEtmnQffDVmqXJSwFBMIBOb4nCAr
	 +ROUN8WXPUuGiaUmDpVwRsO5Hz1o0XJZ5M+vgIr3UiyY3F0y7n01vWmXCvcBzMC30x
	 czTIPmaw8+/h81fbBC/1/HCL7bohvjGIiKWaHGsUV0yS0IEO8F3ubtxiJGURcR72nm
	 woZOYOOVflPS3HONvsHeXP0k2nxyXF5MqDDMl4FxNhTw8s0npdccw7EjTYUZ3c8bK9
	 ujsRpyUJRR/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFACC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154999357.18865.13793340270223498081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bfd52795a4d4c770cd8f684f474985d0928f795fd537b9510406f72de396d7
Date: Thu, 03 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751549993
