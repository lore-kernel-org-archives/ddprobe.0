Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113762E63C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766712234; cv=none; b=HWDziYLmNxCERC1Sb4y+l6zkwmFTd6YeipNDQrQYon8tWCr6TsxR3DYm33xfdDCnLVUGsWbYz6/nIlvLrNbbkPjp8rRitvZMauzx5UPgiy/umZ+nW9wcSePJzFbOhxF756AXEYUdqTDAJgu5ndWzCgZNM+JF2D/hj2A/NjvZ+EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766712234; c=relaxed/simple;
	bh=42vCmh7C7ZSuG/PG9gyPtqGTl9SZiWVGLR2px0EqamU=;
	h=To:Subject:From:Message-Id:Date; b=gApfpwjs33xFfTuYBbBqknW4dyxZg0iGRkKz5hUA5EbKfn/LzWpydaStOPOgjf4KW5Kl5YqJ3bZ38saL3xFOiNehoWaOuiy5TZ/Pq/YrGMEH4vz6fagqfytp6ArWGW9/YvmpkddvyhxuuTvcjII2oDLQttNOstzVN8rdwJfSYXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVVDEh3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVVDEh3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB29BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766712233;
	bh=42vCmh7C7ZSuG/PG9gyPtqGTl9SZiWVGLR2px0EqamU=;
	h=To:Subject:From:Date:From;
	b=nVVDEh3QI/byYLZJUONLBxipvkIUlcNbgYylLv9hapw20+HtGXiN3xgGwGwgJcYpk
	 vvJeISmSD1PbeBCDm3upukLA3NLz9zSauWCV7v5plOaZusHtFaz81ntcnCY4N/zjON
	 RpQj3N2DZ8qEc+43Vt1Mt3RHjxdVWZDz17Xx+mNkcEGBAZRrcCcmy7fZqzvbWt3GX1
	 ZNARAS0ac/6awKoNgZEcU9YdbKyoHXLtkhoS0y1V2l1yNEb3o4CSr9AiT0BtuisYsM
	 95wSUUqfvErLV7v72dj/V5br+/mmgSOs/B5A4KdtwQ89gzqz65bAVpSbzilGSMth1M
	 Rj3oMZ/28+YeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94721E7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671223358.9699.13686271117097974499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778befa2e73b3c96ea494137a576a6865a062da5bce27797a10ee56f16fcacde
Date: Fri, 26 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766712233
