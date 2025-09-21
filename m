Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E82AF1B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758419994; cv=none; b=Une3vWSzfB95ax6MujUDdBe6P1hdOhDITw55NGowT78ea3c/W/e1ARb5eGLDV2VANkbdTx26LYFHxTCSsxfDxAIsVXdP651TE3jQDZKI5SS1KtZfG9ZXZXMsmUWXLRbqadZEIZ8f4criil9/nUOkYauEGKdihjuyO6k1riELoII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758419994; c=relaxed/simple;
	bh=zagaC4G2JZ2Bbqz1bgkfFP1RAXsL+nniwpuWv5+TxVA=;
	h=To:Subject:From:Message-Id:Date; b=eiFm0s0oLzA3amBK8e1nVj2Q4gUK+3ivthF6tWMjhwV1hgn4Ym6N1MlHPGdFG0G26+qqvTcXASlL+cDc1+FYeF7+wyPcrNTQLBWEeWXsfnsQqS5lxiHa8ULpGkCDuQbTiwGhUjMJt78560HLVQ4sZbLZP74AsVbOQ/W9BNsclW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4dJ2Mf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4dJ2Mf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE61C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758419993;
	bh=zagaC4G2JZ2Bbqz1bgkfFP1RAXsL+nniwpuWv5+TxVA=;
	h=To:Subject:From:Date:From;
	b=h4dJ2Mf0gHM2IJOSB3HsKV+O0X29Qh4r667DMnmz3nGlcMgy93xd55iMKzkn6Xl6e
	 r4suMnw2sM2dspiTEj7c8g1VRrsiMl+05QjKBpRBTVmwuK54k3rw7EySejFhOoglF6
	 28dnaBpkE4l45OVxYj15++rKeKmx0u8FeFGcGLlp2QcRF13OBtyBOow4BTqsM6X91e
	 +lWZ3Y8XgqRuEvY5qPALjJfLQezQv+eOc5IWp/GL3bC9QjfS8aRRPvcVbqf3psG2zp
	 bBUIix3BECMstRdh6a5qEkZbEjxx3E5cBss8CnTPlD/almXxnOrps8jKAFMbV6evS6
	 K59Ioz8dS2ESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A6CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841999358.29414.16137856495460206183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f742c8ca79a5cf43896a30e920472e27c2fd1b0e04a14e59ec1748fdacec56c3
Date: Sun, 21 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758419993
