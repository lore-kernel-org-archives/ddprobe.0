Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9EA20C49E
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745317194; cv=none; b=ek7OSJ7ijwOc9HG7xBCRfx5j5gEmxHwEWKjEzr6+2bGAfeuMyatl0cN7But7oL9CBPgtkglnOrPRwsC62zzry0DTNHAGsQDBSJjP3wuj5xLKfWzHiD1erm7tQIPal/w8LjXKUaIdqvJ1aXlbf348fEALyYZ+mDySSN4VgoM3ooM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745317194; c=relaxed/simple;
	bh=P8Lc+fWHebBm0IRDoVxFlt1w5RTJCl5RL/nO6wEt3UU=;
	h=To:Subject:From:Message-Id:Date; b=vEhFOfdGqSFVM2IPlBVt3C+uVixNDugiiTyzmIjBgRv0fYT3nAiudyc9zxehuQoHgxji9++u0p78Vc0p+aPI/KnW4YLtO7ZBgIA8Mj9hajoFBwzi8rjeWGf1r4mVu7X2PkrlmLRLs4mCcnMuKYq7NQU80fykmYS3YTlZn4c28tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjzFIJNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjzFIJNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD64C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745317193;
	bh=P8Lc+fWHebBm0IRDoVxFlt1w5RTJCl5RL/nO6wEt3UU=;
	h=To:Subject:From:Date:From;
	b=ZjzFIJNE21tlCk1mn3iSS/7g3md2jTDd6eqFck2b8Fe/lfzfsnmHowtD/ODwqkCPE
	 6XpwZH7s4KFEpyjkgQxNYb6a7bN/22Va1ahG48Wy0Kb/1wxCZuKekQHcoWf55FxOLh
	 bDnFxAUBtWYt8iRafmOxWF/5bQUVP3NyE0ydAIwD18Efsm3nWzww4p8wsCE3jo+tAv
	 zKTGAJtjCvXPzVbfsYEef745ZMoU/tiMTCmbX2HGmhvA345CPp85Xhd2lqEhPvyRt9
	 hG69FHRBrnjFqiVCY+mfn4XehlxifdHEuJNfj05huulGWcYlmTOMeQS5gkBYSRtniZ
	 NOrKXM5t5ENbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EEC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531719360.10944.6361462737064761554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e64e836da8181f0e6fc5d5d8979d3b987e2a89af2eb339f76e4ce7996ebc10
Date: Tue, 22 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745317193
