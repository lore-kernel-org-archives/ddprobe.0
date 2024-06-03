Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17516135A46
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717437923; cv=none; b=NoLmm9Pf37D3Q7yVwMf3qCsEIAIUdIn7tOSjEjccx1JGwOl4mEG0pmtN55EGuflslGrVbXT+DTY1SbhdAi6Icis1I2+3Z0yo7y2/4LlqXoUmAy35yVRgH+abozI7mWyUoq95bgw3mffs3u/C3lts3pFkrJyGP76sa1+yHDRGBws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717437923; c=relaxed/simple;
	bh=ar9ZetHXBaElgcE725Y0/72XXUThP54xGiNu55/XPqs=;
	h=To:Subject:From:Message-Id:Date; b=LwMcVbHknXYdG1uYR5ql5Q2hiWjJeceo/qx9BaercWpMquF4NTDFPylpHQkT8PantJGPb3kN+0tX5RRFnTCWz4nyaTVNhQEhu1alRMmNheZrkaLAIiZl8pGGm6ggpFt8ROe7MYn61YZdAdeifiF/YJyfXRNnljo1W6XRrtE1g4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4ZYSk9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4ZYSk9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995FC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717437922;
	bh=ar9ZetHXBaElgcE725Y0/72XXUThP54xGiNu55/XPqs=;
	h=To:Subject:From:Date:From;
	b=C4ZYSk9pTJHFrDcphngp5PTNuHZEqRUDa7PILVHqsXF2Vdx+UW0YXXPOpSrghs0YF
	 oqVDPCA0qm7bNbgiJuMwW5UmW0Up1I2QaI2LMt08YHJPdTNts5qbgTTwkM1BPBMdyo
	 RGmUI4AemfEmZwTgWBl+NMLXMiCyVa7Xmfu/fXQIj0ybuMi1vSHYscv6B/w2yxwBgo
	 B7yT4BqXvsm7nQebRU0ELZ9RHpHmORA+FEJ2pFL9m9tqZnojKYj9upncvnOp0H01ZI
	 GOa9/+NuHScIpTn7ZItYtQbV2j9vXNHh6tzefG1CZC/7Y94i6g+tfkpdcWqJsrHiK8
	 0bfHW2+06QSeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46A5C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743792279.10825.4632913807782774183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56e85e48ec7502f576ddbf9bdc2c0c48a468c7842c45aca1f67cdbe6a0c5df7
Date: Mon, 03 Jun 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717437922
