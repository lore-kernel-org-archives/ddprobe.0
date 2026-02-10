Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290512B9B7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770701634; cv=none; b=PwVY5dld3ZLWKhLC2cIj+Qj1MJsTkqFNDvtNAikDBSgCwnNMgjyg4VWBYBi7i6lFQYAfYNLXXfQ32GLAC/wMh5Kx/Rh2vHy9Kj1kl/NgL2Q8Ebgi3E8v3nUkZJ2torkRmpyPIsIWIe9tFkccgMCsBl807bwTaPFMzKPOSeu6EkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770701634; c=relaxed/simple;
	bh=yKDZeTP6vnz7JqW98T58xNiH/OWrlW4/Mrk+y9emWgo=;
	h=To:Subject:From:Message-Id:Date; b=dg8fkqhjvZi0bvpbhYtLRLWM8vP+ZAqJFePtByRtkwbIs4Svq3uSFrnWTFWiTW8jByA6CxZyTlZsDo33D2CpYkjP3naMMnZFwfkUVCxGadtgqqe3hV5xlig2KMMiiw5YLvIfWgmXZvSBDXWIfMdfpSu3BGpAdrDcnwFtzyGDYKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoKkzUvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoKkzUvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A63C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770701633;
	bh=yKDZeTP6vnz7JqW98T58xNiH/OWrlW4/Mrk+y9emWgo=;
	h=To:Subject:From:Date:From;
	b=aoKkzUvmS7TklgcdH7BidUxvA7iEYnW3OlkUBjJaZG28skJ3kWpPhDvLaIg/DKcIb
	 kDb4F4f5/pA5yH7xwyOkCBHGpuj+xDaGgonDZFWcvDyMH4l3pzvfITHc/CVgNrphZy
	 kbyS1sWvE46dvP6qDo2gDY1lSwDjnPMaf+qSda/mzPDg++QCDEBducCfR6LNyO0NFy
	 eIA03TpZxgP69pTLGFeIM59ZJoQ2kaueWPVjmknrmmCUF2NRyOGB1AmAbrX4QD1r5X
	 x6lQu7GWUIv6xrHmLXNBUGc62zDKD+wpWdARDl2VUPq8BgjRqo1TNZ5UJmAHTXi4XV
	 HdFUIb9e4Ge3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0298EA3F05
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070163361.20689.11079671155439633413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228355dabc356eeb9c5915fed88a53e3143f3dbac25c42bbcbf5f0649c29d8e2
Date: Tue, 10 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770701633
