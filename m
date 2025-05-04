Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5066DA32
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746379196; cv=none; b=XuoTUIxVCo20vIXDc56HcmytxlrZDCyF3OLWmi8ZBt/QGrpvtG72W2KpjBThYLgXQw/JYZofD7jyDDLjuTzuBOKwCweNZcY4XOEYR+6vQXEbpga1hjrecMWMaM20xWJ2xESCqNJL9dkGOrBluozh92Okeh1QLwR2GKt2SSGSxzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746379196; c=relaxed/simple;
	bh=IVFXmwZ8AlYvE2FCqCMgUgAyWkZFhasl4Nwvu1z7GR8=;
	h=To:Subject:From:Message-Id:Date; b=fzhZBRbbw0iBiFgei6OL/POlWZ2K7ksr/gZejwm2LWgBMbxUTwcUX6ifLSciYxs2bKTxN0phdGDv/n3YQWoMSPjyIX+TWck8TTt3cFEffyFCTNo3TfxY/dT1x4SBBzYvVAtFi1HlWjtGW7uFKWEos9cfbG3EIzm6ZrnlLhAA7wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/o4HCsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/o4HCsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640CC4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746379193;
	bh=IVFXmwZ8AlYvE2FCqCMgUgAyWkZFhasl4Nwvu1z7GR8=;
	h=To:Subject:From:Date:From;
	b=F/o4HCscuO/jwgCEemsu42VmfbMUg9w7rTChJyouKCBNb0qe6c7YIY2yCnf+EdQdd
	 5dTjdKBCxfBXTjzbnXVuNWEroYT89hTDLUw7MV1oA3/q1M9JnjNSUnSc4eoefOH/rl
	 xJ8gOTon1EYCPnx2xFIT8W/l9DzyiMdJYfKVFnkrWEhT7ZTPFdU6Is0Ph4YBRHPt/5
	 gYDWFzHxnOtZ0qph0n/3P442GgdossPFZseOolY400b2wFdNULGfvgzfqM5wI1e6qz
	 GrI1e4zTZweHwuXMfmTGbmObfi592ozvGi5/sxgTDnHsxRNPh2Y3+Blo3An20OA5sc
	 u204AlQTYtueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B0C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637919357.19869.8650251962213525369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228af6547d0167b122f2e2d2a0d24d3f9272da73f95f95293a48460fa3d9d14f
Date: Sun, 04 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746379193
