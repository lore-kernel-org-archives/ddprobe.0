Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5E6653
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731647754; cv=none; b=XMxm1+4Gm1iEpCAQqNhbhx2bx7O+FZvbjvwwRi5T9pmSu7MoP6UawL+WiULZ3uxrtbk0sa/MdfvUOC4juVc9fEbHlCneZ1+eN/Yv5UEHjKT6Z4xJzBP96Jcii3aqAH3s0qvP+Vq8pZvCDQitUlCUGjemXQQHOJWu4Yy61XgdNG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731647754; c=relaxed/simple;
	bh=eR3QhPoVNJizqccmLnCMomE/7mgEyhqKf8Ovpam2mNs=;
	h=To:Subject:From:Message-Id:Date; b=PWfaMGuOp4o1whzuxRyFb7DsNyDtIwXr9lkqTZg6avEpxOQsYHdIqGgIX/Mf72iFM6AZL4aEtS1/F9baZXnV21zWaqrUdw5XUdBVoSKMg7jekilhsQVgXU8mnEgS2wZQ2NASU2y7nMzX2qIw/wIZvMM8sxz/wxiM5KI6aTxkMsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs64uQ3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs64uQ3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B624FC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731647753;
	bh=eR3QhPoVNJizqccmLnCMomE/7mgEyhqKf8Ovpam2mNs=;
	h=To:Subject:From:Date:From;
	b=Fs64uQ3LoWzaYPTWmm+WV60wfMa4tkyvPbkuUk+VTT57EsozRExw0jtEldWGJxns2
	 EoqjySsMn2xsF+dgzVy10wnHRMF1jebGEPNLJ7/sleDHNEjsK+lge6W7fHM3L2eI9f
	 ajgbE35HFwqq6EwP4JtIeDL4F/9LLWbJl/toAQyqKtcqCJ0/faCsusyP22I3S4lYId
	 dBMiDDFEdphkHMe2AhGOP/SdcaNU3uQz2atU37C+IzkTJew2s1HlSe76mu+6JjoG9i
	 jFb2RNKWp1GAKGbNXjqnpe8oNUgRj7/WWqlA1N5uFVltcakTY02dys0thyyyAcfEVE
	 LZ0tj7H3KRtoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F8ED6DDD2
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173164775361.15519.5616424388639930680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd20fff63f86b8f366a38f83563610a8599da94d09b6d99ec5add2ae8f03660
Date: Fri, 15 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731647753
