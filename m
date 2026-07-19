Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3135F2E5B02
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784450914; cv=none; b=bnzTDgAvc243w2X3ayQJbTTS52pDBKSFamUl4kfcfu54mXNLLuVwzjnuQfdo5Tt+mYONup0gmi1qCeyWCOy2XMKKuLKwmksCZZLHAGRfWq570txbXi6IjeJsAUs2GlzQ/17QwUf2ldATRLoXF2KWzvxpaW9gLPwWlNbFp+bJhxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784450914; c=relaxed/simple;
	bh=eYo16WKOqIr+LfxpWpAHDLBt8lCL+ebRyhoZ5FvkUu4=;
	h=To:Subject:From:Message-Id:Date; b=arBQyL3gULec1hbQ/qK4Gx+RG7HMU/hV6wDIX9RLT/OHEQh3mTg8sIYtHW7VNiuLbYKLa3x8e1SYH1Lqp0Gfru++N25iDSAcb4Cp9P9kiuZW765nszwW9qXHbgiRtQ7onU92JidbKbhjSR9egEsuTrsvSGwlPJXQ1EkDmVwmi6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYEHJNT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYEHJNT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99AEC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784450913;
	bh=eYo16WKOqIr+LfxpWpAHDLBt8lCL+ebRyhoZ5FvkUu4=;
	h=To:Subject:From:Date:From;
	b=BYEHJNT/8hcz9FTO3tvhlYTZ1DwIsrBCkXrj0fV0s2SA/y2EVEYzKrigq+FolLmaJ
	 xJ4L8ng2sdfd+A6+t9ngL+Y+Er11HgK5BXsv2q/bJCumbzgo1VQf4eHbjceCZfKeUA
	 g/H4u9yf7fUhDMHPcbBIscDfS2oIdRsmKxORBFAFELz2ZhKfX2iXa38ts468gyW5a/
	 VcWw5jJmgEV7M6WAmmRfbsLabKxzmu7WQGWbKF4Cq4hChcyTX2KYhJJ7/1p4S06k+w
	 +jtUpgnzHc5BYBTxh26kvT6pmTJpoPPwLhzq2KS0qWJdVELO5u46wHv+dwMH6s5ZhG
	 JTCsA7SPIVBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8588C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445091368.28537.17024975589045133823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6222057b5ae543759f97c637d95cc2b10460983c1f2e9d6dd77bc899179e6b
Date: Sun, 19 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784450913
