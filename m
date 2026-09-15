Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53081401486
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789500634; cv=none; b=DIBjeOP+4GPQB0kWNYwov3kGPLGoY9ANw/qQHqOjbdwlKPq8xKjvte26jvwsmXnH3g090XTPJwNOb8Zgg5nqTVTXgEODgRzmW7fOHu4aX4Er3NN026j8v44z5hBfY3VU38yRrLpJIrPZr5VOYmvmJEvmEo4ocMCwBCd/xCvHQDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789500634; c=relaxed/simple;
	bh=eiHiIsSLnR4rA9B+nXFec5woZbdw464Rye3+B9ZxH0I=;
	h=To:Subject:From:Message-Id:Date; b=YDOjj9xO+lnyBpDg0SdWBVwX/sW5NrRI9w+O5G9GO9T/KHYcEblGUAXWf9lZ1mQ2p7mUAFMjgE147Y3sTvKnJhpr6F1S2d5QMVJBg16m33VT5Sp3iJFQ/iocdNhJFwFSgwupcBtr2S7vwir7jI+SmMDjbKgnERSQTkByMl19MFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt7gRlYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt7gRlYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9E4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789500633;
	bh=eiHiIsSLnR4rA9B+nXFec5woZbdw464Rye3+B9ZxH0I=;
	h=To:Subject:From:Date:From;
	b=Yt7gRlYm3Ax5O0Rbuzo8t1C7vIO7AjBLgk63K5sVQC0d7d2uCqfUp46/+o221UMin
	 z2lRoARJX1C3gpm/HcID4jBcgynsqUWQIP6dqIto0PN6B6yhnMMwQVJxJWcnZZwyHI
	 UDtJYGlPRPosOp0HWJrx5USp448NLV/G15JaVXnmY+W8d/nncg6vf/SeWILEjNCOoT
	 WLSmr8tbLf7+XqOOAiLLiogafkyKxtL+Z7mXH8bqqoiDWcMKtaXZo7jZiHzLzDTU68
	 jD4OyEES1z4G0LX2/kvhpntSqUjOC+lIiWl84EvgbR6nrybuqGKPDtYiMogvI4ou1x
	 mOGJ+Ktbmih4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C4C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950063368.31327.6864093674997201260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c369d4ac2262a0dd611d4c7d112fca7df2c6960109f8e92900e8ff16cc49b4
Date: Tue, 15 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789500633
