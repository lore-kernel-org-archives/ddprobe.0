Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA2D301703
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762208994; cv=none; b=Ek3VJSJ7gdZSQaf5moX6CQ58eDiT8fK7787b2EskB1zSt/iN1hcU/VNHzuS0wXBdFO8sd5RzUJkr+xU3DtLiN97uTioFmXcixo2yEqL+iTkCXxf31rF7TvJzjT108AClcGchPLwsbQC+pMK1elnTxKeOy2MongMKtHXCJyo3s1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762208994; c=relaxed/simple;
	bh=2UHNThLDFDk51H8HjtgZ5J+sfc8MBFp+vkkh3NKTe4w=;
	h=To:Subject:From:Message-Id:Date; b=LofWTVkV0QjuNUEI8HsNqtZaD6jy3VqANgQtRZGR6+g90Sub2Q3QFEPSJnLXFnTNTk0JoZprExC05tX4CZmpchAv/VdrWLu7hfj8EZEaTWD3Xyu3NVoyzr7zCJnGLEuImGI9DKKv9AWaf/1G+uGXQ7nHqi29ycPftTDdCdf8Ds8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsDqdUv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsDqdUv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA9C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762208993;
	bh=2UHNThLDFDk51H8HjtgZ5J+sfc8MBFp+vkkh3NKTe4w=;
	h=To:Subject:From:Date:From;
	b=QsDqdUv9mwjfxvYya1eK+lFrCGXr9uWmFsUFpvRHU4emb2X9yhQnaL2edYjkB35aZ
	 LKgxgaEOmhhzKvF485zvx6mIFqiT9llUj+tFF1l9MmBJ1urRSuTiV672GyLUivBVpw
	 umFYANK1u2bgtnIrlrEJ9i1L2LjSeIF9QqdfXC80jL3vdYzr3JOyK2YQ5/Ch7HzUO8
	 Eu3pggI0ggY8de/G1f50FcifilV0EGJp6GtDFVLOlj6bu9ylh6iG/XUEwP76XDhQ7M
	 6wmyNC9RXHTHLJ8FUPSC/b4CLY5zE0Eq+w9Rk2ISRtwR0XoL9uT3nAw4akG3d5o5Fe
	 pKpkS/DFU12Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220899358.5328.11581999985788277784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a35406ba12e12cec12e7f0b7913e15dd08215af29067999c7a2ce508567a3c7
Date: Mon, 03 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762208993
