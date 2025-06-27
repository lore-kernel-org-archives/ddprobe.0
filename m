Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CFB1922DE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751008194; cv=none; b=tqYSZygxlbaCxLTeKXBk0a+mMETVJ/On5qpkfXT7ecIUxnjnyikHrHBCsk+IZxc/AgM2+pjyPwSZVlYsnHIskz+3Xs0bdvIqwcnK/oJdoOSKS8xRnaYZreUXN+N9eDNJWc7vlFjOOcBq12zHDrW+CbSrrdGaIICYSF6+ZDmqm4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751008194; c=relaxed/simple;
	bh=jqhn9PF5qrY1PDCY3kOlJ3wTPYgxBZjCnIL+OEUJ/Qw=;
	h=To:Subject:From:Message-Id:Date; b=pfFkksLtsYSrL88akpvO/YxbbZ/yfPncg5v8KHrqLbFTTZW6C51tagE1ms5KyU43dGXrIYcpMS2lkqDhHOPnxp3bDKo5coZYn8U9iaVKw7tgJ+c240uV7bvtWpqM8mfCZBS5PLJsnjRHp972t/HMphNIgCBn6UAUpYNpY6tkVXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC+JdV8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC+JdV8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9196C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751008193;
	bh=jqhn9PF5qrY1PDCY3kOlJ3wTPYgxBZjCnIL+OEUJ/Qw=;
	h=To:Subject:From:Date:From;
	b=VC+JdV8Kz0al1vLdE88D+ejepj60d8N4wa32FBg3x28rUZWgV3EztCF/Wg0mHv8Gt
	 KllYcjU7ETQXuBv/LMD+TzRxir0f4Mblp0daFHOwHJt11ZSKoTAb9LJ+7+mmitw+/2
	 3J2VXpBPsnKXJc1zYG2mqqQdecvZul2h7gn7uwqifMQH6uEm8ajtJ/vZhb2SaAVxmq
	 0BFk4cMVYJj0sRu9Z9GtMmp30x+hl1RKVHxMo0Rmt+T08fdfzzXI7A5K+3HvTWsubU
	 Rj3dN5ZQDAu4Yzqg6tjCdAKprdEB6kEJdNlXpe5llD2KArBm6/oCciWuTM/HwS34lM
	 L59u0w+MoBVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B967C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100819362.26694.5971904105300183872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c1ae085e068a45c9330c27b58f7cd01cb026900f8c3a6d25829105df37e169
Date: Fri, 27 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751008193
