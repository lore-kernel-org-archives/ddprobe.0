Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20B3D45D5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782206194; cv=none; b=chRaiehInAn3URGfZg2m53msB375FvVG5wsODMt6nDJsZu3YFb6pFSdDfa5qzvoJJzxXuJMlEaRTRv62A8x/YnaLdLSMIhrJmsxk2vQWLKyq1+fpR+3h+k7MPh1pCjltXZ+Wx2FHTSrizXrUyBf546CGFmda8PqxzmWlf1GwnK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782206194; c=relaxed/simple;
	bh=WfQ156R9+iln53+wvZmCN3nYPDzoD/tAb8JKH3kEjQ0=;
	h=To:Subject:From:Message-Id:Date; b=s31C/364aJmN9S6q6txu5Kl0AtJwdLZfBIDar9utu9xZFk6LgwqXWv6qjvE8SYhHbZ3MZ85FR/orpnTa613Zc0SaGojPkEngt4xQKn51Yi7GbAAsyCfGhpuKxAHfg61e3lO6bP7+0pAPzJ7q1gR8+flENigeQuEHJr0bjLd4ltg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze3gJ/Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze3gJ/Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782206193;
	bh=WfQ156R9+iln53+wvZmCN3nYPDzoD/tAb8JKH3kEjQ0=;
	h=To:Subject:From:Date:From;
	b=Ze3gJ/DtEbz9eCRArLt49u0L/7jLwma9b/YyOdhrmwCvxBbbnznG2a1e6pjqZLTyW
	 FTC6omcUZBNSgwPNlPd5XKQ+eA2fvJbhyqKs+98qROQEHnzPUuKxBWJB6fVvPNX6zD
	 vxWpVNmKbFnBkGN6ywgTykocFT6Yo3c4u4bOI2xuC0ilXOU8HPOPQyLPtvtSpjoFJf
	 rnfsnvlMKX6hXblq7j3wPyoWIgjBLdowcath5X3Qen9+aAg/7I3BZcUQTg3xVb0frm
	 B0g3SLsHdR18ysquEOBo7LcB29w2ZuNQAzSjr35Vl1zrWl7U9Ddm3uJHgFalpblHN4
	 7w7XVVEcQPVUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8388CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220619374.6676.14497691316665493203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5e143c514bc1fab07cf0f36212c609a704bcf63357fceb4bff42ef47dae9e6
Date: Tue, 23 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782206193
