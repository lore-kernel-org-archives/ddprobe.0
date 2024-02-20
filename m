Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F44358200
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708397897; cv=none; b=Z8tnQ8txK/ij0Kj40mWfBS04UxZxl8k62HPqHxY/u/uD/P48iG6LDxMhXjLE7ZqzLixm70yr/Uy7IRRYkrhaWEw5d+n1yq7eTOcMAqKbUOT0bQshJmLnM83NfvjeEtSY9c3oLr3g3sB3VlbHeyqyYfkMRQ5kduxbEn6w1Yk37wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708397897; c=relaxed/simple;
	bh=aVpfV9oLkirTZWxJUayxoCYqb4cYDfp1RQDIk0X42F8=;
	h=To:Subject:From:Message-Id:Date; b=E44nBsUF1Wh2QbUEVpn0SbrbK0GNBViml5fiS7wn61OSAAjiRlCfWYbB0WKRgPoaiWlmBI08yCz28A/OaCAThK5rW03nN0x0qBBUJc9toFjxDXGFeJXbsQq2VHYos0BuF2Tp/cKDO6vKXmvP9plW1C5eGeqyHXMsDoXyz/pSf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4rpWvYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4rpWvYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80409C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708397896;
	bh=aVpfV9oLkirTZWxJUayxoCYqb4cYDfp1RQDIk0X42F8=;
	h=To:Subject:From:Date:From;
	b=n4rpWvYpm/hGuAdKBMpvGflU+39Y+6y/1VR9V/bJzW0tTgPzkNggf8NRSNo6HxRAG
	 vQzwaB5l1itTowBI0vdsPRgf579/OfYFiLmTnVr9L+xJCLQDpH9V86aR5X3675UWrv
	 rDvhBRtGJxynq8u1tBg9WHDlL9Ev21gpL16pjM26cAaPZitxaxneXgFT9ZnqghRD0e
	 hGb8YY0DyryFL2DBLuFP3Yhzg4N2OdiDpELoE9faobzoOh+KxfO8vgY5ZFND3oDfIX
	 WTX5Rgrr1nPra0dtYevqrwvluhyu0nnOH6LQeXE7D0kGa7rdfouQbqylAi7ULIwgGa
	 HfuPYwpjuQCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62304C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839789638.5365.6527939054286621034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f41408f42a07f66452991ab9846ca9413bb3d0d49f7d6ed0633c30be3b4af53
Date: Tue, 20 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708397896
