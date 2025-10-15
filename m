Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3DF31CA54
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760542794; cv=none; b=gp4mCYGlYf8bjRtOjmIJwk0dyLJ6FUIHEG0BMQ5KLmPuUzh3MJNPez69RBHHWu8TZFufevhQLT5KpP8ZG20FZHuZnQ7vuEsdMZfqdQiZekTcwWBoxZ1Qvlgo/Q6YFsl+YJqD8rB2KmGhFWwkm7+V516qBCcDV7GFSYLrPzJPkAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760542794; c=relaxed/simple;
	bh=MCpSRIATTovtSuMmdcJuBGzPsapdc2oIsrEFeXHct2o=;
	h=To:Subject:From:Message-Id:Date; b=i9vkkay6/RX/olOjtZr95VQey4EOx4B3xQ1YpcfwcM5ZSlb5Z08GS0ABHXMizUr50Q3D4mrLYPyjEwwH4z5aU+4jLYAZfvjBCB5twNJQKrphXPo2eD/KwDms/MwGk/R3Ng6WrTKdc+ViPRbTy8s+Sbyj74af6QTHqs/+kK8CIpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeUdRK0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeUdRK0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA59C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760542793;
	bh=MCpSRIATTovtSuMmdcJuBGzPsapdc2oIsrEFeXHct2o=;
	h=To:Subject:From:Date:From;
	b=EeUdRK0P2XfnEJtQzshT9rxE5MJ06bLxZQ4ONk8ely6nbR29WDfCfnoUOG+JsfHCA
	 kXwO2Mhiqn8gRKcpZfQ6IALrUnaZQJ9iWAduX65ImSdTndkQg560mJgtJaot1NE78n
	 tEUIX7uQpNdKTne0ccYr6Gmc/DkVlhiAL+9vLrR5PqiHo8Rx32UnQ7x6+bQyWDvepM
	 NYj+ZN9jSoJuEqCYTSLkzUqDDCIV6bJzTjvEFxI3IKnggsjNF4f9Kb9tc5K9JJzjhu
	 DUZl0xmMOWr7gxpMkQMgYBv8BCWDy/WT8VmphiYJQMuEbECT6Bn83ti43rFcs9Yafr
	 HlcY1R2HsHB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F3CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054279357.29574.3523858959281001299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674578517bdc0b9eaeebe0acb1ce1ffb98af9a81b42fc5e718d171244381699d
Date: Wed, 15 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760542793
