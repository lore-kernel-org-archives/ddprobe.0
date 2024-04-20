Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB1205E31
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713596423; cv=none; b=bQEgSGV/3zIl9hG/A4xgjzyKDnTWvXFH99/0Zjr3G8N7nyIDLJkMnDViuZU0PUlr+5kA01MOn+88A2d6NZZkUILg1/PT1hgiSxIkajMj+ay/X0v2zUlnTeaniyBBLeRfJhGFJTysmPxSzRifgQS960zG9Og/qU0vZRoeU/BGlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713596423; c=relaxed/simple;
	bh=FdextmAdXmi+cG4b40B/sH0bJOXDPbVm/7wqB2+nuSI=;
	h=To:Subject:From:Message-Id:Date; b=NopYmjAlQAzrDUqBcqWtvMSwCkuenr5hxXyqpLA/2g/DV8pxeABOoTTZ9J4qD5mLLQ/6YIZUmTDy3gl8T7m5thRRqh3A87r7X2m+jkvC86nuFMYwMDAgO6FrYClY4bFQP/KJw6f0C6efpWKAcppRXoz3JOFXq5XWNNOvxxeiC78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJuubb+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJuubb+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8727C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713596422;
	bh=FdextmAdXmi+cG4b40B/sH0bJOXDPbVm/7wqB2+nuSI=;
	h=To:Subject:From:Date:From;
	b=QJuubb+UT8MT1CMvA9uS8zHHA0M35SQ/peqjXa6VhOVEvLhgv4w1QL2J2117UI/tB
	 0piPnRGG//uBkL3s6jImHPuYSu4lNTI+xtGGaG2bh6EbpTTleR3nIQNKc9vqqBUO7W
	 jEY12cm9tYMNK2Z4PCfCBPtnHLArIB+ZegrSGFGxi0EB5SzETn4QemlLvs2KnXwNGd
	 xHn1ivCoHZmRDtPaUV8jB88PMmJW2fcsJRmd0xScC9bQ/k8vPJY0BObOQKZIP8q2e2
	 GGQv8h0QZbaZRU0CFzQHkNrsa1pWuRT96w8pSylmAXAw9jKU+hesOf1sBVz4WCubS0
	 qxrzXAtBoe4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C509DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359642277.31018.5131684516023883149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af65fd594c9738209ec8be216a6319118ee17cb28042c5bbba881989e63879d8
Date: Sat, 20 Apr 2024 07:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713596422
