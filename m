Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D292550CD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747027195; cv=none; b=i9p67KLZ9dKM3GXbV9o5FYfRKHDO9oMD7tUn0DcQ/Mr1CS7URbrZMCxxWPpEjA2G1R2ig+syv+is0iTB1D/5Lhb45jbeh+GZnfUzpAjQpXeWNCaCuZi7mRfbTpdQakoh4TEuhRvA3DzQKkDrVrt+863k0rXtyrZViUKyd7dYovs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747027195; c=relaxed/simple;
	bh=kxaopZfspmKFYknk67ywGit6dDZgoo03wLNWkYT53Ng=;
	h=To:Subject:From:Message-Id:Date; b=tzI5FxsmQsCxW2tdH2vWbrXgMz8OfbZERh8f9AyMVMBE4GSj5hPCHkXvLq5/5Qi1FMRY+9lQTx3r0FD+g066SmobKE7/c4a/ctIBBAvqhdtW3JlH9zSCgD0REPpfUu99p+GXzdC37d3I5NmMTwSZLZZEtFvO1JWY3r5eo3x/BG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBcX+nwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBcX+nwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747027193;
	bh=kxaopZfspmKFYknk67ywGit6dDZgoo03wLNWkYT53Ng=;
	h=To:Subject:From:Date:From;
	b=cBcX+nwOJKThlGJyznA2yg/LPVkgWyRNs/JeLxmAdHEN0rp50p5SAy7FJ4PxcT5/p
	 40WitgIPPdaZR0jpq2Dp5SMvmCx7snw/4NAlEpHhAUbjlIAkzJ7I2FWs5RzmaGsdTJ
	 /5aIMoF2fH7Z7FurHsR1fiOvSkCemufvy4VR5WP2tJxX1Rc2F13BG/q8OTDa4Z2ETZ
	 KBrV9Q+PldJRLBtcBWC4Mq0ThmOosLoTQqhdvxEWbKnkAKGE72n51dDQ+u/syvfXsB
	 dVj5aUGP+jxq0Yq5T2KAIAPsLXO9uEsY23bCg1k2+CZf5HoQm1igemZ73PXGPvbUya
	 u+MbPKcoiCT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C4C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702719357.15619.11665164052988269932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4173c57f9961429cf7803b2117609c78b4016b9a31eb33c78e3bfc76c3b1280f
Date: Mon, 12 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747027193
