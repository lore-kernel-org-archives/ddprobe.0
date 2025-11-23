Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345F3EEAB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763941914; cv=none; b=K68IL8px6Jn5IevH75YCWoXQybOFid9pXFUU5IRQ/5rnagi+PgPae5wBoFL726owLIGhWU+YFef5Ltk+AlTcteN9+5Q1tdiIyR1gCbtNcp6YkQm0dM1USgrFuuoonk+NlVbajlinNteoKGhbH6VSYvtKPTDG/vmS0oHR4Ib15B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763941914; c=relaxed/simple;
	bh=287GwfbEcFg1cpleyXrMtVEVDkgOUYGnolqdTtAxKPE=;
	h=To:Subject:From:Message-Id:Date; b=g50LLFIwrKmuJ5rgrKKTbtahRpt+Ys6h6P2d315vk5qSgLgj7imHdn0HLhVCXKfvo6p50G0Sqs4MilQDmlko6Jlz2ewYYJTiEGJ5SrIWpJ54/HW0ru0bH4Vz8ZhPdNsVgkEyZ74hvwT/yePYoE3pw1a+QFK1D1SZf2GQaXQay1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYJ39d0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYJ39d0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3ABC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763941913;
	bh=287GwfbEcFg1cpleyXrMtVEVDkgOUYGnolqdTtAxKPE=;
	h=To:Subject:From:Date:From;
	b=nYJ39d0MGJwE/gJDmAEsg7gdDGSXv3d8gJUcJbe/iUpKLy2u8kz2f5JQKPLs1Znmd
	 5oVn3+Q5//eARIR8JM9L0bNdd76eWZIWdvof+1xokufCX4pdpaY6Lh2Foq+tvSGvWE
	 6DdTkTsXL+cVXAFG4gMqPkzS5IATFgnFZ4jxL8kMXjPIOZrcLuFj0pQ7IZtrgGtmsS
	 RQRxw5kUG0ZO1dgAfv+0EswPsBDPbxYWb6e82DqM73lko6BZpCoBpTpvdWOQfx0xiS
	 c8gXG42yRs0ZDw9sraYXYG3nYW8fUcuy1iWJU5dzf7982K33xlUBmqlu1zt5bslXNr
	 NGauD8ZA3JlKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989D0CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394191360.19594.7640099666813155799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9674370039832a4c693eea952472ccf6c31bfcb0cee29b0c4bd8c9a93e5545ac
Date: Sun, 23 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763941913
