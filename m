Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841841553B5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718147303; cv=none; b=FvG0PHGwyjO7HGjKMjgb8yyEsTzu9Rg8k+OdlcXDLeYnBK0rEVHukUYZDjSs4Xx/bhLUVXo3pTjHXv3f4Jq26mEPiR6c3AcUAW3MApKIC2INi0PXTPveEIiwy1DIeV7sQox1cbEvjgrBCLj54F6cNBQwrg9kclmfAWBYgbVVOxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718147303; c=relaxed/simple;
	bh=HlNq+cNcIXBOSNEa+jTJnEWL2QDr2DRXRzWJmudVRik=;
	h=To:Subject:From:Message-Id:Date; b=H2bTC3W5d7FaCfPQgwn/9epjRw4rsEr4Em0VnPWZjkqHgO6eOlseTGJCZXQNbSgtgP1hv0t6RT+eFedsrMUh9T4mGUBi1e2QWbA3sp6z2HWkl4qmnkvDKUTuiXDxdHmzuTbR6OjZZ9alOTCPQ5KT5SRo3p4CTJdE8F43USCgMuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLtO1W2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLtO1W2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18888C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718147303;
	bh=HlNq+cNcIXBOSNEa+jTJnEWL2QDr2DRXRzWJmudVRik=;
	h=To:Subject:From:Date:From;
	b=aLtO1W2e89E2UMiMTJtzD5TqDbJOJoPRaeGYY8VaxtNYr64kvcfi2p0Gwy3uxBVCi
	 79fBD84abrPFGIHL8kRvDLUPYUKIXtIIC8/D7eezll7wYgA6sQ6Ru/hh4diD+CTI8O
	 891Q+MNzTMYpTqxJibUK+VjrpjD1aZ3iG6QCb8FWTFDbstoZb8DKDJ1R4qIMSK7dtp
	 c5F6Oapepv8mVoPa1zENbP1kMaQCzh6HdxDT3+/byDMlF9vzswDNxzJaLcrqgFV/lH
	 oqHkB8agnFB6PmZcqAoX8c/Be0eqEdAe+0RYGBcSFrNHxMmUjMWmnp7eq3WDQ6Sxax
	 BjM/kqxOAHDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7388C27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 23:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814730293.25744.5543439332844813445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef10c15a9f61c7c513f0a6841ef86101b6ab7161b246b3486bc85fc2f9c45cb
Date: Tue, 11 Jun 2024 23:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718147302
