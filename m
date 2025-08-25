Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3249B2EAB7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756135194; cv=none; b=mt3MZ/I5NDK3ty4UpJoZeqTIVnITUS+kOVQhRfust3AUclJOEcGrP/h374mXpIVAu7+t/lspau22pe/JeG6wT78qJWR97dzlB5pVqIZSkZE58m0KtKcXOIe10Sit4kCD9lS+Td9QX6mJhJNW5tluw9VAxFJPV9VmtGnp25dMhmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756135194; c=relaxed/simple;
	bh=/KL77B93jlezdROZx2sU1kYeFpz4NQ543LdDeGMlBIA=;
	h=To:Subject:From:Message-Id:Date; b=V7qLJszKtmK3l8weTg3jaNY8tfeUSnW8qseXjwz4pBhiTf/5CWMmwJTClg2sQm8MJysx/4pci02/zQ6YO2ysiPCpU/FdiIJrpVq68ouYFT26rXXdi3MLa6kJnt6q8sPYXZN0L+8c7AXnzn3kjtWziCsoeO0//jYmFUnuPYbhq1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCEWtib+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCEWtib+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2086C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756135193;
	bh=/KL77B93jlezdROZx2sU1kYeFpz4NQ543LdDeGMlBIA=;
	h=To:Subject:From:Date:From;
	b=MCEWtib+JL9FtoLMVHy5w3+ng6A8S8jf2TyBsnejQMNzAkXgx8Ab1xKWAYEVDknJr
	 9vGcW9PaMnSan7iA1df3ZK6xBPKddicSDzTB2GkoXUK+se4NYpm9b5SdzP6SZSq7j1
	 m6TxbP/sMT2zo+i7qGfbYEbEKQs7u5/XT7mTx+Sh9G4Q3fdhT9Qt38gkCaVQvxKwEz
	 zo89SBBULdidLC25NxIEwotulBSWvdFOwk1vnW6UYz9IoNWtWVb3HSb8ZFzQ7Aijpg
	 z1MRMH+7fd0l3CK2FDcutr9NT+TnidpRuiYWDtj+DDcrQxBtCTqGQkEWMSQrqcLXSS
	 xSzPjgy7CrcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91043CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613519358.16442.4130350764160514697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dace7c9e912418fd4ecd979a621fb061ba1fb6dac03e281fe0373cdbb1dab2c0
Date: Mon, 25 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756135193
