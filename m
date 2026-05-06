Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D34278F2E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778043454; cv=none; b=jBZoIhHg0BIiY4ynbILvY1BaXZ6X0YzdiOfcMOnW0D6aKo1MBiRT0jXUZHFrnIz5ldosi01oGvFOpqRXpgnGzxH0BTMtqvhCaeax0Ulb2zJCKvtgJTykZmfMjCiXZXWZCloQ+y3BhYFnfeIiQSbRQRYxCp27N6vX4W94tEVYGio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778043454; c=relaxed/simple;
	bh=9DzVf/tjJLnRZfYb9r2eIKmGt7ndj8aArqZ/qlBipy8=;
	h=To:Subject:From:Message-Id:Date; b=LMauXzAwvQFQDTTPCQvlhTgiq4ZpZq5F8a2uTHcE7B9TrYpMllf2PaLcXEIXrYXSeyYk8Z9tICNrG8ohPMOmbWDKc8r9ppjGQmyLFaataJGnBI9sxP85o3bPXduxykPakdlcC6yMfnT2Ar2/yEPn3eOBbjfg+cgRc20M3j5K1l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R51MQnXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R51MQnXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D32C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778043453;
	bh=9DzVf/tjJLnRZfYb9r2eIKmGt7ndj8aArqZ/qlBipy8=;
	h=To:Subject:From:Date:From;
	b=R51MQnXk76j4pI1ZO9RXmzlYrQr1W+/wK7R2S7g+vD1lv3xyow/H3ZyGStAmKMpE5
	 ouev4RMEjBduAdR+e6WO9+ohUzQ5H6WBREBj7fOPTUVcWKobAi3Iu1JpV7gQG+TmOd
	 G5Dff5EAdTmoj7VnMhN119/mBUTZYrr1NH0C/QaEk7Q+jomXxuv0EG9FFibCYc/w/g
	 0C0mx+Zr3dj37+3VFQ7cTxeZnIDkvsctBHdmVMCHqvQn1G9lVVUMz7tdvpCaCFKI34
	 I7ZeqKdobONy2/xaEyl1rNtoM14Ia71+2CZAmojsAGt7M5HDNimL77l8t/ZOayis+c
	 j8kY+ubFQ+V6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0638CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804345369.21485.15222447221021319155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71315d95bda6c011a0916e4539864a4d41d2d1d1670c23fde069a0306a3954c
Date: Wed, 06 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778043453
