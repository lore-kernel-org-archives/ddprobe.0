Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD736CE0E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774732494; cv=none; b=N/rduvzO6ePnGiGZy9PC1yQnanAJDmBg9uiMfyYpKdBwf7+JZ/q/hq3lb11pErJ4hRtQkd/QQCFZfYvP4Iy8FbKpAoMUpHfu8/Ve6XlVkiCNvDHvzJO0/dYnjZ7yBNxMOcytXJDNCq+I+xWODmeipDfuw4l6U3x7ETU6mVmR1/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774732494; c=relaxed/simple;
	bh=HlPxK8Ra2PcriWrCuMB8BPRewmEis1l/kPZi/X7745s=;
	h=To:Subject:From:Message-Id:Date; b=TH0sDr4YpLB9KoYWiYK26ppe0WyjG/FcP7pCzFpz2xyD9KoJ/RfedeynSMUlKaGeCnMpR42nqsJhwIUEraAA59x3ZUQTIIy3Npge3MwXMDRJtFx59hIsUnVDrjjvPi0OYj0u+Sq31vjnOs11LF6mxQSWqAsDsNEbCwzSfDHUqBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTWgS18W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTWgS18W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427AC19424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774732493;
	bh=HlPxK8Ra2PcriWrCuMB8BPRewmEis1l/kPZi/X7745s=;
	h=To:Subject:From:Date:From;
	b=WTWgS18Wv/Hl8winTJtlCTWZLPrTBP+WkvayowcH+qyQGE+hT2cmIJXqhTbe54QlF
	 y9/fncLYEz7a9lri0T2YPwVWW7Bl1coYSfSGy0SWVQD2kxj9O4PiW61sq8NXpF8/VN
	 /OxYpReTLBU7ZxDPZ+qtlOeQ+6SCgh8U0zckQE27/UXzvwI6lAOcvZyVhx3mfLNX/1
	 Gr2DpgnRF3LwNVwVZrCOFL7adX1WpuW6jgvz/EOOi9Ios8U1j7NJHFw10YLdsRFqN2
	 FGkpcCJBc8jlFO+23/w0n+HLWiDuYktsRcyccNfhy6W33XD+nLyjc6+TCKnG3H0lt3
	 +msEvJjU56Hjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154A10D1484
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473249358.2832.4223715086232066145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b002f38b0173e6457a44ddd0d181b1c6ca68b7a88832e12b39dd3c9fbd488fa6
Date: Sat, 28 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774732493
