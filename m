Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37757EEA6
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754255394; cv=none; b=ZdQFLX6Ghfx6jtNg9Y3Bn53I7+YyreeQUOX5c2L5J/cpHk1pxf/LRriDFG0l3Xa1EnodkkVmo49hRtqZNz55cjtLNUFJ1XKkMWAE+dk2IWMrEaysdrvU3MOeXy4P2sPx/wWX4IvSZGi9DFIErpNBRtkVa0skfAJQgrc/4iyb9kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754255394; c=relaxed/simple;
	bh=pXJGOuj2/BKtFvhWTC1xjjZbpy5AsNG43fBOGpp7VFw=;
	h=To:Subject:From:Message-Id:Date; b=rioL40Yv6dUWzcToW668CUV1PNa4M+RYSbtmy8yoV8VncSIYG5rIRMmXn/oCrsuGClJd+0txZnqqwP2VAxzWGpuqwvcFVgAOmoVG9mXhnLDQLISVslS6EnriRm2vBfentTOU6Lohc5876YMlKwj6BZv+WculFJO4m3ON9SBDFis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukJ1M1uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukJ1M1uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9184C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754255393;
	bh=pXJGOuj2/BKtFvhWTC1xjjZbpy5AsNG43fBOGpp7VFw=;
	h=To:Subject:From:Date:From;
	b=ukJ1M1uhhPzkD8o+xRQkP76MX0FrphcC3aFC/ApLmYiccI8WUkDNRhxy9D2Nfzjso
	 AH8LE5IabKotpaIbzX4UaclR+GvMLVEPQfAfg6JPKJFkE8+HddvC+hJ1b8UGXpnVrA
	 Gm6niK2goaaM5DdTmLLOi6wOHK1/pDSXxJ8j81HWHn7H4Spn/TLhK5mZdEpfw3ZJ4b
	 A08vXOHbam9ty5ylTphkOl4lwMPaAeROSMqtnWX3OPQu9//iaq6l7J1Z9eGAmyW2YS
	 CwGQs+zIwc4cFm71S5ADBcqkDhKk4/OY0f8vjJp+p9FS79HLLiayWXNYqV8j4m48om
	 +58ISIFrwH2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621CC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425539358.5425.4011070017414770889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0290fe30f5e9f8b2ffa8199b716526ba88c46ece5b9baf2ff45757b50f800157
Date: Sun, 03 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754255393
