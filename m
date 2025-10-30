Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA3A34D39A
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761857994; cv=none; b=SSGWcnZwtPLhQNFZf9wit8xFdIX3/NQxfOV3jHpZp94vlOvVOaipiFkK1usGUQl7R4n0/MXJCMhxeYCMqAUv1bByVvKYiioTOiTOIYdO6hdYpfKgCiRIksHUAKjYzdc3T/+xyAT739eeGJgcoRvYXiHdyUGzwQgD0dDubOAEqH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761857994; c=relaxed/simple;
	bh=SKTjL3l05vpUAuQu7KdPjsJSBteglAVZC1eL2/F8h8s=;
	h=To:Subject:From:Message-Id:Date; b=lQNKLjr8AnQuFaH4jJqOKe+t0GzGuG1Y78Z+jweWeeOTl4aFdkYazE+tEsuE6lOu8QqvCaCeSam9aiXO2OEcCs5J279FNjT1vz3skUXjrFfY0oqWtX6Rx98DQYP1YQ06G8Cj6M2EmKtN2+jZNYRVtK6+6Q1CpaRU+G7md+txv1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgXh9i4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgXh9i4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCE2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761857993;
	bh=SKTjL3l05vpUAuQu7KdPjsJSBteglAVZC1eL2/F8h8s=;
	h=To:Subject:From:Date:From;
	b=OgXh9i4I3YUJvhxEJQ5xkSd+n0j15AtiawNPoDHwVBShZss2Eh3Ej8E2Zzbv1rqbA
	 JWo0ELRPlfz9a5rtWO5JQSeQgDMYRRhtH1o4xMzjJQTQ61B6O9ed8vkpekZcDMFtbw
	 IopP6gCO6Q42QcLX5wzTKZWqfYk3InXzsbK4hV2ovXRbOdCBVSmXvS9U1k77AqtPlg
	 bWGTorZrJi0LUuI10YfEsKaFA9dPoEWPlFvOjcER7lSxMdrDzgPqE2pPKVamjV94wZ
	 E4SOtr9mPGnAPrjC2TpMxBazA2ZKvPuUN2DtGW0F6FegEaoOLsoSc//hSur5fik7+Q
	 nALNQP7ibSu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF6BCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185799361.12907.3972715399441572152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73b51dc8b517d3d4e166d0a47ce26d8423c40991e628761e952e387d3dcff70
Date: Thu, 30 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761857993
