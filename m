Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3561E42A9D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757816394; cv=none; b=jWLaO91vrvjczJUmo5YY/VPsDPFn+Hu+yhcmQswSFU+l9zZ7AG5+3WiAdBlfNF9iJihGnNW5PrLgisDzkU6vF/F2HA3V183euDxcqYiv2BmRQ8jLy7DQzjoL5WTgYzvMXV4vM9oHapoJUR1IcZgNsd+Bc74IfZc6Q8Y44DO3czk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757816394; c=relaxed/simple;
	bh=2k5ThQzM2hdvLZS/WY6uR/kt/ruJbfCTIkPaRrMppwE=;
	h=To:Subject:From:Message-Id:Date; b=TGYcjnqJrjtCpuTlB5PSep8DzgHjEksWS8WBxZFPrIk0kpNNtQpSajx4hpe5MU5b8vDtGonaZ0D8zG1IFTp25AJJ1QE02SXPVYdDlNqr0qEtGb2XjHPYB9wBXbUT26f4T8gHYb4D9VMQkHtCyP7Q04gZ9dSIX9WeR7e8214WYO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiC4kF2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiC4kF2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2750C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757816393;
	bh=2k5ThQzM2hdvLZS/WY6uR/kt/ruJbfCTIkPaRrMppwE=;
	h=To:Subject:From:Date:From;
	b=SiC4kF2BtHdpGfB+AKHcHECE6ul7Ef1BwXrd9FVeL+gYkm8k/6LL7WaguCvy0cIXM
	 4SrXFFOxFS/nL3x0gU0pIDN9NvBuKxpGR0nL4mYWunZqGiZhoOBlQxWt0mXjGIg+pB
	 sMrLMAI8Y4SUCoLvafxLIfpKawILygtHrzUGnKD7fp/Q93DzzVaElUG2hOQd2l6V+S
	 kEcp943oyGUjcfNoMnAX2/zcjQnI3yB4fkrgODf5P2aXEBVe5cVcbWlRokqIlD3ocX
	 MGT5otW4I978zx6QYUE31avkv6YKWDWfPxuqVMaEJcoa3lzXih1c9sTv4+52HJ92Ra
	 2OEUqRaX5+scw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CCCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781639357.26837.5238577788452425242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1340c81b3b6e391ff9df7e6e5714a1d99ad3f71976b293e49d98f940c3cd993
Date: Sun, 14 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757816393
