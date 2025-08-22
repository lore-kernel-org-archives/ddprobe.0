Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3432F6184
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862194; cv=none; b=iWDc3LlMWxyZk9rYk5SDDKDy2gNjBZVtDyO0oKACNG3u685HGZ3eqJ7ujBRWRgr3i14A57grXY8Gv26TRZcAHJPDgFHVyf6dg7PasFDe/1QYTIQCrG3Ip5aGb1ek4aCr1qo/96a2OUfN/QtFkzMDdBsSjRiRxR78AfpE5BSfieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862194; c=relaxed/simple;
	bh=54cHvjlR5qyGylnMJFYQ6jN1Uw4X9TfrpBgFHP32S48=;
	h=To:Subject:From:Message-Id:Date; b=duQ8q9lq6eemZUAvvU1L8CK23T5hPvvHiEYza65+SDz82F6QnlYpeZaC5Ir86f+zJ8kCViJoQEiXf18rAosiWsp96U9iT2oGLyQI0MVfacmhp+UObveIr9yVd07MlOeUdUlSiHm4FLaUDFiEjZQWouDQM6pVGulyVqWNjP7jDWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdVXmh2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdVXmh2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755862193;
	bh=54cHvjlR5qyGylnMJFYQ6jN1Uw4X9TfrpBgFHP32S48=;
	h=To:Subject:From:Date:From;
	b=hdVXmh2Sx0BBoJCRieVBW17tbAHkIxd99L63qauWevPsSMLLQ/m38GT0rMTMtuEpw
	 sqJfWpuVuUylVJ9c6Ra90mxBk/7Yln80JZV6mYHpBwG1qWmu06Q5Ztf79Jk8u0JLRL
	 QvvST1ItADNeoCX9Awxrnny5fy4OR9qCtoy6hw6ThGoy52CWlOCe4WVM16t66RlhyY
	 576rWWRiK/zzTjoRHrpS6qbQ39JDkmj3/XiIafG2psz6yeKJ7t7pR+t3LaERIvLRds
	 bz4syuzH2sGW75cICuiqzZXlMyhBfMcbDmDzDMgI3uY5oI4LGZfyW9/nhxU/pPznUH
	 Pu6WBn3uQ6m9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B7CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586219357.2397.794602485298424997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300aa09c3ea0956dbe32a10319675d9b5f13ec66d2980a59117b611e501d9ec8
Date: Fri, 22 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755862193
