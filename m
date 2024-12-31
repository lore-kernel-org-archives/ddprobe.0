Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37018871D
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735681554; cv=none; b=oSIVPBK2S8kzmtz/WSmAkdeOaGhixOKD/3pMPOG+v/3H9xSrmf1JWm6PgHofxKW3n7q+f5HNiL+XjK1fT/vx3xAdLORmgfjhNMo2UARA/Gq2RY/pB/b+ml24KSnGEKxXIdLOnrWUdpBvnM+Sv1uuNdPka5XqmD07pEk/ewuijfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735681554; c=relaxed/simple;
	bh=d0U1xE0tjbknYptU0DONrb8ndoFo40DO9g6l0KwnIIM=;
	h=To:Subject:From:Message-Id:Date; b=lDihSS1HeosGh666jNj/iKZlgnp+0KCeELY0yoKcE6+wGnYjnjQm3hv0EthZ9JSCIczhdkEPgBdRSf6yBtuj/ji2JwoRgEmMK8LLQ9JV3TT2iiaUMvH+85pe4xhnOKu/39pTc4WxyN0qfPdSUgQ9ll8UlG0LZc4bqtVGitGLWa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Lq1IXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Lq1IXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C8C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735681553;
	bh=d0U1xE0tjbknYptU0DONrb8ndoFo40DO9g6l0KwnIIM=;
	h=To:Subject:From:Date:From;
	b=J7Lq1IXHPej3nArx4HnjAUndL4oin2VNxhZHF6F3hKLfLogzZVkuTw1Jn1wUVtD/L
	 NAhbfYAnhxTOCExLLyh4b/cNpDKZYQ5MVaDJJtFtWaeIEfccsxHrWpev7AQGJuI/WY
	 Ktd9qrkE1WT5Zwy1aTw/AErsfyF/c7byzlbmfSAfg5U+3Y51rYpS7KQ8OhJE6Qhnrr
	 dFDib2ojXTRQjaAapnzhH9Byrs2/pGiUy93eCTCzc30Tg/I+EewOOy9uficHBurrio
	 hqhthC5otQGWKD3q1vd/JxiLS0h0Nj6ejvS5lM3KWoxjkZiBmNKJeqqwGC5jRVQwlG
	 Zv495mn8hEGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92220E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568155357.24723.108268222067457015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70751d736ab615a9bd7c8377a82ec9c71bde4fe7562088d6f3ab5c982a8ac935
Date: Tue, 31 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735681553
