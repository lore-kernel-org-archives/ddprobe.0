Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C78E2E7F20
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786515034; cv=none; b=kuajxr1iKQNQZP0BIxqOVOgKgcyoZdhv8l5vyxl3N90YA9O5VzfMGk+YxixH+rKvauwBu1RPQAO3Fp65df//0HHyT/7PSx6m8PuAzGVpIA6RoFk479QmOu25vPO83itpTI7dbtLkuePOUp/J2WdBFA96x83tXrZJb5L8z/AAZ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786515034; c=relaxed/simple;
	bh=xw03CY9RtBXAnGv8pcfcrKMiU8+04jnHb/R3L3q0yr0=;
	h=To:Subject:From:Message-Id:Date; b=tOIo9nDk8IQiNF6sn3yThPVji8VfSmjRv87TBX9TdrRoGrVnugOykgDfEdl5mRJ5egNZw1qjzH55t4nrVMhd+ZR9aSoNP06IAGQGdUp5sDHEYdDxqd4qBLSxF6WKpBLsWjCoCX5TkQLDRUYTnTI+INi6mgSSiCTf/SCz9XwYR4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaaQ0f6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaaQ0f6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C837DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786515033;
	bh=xw03CY9RtBXAnGv8pcfcrKMiU8+04jnHb/R3L3q0yr0=;
	h=To:Subject:From:Date:From;
	b=YaaQ0f6m8LBTE4KV9EVnp4pK+5h/oA3/JeD68SYrUL6dnwaUjpYbnCcZBDUhz9h31
	 U7CP6bMOaL6uOCOb2CC3pJu8j8i+Cytd9LQQ4kOT/UM0U09v4URTWJrNgtbOSTYUB2
	 FPGR0vcov3xj8jDMQMbXfAUiskBNg0sXawQM+uOE/kMeZ5ibQsqumXzr8NRgiQClRM
	 4Hk6QFpGlpXfD4PCx8p7uCNADoQjkERAxDpPTFyB26yDKcIswsnrK/NfH6G8XWreRn
	 39V+kugQA4eSoZMTVNZmgaQ0gQvKPWmYWeW7/tbFm63NbMNRBarOU45tasv26sGwXE
	 SwYUOos+Vm06A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D62C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651503368.19252.12646855057421819980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686e3c416b95c2ba5620c6b794930da787d695c1075a47580d996c75e1d75a16
Date: Wed, 12 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786515033
