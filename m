Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BC72D77F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758649794; cv=none; b=ng0R+i1DjASQ5gmEUbiI1j9Dyj8HnPFvh4gWpoG8JtXbjeZ6fKKDbik+w4kj2tkJWxE0KtHjqRickunGIQf4NQtS9mi10YyBi5B533y08481o6IMxEY++CANt0bI0VcLsYWC/1bRKWhpLgQJjrSMxlyybj9fk62VyjjGS14RzkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758649794; c=relaxed/simple;
	bh=uRBULjPyU1xllOwqrg2v7qSssPYpirgNj8NjI01MvWk=;
	h=To:Subject:From:Message-Id:Date; b=tD7lGhNmx/WSepPH9ddkjDyROQeRJNEV/RdFaE8EqnuwB8zFy4lPRqnrIckiSiLz8+YYihKF9QWvnIEdaJRObBVVA0dedTVdqnh8QnwK669gTLCHJhKd909U9AN6GWxfV7jb6xsIMpGZedthGR4OhmFRtayiE4n7fB9hSkx7cyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgdY/vqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgdY/vqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FB8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758649793;
	bh=uRBULjPyU1xllOwqrg2v7qSssPYpirgNj8NjI01MvWk=;
	h=To:Subject:From:Date:From;
	b=qgdY/vqo86wIp6ZnTsimgpGrb3DhFhQIFmGxzuAMgQOzrYaNI8IbqTUIk6VonwZPg
	 XrOuD157g6qTVkuS47POC+VLMifz03gRkijAO7qWHiQfObf8QL5qT1pFm+CrDOC4gp
	 iDwLxNPTzQ4ov5zWWam6WRmMVMihiNK0zYv+k5/bq1gb/AaBmuIitg+hAGs45iILV5
	 UEwrQK5ikiwvG2PgkeYLjHWUxUtgZK79SfQWf+OBJi7SY541H4seJJmsg7EDX0leTs
	 GHAbYs6ib/u1bSFveF5YieyJ+CPpRerCj498J8lnu/SL9HnITI478GGob9FiTscWot
	 sQdMFAHOV+kkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F359CAC5AE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864979362.32102.8457939687460009176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cef2981d534fb8001b9b3033a9d0f1819d472c6df965532f87766ab37c53a49
Date: Tue, 23 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758649793
