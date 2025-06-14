Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC6199237
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749914995; cv=none; b=aU1yILNU3ntHwdUUe+ASwL4XPcFUNgen72/1g+Fes5rTslkN14I1jV5+CsJHQRbEeT6lXOEDg2Dz/j6OeAaRMvSqBSnNnTA6SraV2MWjRKFbodtIDbm30gWE/M7o2d6LzCEASicVmqotUmxh19Bo0UA3YwkTNcsibnlHER00sKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749914995; c=relaxed/simple;
	bh=d2MwS2ZfHyG3PBbWG01SUQJiHB10DtOP17T0nKyG3b4=;
	h=To:Subject:From:Message-Id:Date; b=pOE8YK4jbFHhzdFzTr9YQY11KsMcQvLQXLWaCMzoWWMCGhLE++UkNF6M36GOHDRDlT5iDlNGcMneH+VTjFCtM39/ST6QoVJ620WDJH+CjlNtI9+3tRDp1Mx0y3BFxVsmOxMKBeIz66NJT03SLfbsyVSnOdWLZhVdT8usS4knALM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROYVyaU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROYVyaU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2683C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749914993;
	bh=d2MwS2ZfHyG3PBbWG01SUQJiHB10DtOP17T0nKyG3b4=;
	h=To:Subject:From:Date:From;
	b=ROYVyaU90+HjHMVmzhJbb+5HRGFXs4Gcbt9di25vcS5nQRJOHqeFk9Dw6NSM+A0cr
	 HZmVha60KwvnytGUW0YSZ7VY5u4baWH3C75Tdm1JKQyXeaVW/MEZb5jAfvfAeVi99S
	 em8rd/hLr4VSxYCcvxX/6qw6Nh8Djhh3ZEw5bqkJqyA5HH2aFwTiBZA8uXzyjpzrWs
	 S8jYLwlens4DiwWvLeGY4bC1qkB/hR4Kn245aJMWVVPQa3y438oulkMGL+En63utXD
	 93jlR1Eywd49sJags1s4M0fdrBuqF+6cNYzW9lD/AThyn7/91JGmxie11tA7fO1UJc
	 jc+s58kosEPYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991499358.29408.866867173450832286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72867350fbc1606bef43a0123eb0d41b3e7214698872a1f54e1ac4020b5e4e4d
Date: Sat, 14 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749914993
