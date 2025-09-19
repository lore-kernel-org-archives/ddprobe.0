Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D53F31326C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758290394; cv=none; b=RzqoxJxoLRXSwx+vWp74RCusFABQf48GcH4UxytaIZG+Eh42KB6wITzDtdKrfIX7dRRZ/iMI2zGejbxxjA65QzU9uKRuc2fBNuANVEdHgAtLgtDmIfRvXpu6M6YPV0rQkQqo5tBcYMrhi/6LgTH0XxpXZTE5y0rdM0S3wAudWAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758290394; c=relaxed/simple;
	bh=+vDgVCl20C+fra8HI4dT0K8s6gyQRicm3McX2p+jxj0=;
	h=To:Subject:From:Message-Id:Date; b=Q/EUvtYyeS/uS8Rm1lFFCV9GWJJtuzWmQggIc8kQTDKdsd2BP2+fN6lwV8AZg8wqFMDP25q+ixVy2U3soBYbHsF6s1n+TjD6Oqg6euGWmmftkVUl6pgdXLo9s6W8TKQ5PM6pc6xlwcl49mfHrhbxtGrphyA1hgV8QacmOq3dQ9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trRQbMwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trRQbMwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B363EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758290393;
	bh=+vDgVCl20C+fra8HI4dT0K8s6gyQRicm3McX2p+jxj0=;
	h=To:Subject:From:Date:From;
	b=trRQbMwlTAxfZ2C50Om/Rtonb6WuFal1eTtxpXWZOI77HaUx/KrlHk6vuGRLSluQN
	 WE1ImAcvOV0FMlYtV5/NvHI5S27UaDN14Q367m+D3UZrhmWxpmZ1QFKRk47FYpgPQE
	 7KhLz+tCsCtzsXhIdSEfMxCYZHYoZMrCEL2gOnF8EO+ueEWsPm7fvt+poXubA4BPTQ
	 krmxIolbfotpKRyvHfnu91fIPZVE1OBAvntPTUFGVZDoDM43j78HmgY7oZa00pk5xE
	 LSVy7yEnKE6AU2Hp5in3+wafiyZQ4IMt9TxKaqPbCglCQg+UcMVhbib3wduNfapv20
	 yyyXgoI17uyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BFBCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829039364.4715.17493960237523436171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e788b1ef8e87b6dcb8c7ce542ff13d838a40f0f9e09fca894cdb0bfd0a500fed
Date: Fri, 19 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758290393
