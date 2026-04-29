Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100AC2F7AB0
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777485454; cv=none; b=mjQ1+oEwnyxaxUyNZ5TCEePnvGA6S9R/GhM2XC0tcF5KdiVVRO5maSrfRAOs5MC44r2myuSZLgrgTqgMXfEOgRGZIbmh+bj31bRnMzWY3aaR1MmvUOpo1Bk+OgvEXJj8NzvkkkWCZouxcYbmh9hhrVjmCkzLbl6n4BS59xZ3/WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777485454; c=relaxed/simple;
	bh=65l+gCXnxzGvT55WyCZjJYMdAjuI7QLJfzTVjswHVYg=;
	h=To:Subject:From:Message-Id:Date; b=cW6eenSpLUanJ/e+3uZYteOVmNZc2pq+nqVUu83RwTHjBrQ9mmovh/Itw42LmljaD9OPdNKSrspDCM4a4qnytgYjuCY1GPBZjgaEhk7PKtnNXEqEnyCBdg9UcdDJP/epIy5CFQC5mHy2YvF4ypKx/NxBx6prvwUolkwA0tUTsqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujlQwIk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujlQwIk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA128C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777485453;
	bh=65l+gCXnxzGvT55WyCZjJYMdAjuI7QLJfzTVjswHVYg=;
	h=To:Subject:From:Date:From;
	b=ujlQwIk+eYh4Qu5SAKwmcH+HHkDHDtSZ7SqqstANZoe9/1dkRUHx/TonRWGB814E4
	 2/49xyS2Ee2XAywOS7tgA5H12EMigReobpdgJsxV6o+zkOUfQb9xQ2VSTk58jTiYr7
	 vLD3BXcYiGioKtx/tW17dB/umWNVdJu5AQJiC1SvX7SWJ9LG8SUyamJgDrPSNGD6NV
	 qHaHZxSEesjJYQL85iYYq2XHuJSeIBC/YYjcbPc1BFmBN6K1rihgh40u134Jg1ut6N
	 Wy3v1NFBwr1/hotejZen+2ChGZCjEOwapTyx0aXd9eGbDOa5giP8k1Gq2oTDwxavmR
	 tmBz/XkcSApgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE5CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748545369.17709.9776965880943650525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ea6c75c387bf4186faa090621ec94598db22566fb1900d2e4d2cd196251fe8
Date: Wed, 29 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777485453
