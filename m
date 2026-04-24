Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6A933ADB1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777049254; cv=none; b=lblG1xX+/aS6NO6dXGltkLxtYXODSs99nWJjDwr63m078KF7mfszyuQhX6YIebd+/Sen+Sz6a6RDqj2DBwyNLp+iOw7zMczuYPedFSgGQUuWFdMXKmDd3y4wow/7ZgCPmvMNA//Hi24X2YFSg5Xk9WVFwbrfMI+evsn+ddqk7mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777049254; c=relaxed/simple;
	bh=jQsjukwDhNh8ihmgJZfEugsv+jT4snnUBFVU9hpUB9g=;
	h=To:Subject:From:Message-Id:Date; b=H9srI+fUSL1V265kR6izTd44hlJQVAsLMmaOEdn6E1U2oigpU4yfaTwYSqkVfdcs4mYzClB1Q6lr989zZG8WRyXUBupq/z3WnMi3JsyACP2TiWVHM4oapyVfRXQ7GB8JkdJdpAq+1D4UU3a4hYlYxriRpz9HHDx5OKb+yGbT5R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2rst3yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2rst3yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DA1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777049254;
	bh=jQsjukwDhNh8ihmgJZfEugsv+jT4snnUBFVU9hpUB9g=;
	h=To:Subject:From:Date:From;
	b=b2rst3ygZ7o4aklOVVOwZnlCMo9MSC/4mhIG10awF2OMIQO2UIDBx+bvujlKIHv5p
	 CYm0xhpWaG/Y9vgZrevELs3ES/gRcUQEVhDPnIkri/tDxDKar8xRRajzNxLxULG/HA
	 ABMk5kdT0AhYsXwwTjiQec6K41VhvA4DGxIZMrmb0CdqXRCvlvaBAl35VEDfoealZw
	 BAeODAlJQ4XLVKhs2Bu7+LHQO4Aqvpy+QJoLXpNv6TH8OIdwusAa7br6o/oKvV4YEj
	 GtUmNikJdS8gsKvpmlaUF/W2pGX/fxKhPNkKcAko5rwzhyKygnDf/sgnIAprOuo5nl
	 c6PKSmg8pOykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F0FED3F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704925368.22241.13956539591786504671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec700e2e14c634b1ed531bf8cb275806e78dc15b17e223077024d031e00473ec
Date: Fri, 24 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777049253
