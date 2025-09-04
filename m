Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7A2405E1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756999794; cv=none; b=DOJD5FaOBHNycTBAWonXM5XwGlWdW5sZ5BAS9ivY7AG/1xskMmDywcYikbaSsH+IUXD6XYjhHyHhwX2JsPTRmneiQDmT4dedRWW+ERqCuwzuxUx8SWrpg3VNFDNXWcDtbAK1vwZKeu23yF+PrKP873zHWAwoL1Zvge1XC1BOdNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756999794; c=relaxed/simple;
	bh=YB+WtIuFqjhnLHSoT9BttXefL6IEXn0aBAVFQAiEeQ0=;
	h=To:Subject:From:Message-Id:Date; b=GdapxmAJ6uCq7X9ZM8h3NPKnw3BWXxcHDHmLaLIxT98dcPmJxmbX32gGLcZHudi1bQ646f0WY3iSM3oqmEMGNOwiY390tlSdPliGrW8prPH6hLRIlBageU6+cTSgIS4tKBlqHFge+TgPNhBHtcregaW0RRHhqyAlJPmKFYtC1hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgbpFh/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgbpFh/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756999793;
	bh=YB+WtIuFqjhnLHSoT9BttXefL6IEXn0aBAVFQAiEeQ0=;
	h=To:Subject:From:Date:From;
	b=UgbpFh/D7RYj8FBSS3Y+CWt0zPsLT/QZU8BdCKmvHin2NzbcOT9Xwx6HnBHVQdO7y
	 tlbkS5nyIRP+DLjmQsYMr0bw/YPcO1f3dkIfLbuNMJMMpMi5RIoBLTQ1DDPq8q67Xo
	 dl8q/3IGY+CbLAleW+CtJTo1qTQKR6Y4+cMBYuHNlPvE4UQR25IqZRF/rKik6F5R1r
	 vI4DvSDPb8F6hPn4+m4UGr64Spascpf2Rf2csdXPXtfquLK4SQz4YC7UzquBHtSAt2
	 aQbl3aQhOl+EW2dJ8nBCiJysn43TYYTzbIt2gDH97B1OdQ+68DnK1XCW/A7G1Z+6tm
	 MJ8rdShGd/W+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C48CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699979358.30276.18272496556462762968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfc23ad2486df043859ffd12e651cae27c4e2ca267d26c7b8e3ac4c29c1e8b6
Date: Thu, 04 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756999793
