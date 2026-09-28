Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0D4501F46
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790632836; cv=none; b=oG8Jzaxa1BSaRVujh+XCIqpOvYtMx6sRF+bww4XT/9w7hjP+H3V0V4jaLTaePvCB1X+nfdIgMH+O2hj33SuPrbEL1rry61xT/917JNrrJKmSmLD5vNtjDLnQOmyjL8RM6JCa6c84chARo4/JrZz9s2K3w4rZxHM6aQW1n3nBdFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790632836; c=relaxed/simple;
	bh=bTlouLdyA5tyA65RBZaTrAn+4cZ7/ojUFix/IB6J68s=;
	h=To:Subject:From:Message-Id:Date; b=TKv3/g7pzj8JeY8Ah1HrWa1jRgirRSpGEH+ourXTsjRvBDv7pdXsMgNryM1pngI1wFCx2WVX+3WLY4vobiTuIG1u2KP44nUjYFKTM40z3FVp/5y6KCSglQdK2eJDNJHu/nFeGCJ3bGrpbd46n9GdQBJccKfo0KaZlpfsUdGExoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+BCQSQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+BCQSQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AEEC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790632835;
	bh=bTlouLdyA5tyA65RBZaTrAn+4cZ7/ojUFix/IB6J68s=;
	h=To:Subject:From:Date:From;
	b=Z+BCQSQF0UlBg1ygMcRIcpjbOH7vBclM9/LQ3fXrI5DTesCdal8LIHscjJi13FLML
	 kJul6wApsMa2rVMTKr/0gKxe+5FcEp/xboIlBFVxORaS4oaPVFBCPrlR8A528yKV5e
	 E5OIVyGjQVxdxJPlyhzUvtvo3kILEkuhWbNFKQCFD2324DjxBi4yMejv2yLzaOcLc2
	 DRcaKeCLUl5fXp3v1y7iqdrxA0Iw10L/jvTMmwC7ihabJ89nU2s/yZfuJskBPb9eXl
	 bYSbFO8QDKIx5n+O8tWmn3UG4IjRWDbIiYDF6nPWBEiUprWhPPxLEezKOcMGeN7k4V
	 4EECN7pOiAKxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFFCA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063283369.22692.16938621240208128107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cce0e1f8189e68427d483b4d2e2d6ee28e1c367b1a4ecab5b926566c08dbd55
Date: Mon, 28 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790632833
