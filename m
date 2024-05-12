Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631794B5AE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715534543; cv=none; b=bWjbCLINRloeabkGpRTjnSTmwCmZF7eOEfQFBWxlhW+P9rFtbdDTZZ7iITsEAA3Tx99QTQCRwJVULmSjikPvQIomc25xCo5ROpISyh9QCphc8XFTV7CihYaoo7IDuTYX4950n0YkutNySvhyrzK5Zemu9oo0HsJOMrR8n+kN4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715534543; c=relaxed/simple;
	bh=dD11cXzlHnq6GgEYjsSTvk/LdUTjul7t2uAjfWeLncs=;
	h=To:Subject:From:Message-Id:Date; b=W+T10TGXmybfECRfY/dLwh0iEcNYg7GDk7KvrNa3KscRYrksVPx/ZtVmlJteW/TBqIHoLBS+FreHRiJ/PcL6tBgcYL7UIvJa1O0ZNqOKTl/01myXqE87mIsi6bjUq/LFD9puSFTt4t2Btqiq26k92Sn4YRDv2B8ribkeei+M1JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFspy+fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFspy+fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB922C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715534542;
	bh=dD11cXzlHnq6GgEYjsSTvk/LdUTjul7t2uAjfWeLncs=;
	h=To:Subject:From:Date:From;
	b=vFspy+fYZshqRAyZDfQgU2ZPM7kRG9XYAmEyQm8ylh6jNzV3RGWF3pSE4hl28PPGX
	 E5faNwmfCny1NMN96uIV2ahj7RcwK6sboVTAbth4t1czR0vZ0xSa2RhnS/us3eX6K8
	 CH7MDR3w7NEhXQly12Ft3f41jYXTep+irf+sySWYIxfux9vY3G7dpzfy0/N5RWOyPO
	 asYYGqNJeyF1BpCQKj/oLDheyC/ZX6xkMTuv0pg896E5vBUPtZ6KJCZjed0Vo8TV+M
	 bblbEGgOJY0jUjdrsI+6R6eNy6FKR+uV0qq7Jva//Cnhd7VMH9gwDpLjvd/jJVU+YA
	 8pYAbwdcoE9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C761DC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553454277.5776.17706834462746524441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4ea4f20d8c3f9a3a0f3e51ea75989f8911ea1c6580a9d72b0c0d9392a31218
Date: Sun, 12 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715534542
