Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381FE2DC79A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781135794; cv=none; b=OpT8iFiLvodOW7I1dyNpjokXhv09s5XoLk3ySlDnQzYFZ1R8NF7Wd2LDdzmEkmCpbpNu0oBTWP9NLxJhElYRcZreM/BjFO0rEOmPcthFGZbPQeTF9VEylU0keEV2YO3MgvaJwcgi1KFLkzZQ+ct8VNuByjTIH69yxNf8P1Lxw/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781135794; c=relaxed/simple;
	bh=zvTbKFXKE4XQRuNxD9Rc0H7wuL4naO27D6EAVp9aYPI=;
	h=To:Subject:From:Message-Id:Date; b=qOSEMi2qDWM3YYLDO1QhKikytZu343dIO9+CgO2IkFFPgfCzA9ELSl7Wzfb6REIemD03ZWmnkDH+rsQips2vpSo/PZwRPfYfz8MNOzMZAPpaCNmPNx6CkLNZK83WWqdTD6sWKTg/x6wymQaTRPhuxlNboJ/jp8patuPWoHrbiFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/r1l5j1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/r1l5j1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6753C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781135793;
	bh=zvTbKFXKE4XQRuNxD9Rc0H7wuL4naO27D6EAVp9aYPI=;
	h=To:Subject:From:Date:From;
	b=t/r1l5j1FQ45O40d6d+4WxfVjs0h2kL3x6i9CWuAc/q410OjBpFGVtZ7W/euLtP2j
	 5SrUUVGVR7ugOK9nMoU4tL1JHflWFqEm9sqURF+WIJY6l0EDTj8a8UDcxzgjJfvLeR
	 HYNuk6RHaKOVs7t2mcCMFT65+qS+GRNdMNr5qZ3R1uOul43VZCahl/mFqkwkae+vvp
	 YKi51ZTfIo+kshWDfKUlU1SDU7gZoaJ8+X8JuWzTCWxSp+ktH8gEi0MMI5Byszxa3B
	 Eqk1mxGYiNV6Ry/KBcugdlY8CrkNJnNBPOudnOn73uaUapz5MkMPF+mR4QTzMT27tR
	 4WVC7vL9OkTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF00CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113579367.10642.8638978018974537695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234a236f7f9ec368d9626e4ad6a8ba0caa4c9091d3e590dc8b40475f1dcee59e
Date: Wed, 10 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781135793
