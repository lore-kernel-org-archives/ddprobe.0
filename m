Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276102DE1E5
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443194; cv=none; b=UFp7vQ32SDjEIWxDr89wVjMkEFQ6tHfmB2F9sUAKYGfF9Ty+QavUGiV2iYFLCMBcl6/oSseRkyWzSbaCa14wbOk4P60oXLSBH1oFtgHo5OiSxaF1pgcU8xw6djrmXrQXpjyJGedQ1Jy2XjjoRdqcdMgdoUhZII0VT+AJuYYkS9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443194; c=relaxed/simple;
	bh=bwGH5nnRphxjLnsU4U47gSIi2ZNEK+EZOQs2uVEsOWs=;
	h=To:Subject:From:Message-Id:Date; b=sl36Y9b6FdspNAJHIjsWHwKhDZbOCpf62N2MBXZ9le6+VLLO/ckbR5eK0cx2VBg9EVUVzJBPTg1wW8+7qfPSQcup62hwueQ5A92Y9aoZziTrroyrvYtQ6Dtw1I60zsO8wyCKvBgsozTMi1GB0zxuQIVHAcNHN7/hai6aPkYJ8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFdkatYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFdkatYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760443193;
	bh=bwGH5nnRphxjLnsU4U47gSIi2ZNEK+EZOQs2uVEsOWs=;
	h=To:Subject:From:Date:From;
	b=jFdkatYUL+roteBMu8KSP2Gj0/YMEyT4qKdvn7yvm+WpIbbNEgxIj/f7i5MWNxoc1
	 zU/aonBgAg4+7bq5tlkL+YP7/R/cQFsYBSJizcwYXIN91VKRqOoNvDffMLSwA3KhTl
	 UOQM0Q9DCkKjFSKq0bVj7+ovSP+pVekHGDifGG+n12dtJ1CSvBvXDUg24SqswPoj4P
	 URah+w73BWKFoCJQRzLZZ3dm+Yw1MLHT74xrSXvSbEWknps3R94Qzqp7+4gQVaWqa6
	 3i1H7IRU6bg88kJG1JgTSX1/AVauto/c1PxLwdqwKprTGAfDCYlNWMQ/t6UYlCiNM7
	 Qufm7nRQcMQKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C3CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044319357.3127.10782724120459159407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623eebc2bf84c5dfb6b232d30d352a9febea29c5928086c611444b417d965c9d
Date: Tue, 14 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760443193
