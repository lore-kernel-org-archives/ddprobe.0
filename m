Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091AA21771B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775695534; cv=none; b=UTuhRIBxhgHrR3dB6O5Iid3/V9MzR2yCros3HTFHE3Ksxsdjm33/5O0EGKDj+K55pFuadt/fiUro0UeRCANuxjsOWREJlQDGeY1Y3EVC0ImNuK8qNT+hljphD/u05MFWYpRlciUJV0XsOdFh9+gFdIUor2QHWVU7akVGPQE1xQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775695534; c=relaxed/simple;
	bh=ykMOxClJHXtitjZfanOsb0kdf9tfFxFd8swfptgEYcg=;
	h=To:Subject:From:Message-Id:Date; b=RvkBzPby7fIfexqgNMyyeTsUsL8U3P984fm9vT93SWGxSmk8Lfn0uB8XrH0V31jrKfN71yEofiFGo7dY62HCml5EUVC+1YIMAwVUQQ3Zucusv5avtdhz7KBxmL+7xJJRONQHu4Qud/0+9cZyVSA66rvm4RmTcraXwpBdAOdnl0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToUMb3ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToUMb3ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CDBC2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775695533;
	bh=ykMOxClJHXtitjZfanOsb0kdf9tfFxFd8swfptgEYcg=;
	h=To:Subject:From:Date:From;
	b=ToUMb3kaoBwWfM7yrmzzXzpf4v9Ykpp69/31MefzuJS78v94pzFSQLtOla5irqmd0
	 3WGs2TNRLbdkwh0W3A6mMItu+tUWGdlOFtjqy9mx+OAdY2qpzfD5WS7O0oHTltZZ+V
	 cqXLfwXtTdMgw1ZA1LwoXZhugpP38WcMrneXlE0rz01ZxLND9ezHXezNy7RDB3I7Ek
	 hWinW4Z2Po+H/MvkRzEKNh+53sgfBs2DHrZEqLloIZ71ItzjarUK5PZR7kcELVEAZS
	 1ITq6EOU/7qCtgU9EEKk0op0A6BlN1ss/nUvCmDPRSGXdMgfQTpE1S9haUG2PvrmxW
	 Q6qRTJ68U/CHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA03F10FC460
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569553368.31926.2929517523993260288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069c8f734dbcb830b2e59740efe620876e5707b1540d027e731abdbfb4364ebb
Date: Thu, 09 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775695533
