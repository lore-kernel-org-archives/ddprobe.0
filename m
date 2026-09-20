Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C92D4AEEF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789863634; cv=none; b=dEYUeSQlsqUT1mNT0xUnqn/PoKRcZllffThboUzMlT9c5DJVbTJPhqubx1uY4jqfAM1f5KdYMc7n711r/3/IaORT17DQFWhuqXYg+NIDEv/o2Hg6Zym4wR2UnNiQoZSlGOMcD7hSLfXLsSy9iHgWOv88UABSNsGkQUgbo87ub9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789863634; c=relaxed/simple;
	bh=mxoIVA+kSNa+c8kXWB0ULooVfUx5N7RD0NJwnuokP3o=;
	h=To:Subject:From:Message-Id:Date; b=tbrkjbe1Q/NSOLG0OQjdGrgzyVVDKDoJI3LyTMyAM+o3XdOf+CFvhDZ2FUxUD8PnAKxPXXQWsfgTQPgTRipH9IWP8HzOHS8b2QprVZPATgYNyVgo0MUbkYGd7MRCcCqhoPPLKxX48As6+ngfdOTMefnfgUjLR1qsbf9XlRBNuX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLW+Imes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLW+Imes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D952BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789863633;
	bh=mxoIVA+kSNa+c8kXWB0ULooVfUx5N7RD0NJwnuokP3o=;
	h=To:Subject:From:Date:From;
	b=bLW+Imes7g63GdtvLMxNsSwOrs8op1Qe2YELq859nyvaDLWRlnkRAFNBmFlbUSDsE
	 tzaEswbx6iGCEBgpP/mOsbbna+hYIWAvQiQlP/ILkdn3ISsrA8zMqecbpG064Kkya0
	 nglt0fMw33ncGvUF33Vv2C+12ZmxaT6vUdUFLT9iHSMkE4o453qqRw4B/4t+zS0sq/
	 3Tpc2bL8OmqMbteWukQyymHBWQE5lbVwPSYpYpHw8/nf7vb80wyH0u6YxoVdeXaISa
	 XTlipQP5Pj6vzvURS+6iAVORZF94hMHApvIXYKFpO6wer8iNPBs82GvQhycta98JgG
	 MB9lcfrDS90ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF76DC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986363368.919.13040248014761233640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e92a10494060acce0dea7383ee7ddd589de4ac166e4ec117bfa7b57cc3a1ad9
Date: Sun, 20 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789863633
