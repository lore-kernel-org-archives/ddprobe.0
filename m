Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230882165EA
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767456834; cv=none; b=hotFfGnv3ouFEGBuL1LMUBMcLCqFOHxk3bRA8kT9clDpyc24Oym8O8Kgi7Sh18qzAMSnrFk1J4TuL9fvJnCNHU4KNsfCkSBmH+9jincfO+5fSYNa8FJe5psGgRKSU7WehusRX/abytkkUC51CQBKEdqlSn7SOMFEcxV4g7UhTB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767456834; c=relaxed/simple;
	bh=2BOrkzJttBYiVsC2oq8QJcRUXI6WzS+gdaVSItj2Cfs=;
	h=To:Subject:From:Message-Id:Date; b=IC3EROr5s3H32lcDCBv9POS2wNrpr5ktLztRCYrebgYW3xw4EQeobGhNFqWMwEcc/JZCQonx0tVYksGL753WSN0O8MvFI1SRnToyg1TdnHTK39FCd7XGp8AjhOZnwPhe+8cBKePYvqtL8leCfXZE5/0/DnL0iPY9mYy2ZQGyU2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrKvWx7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrKvWx7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263FC116C6
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767456833;
	bh=2BOrkzJttBYiVsC2oq8QJcRUXI6WzS+gdaVSItj2Cfs=;
	h=To:Subject:From:Date:From;
	b=ZrKvWx7bI7epbv9OdGh4W5lczx1/XFAX0R3vuSlJJ56FUrdF458FnbMSCFd8fzFAD
	 Qz2QE7/hytQkCtrWL0iS+kFnB3SFqtIbrMKepWF08hp0EOhiq/gsvkdYwv1VhHm4Xy
	 s1IgfZTPwurMQVvRwyDsaYcwXeSV9mFrogtda93bAh3c+0HBoUx2DDHk1zx+VTYGY0
	 Ph1S1ktBrQoKpGO68Q96H4VZqa0o1vPQhbaNSYkio9BRGIOKnRV5PQ109cuO+g9kad
	 DfHjOi5xRnXnwT4ROefxPT4evtr30v+pDh+Xw1UCWa1IQmim+9Eqh2KenCdcug8XVG
	 tWZuM7tq1VXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FFFC6175
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745683357.20080.15959094060075430036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4be266c399443414b9560562ea1cc3a90d70f858fc23dc92b5743f5c903fe16
Date: Sat, 03 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767456833
