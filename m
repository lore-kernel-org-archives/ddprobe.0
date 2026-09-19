Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8C0547041
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789852834; cv=none; b=m1TKX1EqU/JaCtDJI6Dx1h6vnmDmgy0evqZXzcln0D9KIRCmMaPQV5Q1H0EEo7ht7FwoSErcrxa0CjrFhWieP3ZBisrF2wP9OoiTqd/lz8TYgjZsIXTwNs8jQNWa2iutWubOJVtJ2QL6vqRSA3/rkGKwkvFppe5KS4B72nB2ug4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789852834; c=relaxed/simple;
	bh=nGKxOSza371Z973/F1gMew6tA6vdrmls893+bL2Yx/M=;
	h=To:Subject:From:Message-Id:Date; b=jNcONhYvO/oRzhEwUZf44Yb2tzB+eppos2MymAUMoC2ogNoB65v1j4FPq3TwSnJFzoo7J0N4F4FJQ1zH+wjD7lqVmRj4E2V5EOJQn7vGNaYPWjypV2vx4UTnP3RHNTixp+BfrLbY6aKWUqpC1EGCZJ8W3MNFR/KfZLNyqBr0Ox8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DerlC5q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DerlC5q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0660C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789852833;
	bh=nGKxOSza371Z973/F1gMew6tA6vdrmls893+bL2Yx/M=;
	h=To:Subject:From:Date:From;
	b=DerlC5q+1rZE15rlSyvvK0mAXCC6MLARti0KTgYdtP0tnQ8RqrSRqzzFB1+1OZTaJ
	 yX9BNv/jPUCjPMh80ZM4kF5zyghrtlM/uZvnju+Y2lpCfUDeab+Fau91lIgEUoc9Xz
	 4O31B5MI+20Mv5d/mpLIm9rYpTJILsT+Q4S8Y1X45fuqBU/YcY8i1OZs+pKlBiUYc7
	 Htig63fBx6j4MTi+pB1wOd5ZDCb39JLWdgxRrzVinXNERaRv6rwB1qf/6uS+F3c/bA
	 iEaWDxGJ9Qk3fsOwHL/rUEjh6fvpXh1qY9q/pMtNXwLAubaodXuXcPQrKw1ddIouDp
	 xZVzQuv5gW50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC87FC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985283368.13659.7497169814195134262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f38bb2472d0fd97af5b0271455835153f2ce6759e24b423ffb1c264950daaab
Date: Sat, 19 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789852833
