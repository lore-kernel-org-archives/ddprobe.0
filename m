Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF06B28E00
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764922376; cv=none; b=IlkrT7KokGb5PPxnzHn6QGvmV+dKYsVrkLzl9DPTy2V/jNZ5TTNFlWwiP7SXB9E2Me7AGfXcO36xHX8sz1TNfxulgPDYIGWNiuFbVxkn6Zmdbw4jDX39NRTU7aSW9GbOAO4Jp6Y72RLQZqQPeDIkVP0j8VLV+vWHDmWoP6SxZVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764922376; c=relaxed/simple;
	bh=kY7OktxE1t14JPC5c7iN1pc1+9wC+KeD/GhDuHPqQes=;
	h=To:Subject:From:Message-Id:Date; b=bieThyhtinsg4Iyl7U11dbYwskCkhxlyedJJt1brgCXd86KfXkr8KuBqXZPoIdZyCHoup2Lru7dGzIOnWcwlMEqFDQ/ZWcs2NEM1UBFNy7FabJlN+D5wFYLm8vSc01Mx4yp67Z7/HwAn9GkmZdG6NKabbdi9kJjcqGPeWomPtz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv/QhMZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv/QhMZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5981C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764922373;
	bh=kY7OktxE1t14JPC5c7iN1pc1+9wC+KeD/GhDuHPqQes=;
	h=To:Subject:From:Date:From;
	b=uv/QhMZC7AgtRV4MxDH13tu4AHudivjfv0LciiBr5rZjdUAOK8p2FYkzFlCIKXcO8
	 kxi/jISRcsUfiln0+EvahqsBQ2hHQbtQOXZrowzopb+t7mkpbXA+2hrp/rUymX3vUd
	 7fx9lOtWVHf3l01z0/eFGybkdiHFPvL2rdEc1+3wKTGLzYJQXPykbg/bsbbnx7wIAA
	 3bJB1HtVxA/41ohd+PJ6s9ljHU/evdnK64zwdf4UnweudYrPKF2fZjYHX6kwXWE1ZI
	 LX7o5E8YJdJpoDqOBmK2Ts6ZP6VjYk5GFt7pX8YO7KZ/egqXuKdBkTAlZwRuxsYE60
	 7t16MfvPSJWVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188ED2E035
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492237358.17061.3804655374424584123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35229d134ecb59739a20903d3c9370c6a944fc12af3f86d30590a0ae0157ec7d
Date: Fri, 05 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764922373
