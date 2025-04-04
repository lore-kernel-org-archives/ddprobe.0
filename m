Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495D93C38
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743783595; cv=none; b=umkjIY67Y954IhAbFVTdcLqkeJL0b08SFxkbh3mF2iBGwMbl0CXj2sAcNHKkIiHvIfDgLHvDAn9iG3wIN/LNM69PdCwUt4fiPRLPS5nnoUbBrTuGPsTycQSqxJEbqgmH5TbmVVBL3toT/GX2PsH+aSW6y55NsHe3S6oJQPKD16M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743783595; c=relaxed/simple;
	bh=x7EQ2cRwknmVXRoePxo0cPHrQaKOn7jZqKGTFwgo8BI=;
	h=To:Subject:From:Message-Id:Date; b=Okw38ZaEUFF8jh3GbUXeo7GIT75KiXsdGJTuvz3yMy7dcMRPEXSGO3LHYzJpIF/4IBKKt1SzP6y0nkBvPjAryUG0g1OskLQNBOgMGraPqsgkh6snVcdbmfK5DUOACC5gbagADy3WTXXwq1qL9HwR8mzHYRLwqquxXLv/bODIwmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU8VpG1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU8VpG1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE4EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743783593;
	bh=x7EQ2cRwknmVXRoePxo0cPHrQaKOn7jZqKGTFwgo8BI=;
	h=To:Subject:From:Date:From;
	b=YU8VpG1gicGlFa3DYYv89+O/g7OImP4lwD+KHJrLdBKvllJY0JTZUuL+guRkqV5jB
	 2AnFdC1+i7aHvP0fUB/3++RE+hXTRnlFw39Qg3/JtmSPmvdPrzMlziWSwfbZDV55bm
	 oJIk00Q2ieEDhm7hT1oXEbEVu59ZkHL8mDZY2CUOA4tTA9GnEMkAHrUGF1d6+E3hTA
	 qWavGwqxDsY0wKOKPBooGyA7TJvFphSEu4JrRnTSv0xLHLsiry+kpJIAZz62k977Qu
	 2LACbpAcUlNIQN3HtOzgn8lb0iYI4UxCdU68r2zx8Bp1/hArZ1cqQOANzsh7vYffgS
	 Iho1l5Sp5lqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378359361.30981.2805276979988504669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a58ca07c2dbe03fd2a61b0bd36b48f34b9c4f92a5156d0176bd17118dbe43dd
Date: Fri, 04 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743783593
