Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAF5946A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768035234; cv=none; b=Q9bSHinuPzJm9YV5yvxxzxEPHtboIlqC9KI9TIMRpdryJp9ndf4SzfDxJzHzNPSUn5Fny4sp2jXMxwFrU74JjChWhCDhG+tmImAX1E1SyYSfbF3sPE0L6xN08d6GA3XvrrNn1inB7Cl/Sha/aU0BvrhmhOHFdr4zlaY4g/wnKGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768035234; c=relaxed/simple;
	bh=8DP92JIfGI4epoHN4Og+VG7WVSNYh/VbH6+729bo4wg=;
	h=To:Subject:From:Message-Id:Date; b=lHMEdzLopQtrN4GOTXX5KAIumc/l77U06id7B/7Bwf8rir35PlankF/6lq1kkYiEo7dU1x/tuTWe/U1Kx5r8+2nN4n5w28jQQF0idCVU7wIAYgsjMILIR/oRtdxwfsjp/ydG/BfPxLjABSzXHpWzeGXohSZzyU2KYvCVESUq1rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTTnLoAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTTnLoAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768035233;
	bh=8DP92JIfGI4epoHN4Og+VG7WVSNYh/VbH6+729bo4wg=;
	h=To:Subject:From:Date:From;
	b=HTTnLoAbO+kPGUN9TSvVwaYDgjtzsu8V3OXPLVatPvGUTvmz95WT7Yd5WjFIa0hLS
	 BNaWUd8NO8cQrelEIttqSSPgwqGmhFIU0GIeat6wGDF78pA7Bgcj9wFdSYVkOvRzuB
	 Zn5fTU4pd1RZ++kTWYyRzFYNJwWOqOIhhW7i9wiqjpB/NRWOYJtkOqPYSL6LBFsTZt
	 2hHmPwBpY6h2j7rZlHD1lEJAKUCRuB19xqoKa/kbDargPX2wakSDsXBR/huO5cUNhG
	 LxLAeFoh06CxG49si/i6L/G/iPBaZIU9jIXr+y+ZnVWzn1F6/tsDoFDMdHsTRxBIHp
	 tsi/AaceeEZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E6D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803523357.25639.11941091627453373364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb581ab886d076609ed6dd2e36f743790de5e7c1a7eb26149ae0aaeec61ecaa
Date: Sat, 10 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768035233
