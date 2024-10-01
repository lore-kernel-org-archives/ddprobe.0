Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CACA1922E8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727773554; cv=none; b=reQeBtXV1XgJaQ/kzr+3hniiS8Dp+837c0uZxoymTsLsZM2cQws8Exn2wdG69r7JHc6FM6yBWBQf9iYdszsdY72LlxccqBZ0v+Z2bbMkkVslmeR1V+4ZcOXxNO5DzoLTuQt+ie81KYf6YBnj9xFFkowtK96Y0dhRvGMttyAEABM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727773554; c=relaxed/simple;
	bh=CxFKQALd1A4p3FJzOsuQlt0F50mkCjaQ3+K+adZtb/g=;
	h=To:Subject:From:Message-Id:Date; b=B7yh3Ka/8EfZ6YhAsOH8yq60ylBoNpSq3MX10iE5OzlJ5cQvj3x6WA4UH9NBelmqQkXrHIwmbFzs6LuXNo5mvvzwSVM3y9v5bXvSzXYQWrIFuHOvY7rZwoE2eVBU0a04vQOXuA5Lv23/A9g05j0hlYRZ9X3sESZXOEOiEwDB+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9W6VI87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9W6VI87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B47C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727773553;
	bh=CxFKQALd1A4p3FJzOsuQlt0F50mkCjaQ3+K+adZtb/g=;
	h=To:Subject:From:Date:From;
	b=N9W6VI87rOgCJu02aCGowuLa8PZ2nntMWbm9V202I0yUrBYu062v19D3wowRleclk
	 3ovwINN0Iott9faVCsyDelep3c07EtcDvPCh3+UdDm6fIhT6GSIZeTnJFtq9YpgLJQ
	 wZ6AVZ9RCIkKD/eGHT2tX4b2J+nk6/gAS4FH1ETbFt0r4JTpfn57bKgbUZTD8b47Jc
	 KsfEz/xvqSEMLUfsZYUk5VRnNZbzC03jhJ7vA69nOHiXtggatN+r3r+0jygAvsQS+B
	 vv59XspuEmIUjtmS4TZHsNky5LtDb4+S9iUS48AgrNw/vOQBkpZ6qawVqjZAYbOJwf
	 pBE8a0FumnxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82F5CE7CE7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777355367.10448.11899019037042402964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59df25e5903e73ffe92298e0f5df2290b1a8b2be40c9480c2b6db8860e404a2d
Date: Tue, 01 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727773553
