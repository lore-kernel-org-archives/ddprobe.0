Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80EB1DED52
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745315993; cv=none; b=CXstRjCz8iT0M8TEfQ3njvSWvxltlKFaPglS1GV+szp6K8EFgN9Y7NiLT9ji5CLgwRRmv0wuV1qMBXGviO99z7xGQN14Yh3aAbzz2S6zjFD+SZpvnDJdaAqZcp6XOQOQ/rFUmnaLzUN8taPbOnBrXpBi2iWqOBVm/tfBBYpRE5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745315993; c=relaxed/simple;
	bh=DyeBezIybHMC6CyI2mzNMbdq3EqJRV4yagEKpGooWwY=;
	h=To:Subject:From:Message-Id:Date; b=YucbyUILDOAdboDYgTD/2U8xqSEVCM5phrFxfx3sc7E2NHJYSHiL78f+Hvafhr2ZBjjOpoQ5hS0mvPodS8RRWkwEzCGHo8x+80z/o44IqWQv2jcIWX/74idRUtpyrE7D6IU4x9BgBpIoRrR7vKj6x0uXfNEnPCplj7jj4tmCFns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DF39XPNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DF39XPNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB8CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745315993;
	bh=DyeBezIybHMC6CyI2mzNMbdq3EqJRV4yagEKpGooWwY=;
	h=To:Subject:From:Date:From;
	b=DF39XPNLFsucHoyT2wzJVaVWHeaqtJd0V7ipOOnTNEd+gVGZTT2lOI96iaDPHNMGc
	 i0t4DeGUD6Uf39BpE8pr5BKhEiVYAixNqUJM7HkLHHaAWI9Mgqg/Tp95/Lth7tiVUq
	 qwQyLjGmPsHkO+ze/nd1M4ehTOJCcQFzwDc8RMlD/7JhbSzN5xym8fjM6L5GY4Z1/L
	 V08T5u+3QEFngdh3GoyChVhaIK8WKA3oOORjOdgFFSbLYA6xONcHnmE3U4jme3r+xW
	 g1r4Gasl6Gp/L4F9OJ057JjgLrNjOujIfpieFXNwlefPfl0+oG1fyRd6D5uav9FnQ+
	 Ga7iT18NV5Gaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A28CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531599362.8506.11835384336380296696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72027f66327bcd18aa7495df9ea31688090e20589f547b9455f4e1d1faecd5ed
Date: Tue, 22 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745315993
