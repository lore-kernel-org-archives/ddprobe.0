Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E338BF81
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784587714; cv=none; b=tcBdVecVBe4M1M2ghzE9gTIk4qtsvCkl5LDai9QUtxjDKvaQy51zECCZNcoVTKY7Jbap0SXVhd35jn9p31ZLL7wRWJhEiTPtMu6YBJb0mZhuSYlUoyvmEkWqJr1yiBR19zORWLgoV95PlBIwdxCKnBqGm5JFcd7CjMGjFGZrcdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784587714; c=relaxed/simple;
	bh=Clgja3COziRWwTSm8uqJ+PLRpHNfZZ0XFr7VZ8iMhAg=;
	h=To:Subject:From:Message-Id:Date; b=dNwYHkRUeOXEjbJC2QnRoGh9MxPn9B6uXKigxR3WOyt2VdCOiphCBkbhAXem+1ZGSOXG3Tie91i/dLnlHcriDiznz62j1KTKHMjICqkfI7eZb7l0Hj+W0K2LHgRlknbjsMCKVyw9cCwqrt1GauVfrALH6rLcFAEFCoduBvTOqnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSaSK4pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSaSK4pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E47C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784587713;
	bh=Clgja3COziRWwTSm8uqJ+PLRpHNfZZ0XFr7VZ8iMhAg=;
	h=To:Subject:From:Date:From;
	b=GSaSK4pn9b9rsJh7ZAPiG2lDM5zfwh0bAfPPDTD++vHZzvV/L06lnRw0uN6X8T0iX
	 PnUAVPIre/38pk4G9wiCWTxpRqkQWivQOBNhSLG8H5YkFUNizL29R6iaedtvXFKeAq
	 lxCr/wLh4D2x2o0t0fWe9WQgnIqoqY4QT2Qa8w2qDQba6GeRbRDDaPPOSHJw8kXzwc
	 1BxhwCHiZxNOmeub+/yW3qYLPC3kRU2EaQAb1MoZHNVZ6NCh+UOHzgcUPZBgiMFNE0
	 wWtaRtzM53JUNsf3LOiRchGLUj08xmiSy1VPwZ/EJ5EY/ZhXAN9pSQXmO3uPSgOfjZ
	 B1xItVjxCfBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB30EC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458771369.29522.1777261514249925733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd03af1716356651287e4132830bbc5a0b94b73518df09c24b33a999082dfba9
Date: Mon, 20 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784587713
