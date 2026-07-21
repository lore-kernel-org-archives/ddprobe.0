Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46D433F5B3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784645914; cv=none; b=BI4cR3ewevcWch7Fh9inpdEtf0RDHMqVoxP/2bYkA10bygEJGisO32kQHb4gQnQL9fQIzedgpSv+OHTCzbDMEu7pdq6lUZImjsB+xnH184bZJZBugGwPVD8bnFyue74RveIkFBZwS3Tq5mSElIwoqd/Ic6M27kDyzF/eRRSaNcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784645914; c=relaxed/simple;
	bh=cWP6RmtBsTbymXQ3OpO5DF37rzB6dolCxJCHv3BQRrI=;
	h=To:Subject:From:Message-Id:Date; b=kn3UgVBKge6DV/GLmxTYz5Aaeq+9YwzEA+Zz5cYIjJJS5t+6lQnOdSFROwjqv6gkQKkmpEe3lFxrwBScJ1r/RClwc0DqHMrl71KB3UlHUKH92pg0uxKJfz6vqXaHQ2k0NVmTxZ4WTrqdpNn3YZMqPJLJRbPx+qFaFHUyGg1fe5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsFLeiPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsFLeiPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF81C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784645913;
	bh=cWP6RmtBsTbymXQ3OpO5DF37rzB6dolCxJCHv3BQRrI=;
	h=To:Subject:From:Date:From;
	b=BsFLeiPjVXsufYRcycxzeMMIZR+GvMFspFjHMgPFJSfLF2t0B0EUC/3t/WA/ZKFSB
	 hpDpDwpvjOUSg4vNiYyyd5ossFpjoqwyx3X/qnkYXo5YF81/AXpCQHEz2fXHYsaV5Q
	 TJCCCVqi0J4M8RkLf4elbqOnZXWGQqpFg+D3OO+3QiThdgJbZsgFOKoESnjiLVeph4
	 GMGVsjG+7h1eb0l6smzKDRpx+ZHbxh9EBYm9KHjYHXqHc9UTtXq1+CW9nyFWpyk9PP
	 /HlYpJJ/73oWURvD+sQ4rZLjw+8QoIdVmliLYXOsE1K/P+3rbkvl9hgqv+RO8kZxnq
	 95Nof0H6pUVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9234C44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464591368.30304.7950436661983675603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3c8779812f6ef78bf45f4146fc690ef6bfe8df7d5999d8f48b474dbc387a9f
Date: Tue, 21 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784645913
