Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317F419CC37
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757568594; cv=none; b=jM0AuKHPFU5wlFCWS8xPsU0QJvP7pCqAArf6d7sL63Ry2CdO24/j3tBqkjWaHGkq1xoOVUSQyYsyUQhPhy934eSxm5po7sgbwL/nYzm0B9rfJrp2WuZSXPnyRLYF9dIVctNQMuCezeYlrf4P5FLWRLsMoRmEPbfsm09L//ibYPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757568594; c=relaxed/simple;
	bh=bGCz5uVcE8UT4WpA+qHjJXw1k0RiTMG+0rrbOx/pGGU=;
	h=To:Subject:From:Message-Id:Date; b=MKIMS0ZzxxVQzyTcuvQ1ndS4arRahKITUXmgSMBWg67tgFQFYx01piRUUqafmFF1XEiEO5oaBwC1reH5iqmVZoY3dqNjro9OjVwLMINS+x6qgT6MNaLlzlSNRo45a6vekC8O8GCYZznITN4m9nV/jTmL+mkm1SW45gt7SdaQmpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfn7+r4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfn7+r4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFF5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757568593;
	bh=bGCz5uVcE8UT4WpA+qHjJXw1k0RiTMG+0rrbOx/pGGU=;
	h=To:Subject:From:Date:From;
	b=dfn7+r4tWg+mpSKObB8+OEx8D6OIP/LsT0jsFL38NKx67R+wc8snJTUy5S9AcVD2r
	 Lfr2Nkt1lNMm5uIImC3hU1kP9PF/ZTZrtxN0h1LaX6Ggw4oB3H9kiwOlRTir17TlY9
	 Lh2WnuLFM7kJdFHE++cjYcXzACJcw8OSRfRS7Gm8ZjIj9uIAz/wchhKHwl88zgwX5i
	 rItJK1MMhyLKX3ibqTK+nwwpA69zHeq0lFefROWl+pp1hO4utkP3AFZxML3it40KXN
	 BEVidu2SJl5Fwd+vjsug94DgGSIznERJI8BClMBlMSZ/y80Dk6+ClKcEBJGq1T3C9q
	 fpauyLQeZvEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9C2CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756859360.23698.5698145134800743524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b65e33c31e815400ace00b2c5bb9689c3569ab0b1b23fd363c5f2521e8b73f4
Date: Thu, 11 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757568593
