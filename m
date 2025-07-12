Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4202C9D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752294594; cv=none; b=gNP7QTtfplfiiEYNeFtNqGe6a1xGFeksEXxgrYr5UNhmhzv1AlFVderITFn37E3HZCGYdNpDK0Ug7276UK46ibu1llfcVIjQ64If3zBG46k3SqI/WUhlR8Kl8ozh2KMMdiJVuJIDC/FN3ZdrI9TgQ5Axrvxvo3btxUlnEHMEJoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752294594; c=relaxed/simple;
	bh=l4FrzN7PQ/Jihq0eyEb0xsebnK6R5SJ1v4FXZCTy8z4=;
	h=To:Subject:From:Message-Id:Date; b=dssvLfqPBbMQ0CNO07OVTWXUIbTrxsvvW2xms0yFpbvsovc8W1EmmSRFg9tklcuRCcF5GlTQTCib2kjZWG3n8eJs2QRYg1xNV+uCo71syerO8tLEpfaqyBf3AuzMTLiOeaa11Tw5dPuWGwMfArsG7/9HE533/U/gNDzsQi5fsrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGwawCps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGwawCps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752294593;
	bh=l4FrzN7PQ/Jihq0eyEb0xsebnK6R5SJ1v4FXZCTy8z4=;
	h=To:Subject:From:Date:From;
	b=cGwawCpssF7yipxTWd8rOhItxuRRWi7zLBukgDXz+WJblbilZ3I+BaRfYfTkae3Fw
	 g7IY5lzAsKLWDSg5Q/toDhC/vMZPXtyZHTi4x9Qj03KVo6pyE1DPiXpEvTclHADAiB
	 X8ZKIjlXrmqNRwxpxFdHkprAlu7LtogSSPUuPaYUWUngPKNu9tUTN1KxrySfFd6t79
	 TABiNeZgLhxV38oRcpqeR//pUbZWxUVPxtf9aKaYtsEYXSIhqa/44QDkP1o2uVW7Ep
	 Mkj0EibxCzvWwG/agF6fkeiyZ8r23BUHTPsAlVRsLzxYtlqtXLwtmy3vKfe4eQXclu
	 QEnABiL09T2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F2C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229459357.7078.13148667335499861723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9521b7043f0403715f8a54310d18dd3e6ec1f361fcd320b45dabcc8e1488796
Date: Sat, 12 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752294593
