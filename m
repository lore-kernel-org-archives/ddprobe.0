Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3B2322C88
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788130234; cv=none; b=YLY+KwuoUcrMDX9bAzj9DpN3N/fpA1HrwyuGoro/fFOm8+FrwbGncKEKUbYui2J6Zk60LUDqc+szyuPNb3ZWAIa2ovQ/Zvih4r1PDcPzfxC4d1f+HExPhSO+3/YrUyMhZiztK9mkrSC/lNNwam0426+YzQPmmMTq5pnBJNJsv48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788130234; c=relaxed/simple;
	bh=Mlan8E0xpYtBnFaTr793CjGKaYVh3W2yRfqYoLHuqmc=;
	h=To:Subject:From:Message-Id:Date; b=gQVp/CTjdG1vZXK32MrTTTyobRu8ls3c31sEFGU8Jr5Pl3+56LWjJnnLzlm4w0JgvchEvubzAD4SS56jcJwngcIVqAR0VAwSqvz20nRv67nTlvG26k9PWFd3mghF8yUGUyI+1F11e/+bFGERHA1DgwI/W4Hj1oueHT+OMN3fZIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7I6URz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7I6URz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5FDC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788130233;
	bh=Mlan8E0xpYtBnFaTr793CjGKaYVh3W2yRfqYoLHuqmc=;
	h=To:Subject:From:Date:From;
	b=E7I6URz1WUUcIvAPNdXtyMoz9d49xOOJJUhQgJ18uZ1YcYZUsSxBUM7PmBRBDJo7o
	 WjSlCzeL0XMtdIdMEAx2Qiq3BZZh0XkoSKMIPi6FjoJWx22MTYMvfyf4pR4dLBTbzF
	 1mfOWCHk62H5l0BbO++IasXl2zdeE9RCMeR9jCVAIV61j9fGg92yHf16VZCHtCKeAS
	 OizY13AsX73+VNMkmjrUph3oBehYeHnLYDQDCGVr0sybOxPpE6OI1FLsGoBTpD/p5e
	 3nnoJOOjsTOcSXdEHm+vzq/xq2dI2QEAMels2FE0TsjwfsRa50BMLearGfo8BpOrbT
	 tAEXKsORomRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB518C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813023369.10510.17820480902517162964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ebea513266eb489b1453260f4da96bc6ce5f839386899e3137432534d095fb
Date: Sun, 30 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788130233
