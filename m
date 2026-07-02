Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0494A138F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985114; cv=none; b=M0dDeQVdgtYX60Hmts8BcIiG0+EkU5cp4omUc6A7wSaxKNHgK28DzdANStog3lwlXXl08VfHee2oXSwMJiI7FzNJgoVY1bKEIa5sw/o9NbilqhkY8K/duoLcbVGtRvMoMi10pOnscY2sq35RLMg02WV1Df8cslGEtpHd+agBYB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985114; c=relaxed/simple;
	bh=hh4hsOqvtN1fJexXfjaQzRO28+HfLE+FcpNgeEGn8eU=;
	h=To:Subject:From:Message-Id:Date; b=a8Dw7CRI65HBsWx3CBCw16XVDb2RikHAFwOYov1EA1Rd8F+xoOBf166RxMKmkKqEvdCwTheGVs0A7v2UuLIxLWqk7N7fHlMRt25YNYWQn34+JgUu+7E+M96NNs42leb7MgPM+kHem+KZp4cz11xpSQAYdRkHmqFLwe3z1q+f3Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjcMCbuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjcMCbuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB23AC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782985113;
	bh=hh4hsOqvtN1fJexXfjaQzRO28+HfLE+FcpNgeEGn8eU=;
	h=To:Subject:From:Date:From;
	b=ZjcMCbuY0FNmdvnDRQGGLNEWQ5DQ3LR0jFJGCfygfB1hA2SJ3FhD7pYa6SlJDkGPZ
	 N0cxNRu1kRkjmWr9N6/KYTs4iuEt7xSOL2b9JLJZGRSq3cHBQRlrCyEiK4U1fZR4lO
	 m61pTa20mMuusWGLmp+apzLRg7W267oDJnPVGAhAXDWptuMl5FELA7IiYMQTzWBR8Z
	 fG5kzxBEJYhZoHOtWDtxetZdoy9KEuCc2TCtFUV859O30kaHQWT82tiymVfk63T1BA
	 JwUPeTsJQId+Kht6hBgzdQuzvegX5VIHdgtpZtV13hCraYRWgAh9cgRZoJn2UxDRF2
	 wOTjFpE7XWXOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D7FC44500
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298511368.10309.1539464874462452663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb5630d8835087041380b6209d7ff538e2fdc3cd03f3b65c0808474574f7abe
Date: Thu, 02 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782985113
