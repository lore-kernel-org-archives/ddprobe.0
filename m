Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EB71339A4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772880294; cv=none; b=Oi69QHe8E+O68SbaF63R+BIi30bww/4QYqeiLLRwZx6I/PGb6438o52hWJVBwj40C9poEpYOtPS69rv0v7idR56W1HrlNQBtdPlFhRx+cAzsfqW9iqAYLx87qKI83aIlqECEFrM7msA5AeGwJAQN2KV7ELs3mmYuOy1rNQ0amsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772880294; c=relaxed/simple;
	bh=Sg/8GXRMOEVY9I9y33wNh/UMUuOTB69KQMUzjULVSAY=;
	h=To:Subject:From:Message-Id:Date; b=KAzsxG6E/EcnGlmM0iqw8y1OKUYKNkT511flTvmYGhC7MuciYVpCEXxNZDwgWkPltTZ6awmv015fhSpPjUiAEJVfQHSA0ajXhBCi8IO5NOcDfpbVn4Sr2FMSG0BPZaRfuOwdOCn9hnzkSJrmOwyGNr2NK/Yv2FeUuI9B9WJkgjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkbTOSiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkbTOSiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF623C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772880293;
	bh=Sg/8GXRMOEVY9I9y33wNh/UMUuOTB69KQMUzjULVSAY=;
	h=To:Subject:From:Date:From;
	b=fkbTOSiFPOFg2U1OWNkO8vEjFd8gQazfazRH0suDwG/vlIrKuK1NYHHvjMcLr1cg7
	 Ttw8oO2WEI4tUCvU2c++xEhNz8Qihnx5tN/o/JcnlH9CwLkmh4GXXmKxpuUy1FLGGR
	 MHKc052FCqT9WCepr9FT9tRpZb7pW6ocWHlcS80HvSfC89CP7w6Bz3ig1FgWpnlear
	 wY5CiEAi24aV49TzvNX5ykmgVmApV6075IthFT7esvdh4umGs4JIK8qcd0FsvMz3Yp
	 BFOc9rS3FvqGMk2yHNOM/dKB5RCLAFapzS08xZ65sspCmxD4CKonKCI60V0qNnG2ms
	 c4DgUoNd1wNFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B387FC9EF5
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288029360.14887.15102999015399007746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61220fadf3082dfc814b7e11f2709e922cfa5d3a39c81ad0a25e0a978215518c
Date: Sat, 07 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772880293
