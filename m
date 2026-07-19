Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36547190473
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784479714; cv=none; b=ivMBjWE8FAZ/ucpegpLZBMdMJMeYSmAarNxjKx4Fpv6vywFgqM/B6aksLw7EvvypBVhF5NNwid/CQELhHTM81uMIizBYglkpwKYGiGSebcbKh1n/WJpOpP030mtSBA5RZbMz0VfXisMHzEcWMZJwfmA3DsqrMk6oabvFcdT76zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784479714; c=relaxed/simple;
	bh=ORm570in+RWJ7RWNAIUC08XdFER6aGQr8wMqSVmgKfw=;
	h=To:Subject:From:Message-Id:Date; b=sQBdLRWHPOxnARAQuTnaNVvtObBhljR/6JffvP7I2K0cF6rw+zN4SfN6HWLYYWRDSTveE/zQlUahlSCmU/E6qw/ooprdMRON3CEwnYLUuQQNRYU2koYZQjxtXSiVM+j2nDKBpILlieY7kTLa27zA0Hx7LoYb4hZVKC0gsc4sqBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCMHC0vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCMHC0vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA08C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784479713;
	bh=ORm570in+RWJ7RWNAIUC08XdFER6aGQr8wMqSVmgKfw=;
	h=To:Subject:From:Date:From;
	b=WCMHC0vKzgLgHNRhVq0/FObHi+kNMhIDwN5i0kRSxjSYvDTafk0CmsgycpuMCqDrH
	 3zDZ6uFNIds7uWn12qsLPhvwY4oYyhDpcOmF4qjv+8zjIRX6pha53/jA5qHu2rh0O9
	 AOfFmf1wGZ2TpKlNIt+jD4zNdOznaXOlQ3lyM+BmRmJv8+IY1ABz5eT4hL1m1tuaT+
	 dbn1L0dmAG6mR7RI5ksiSeWhp2koYsUYCDbZIkWRT3KO97Fj8BgagYQXO+iPpeaGDP
	 kWIixvrmb9OhilrUKZKAAVExfL492cSCXl3fUHF438wEGsqODdBfQlR3I4eOroelJP
	 Hha9kwQdNUrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D1CC44520
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447971368.6381.16255410993456552219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a6fbfbfc5455e2def14aebfb605ab71e08a86f4eb90d889f6e90d9bdb95a2f
Date: Sun, 19 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784479713
