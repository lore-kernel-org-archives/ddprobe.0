Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEED13A88C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765537374; cv=none; b=f5q0z5tExFCqrd8DjDhiVxfNMrQFOrZ36w5TZ9o0keSeeKijy1R0mVgd4SVBbBE6CTXp+WZ3NKNa5mSTMQ5gpyfKwXok4ZNr8+24bTztrrfZoujCci3ZXYI+Yd4A5KhJ/km1QvWxYS9QRAKGhiR7l5qQns0s2aBbpw90IbTsQWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765537374; c=relaxed/simple;
	bh=OEBzBK4h2444D2qhtRorvHyG4KQqcmYzVm7MG5xHh3A=;
	h=To:Subject:From:Message-Id:Date; b=jHXmla8NakM5MAyHSCy6U6NapUy6Db2jgz0U84YHEVuleHCfn85HKbwqE3RdpfroGh5sP8GlfD6NvL5S/L1Ttsm4tPMsA577wyrCWBynJ6t0CzG94dI/26lQcP/tvm6pSk17xedlPwHsWDfoqg9XIownCtPmz2jr7IzCDwFaKi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqQPRc2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqQPRc2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765537373;
	bh=OEBzBK4h2444D2qhtRorvHyG4KQqcmYzVm7MG5xHh3A=;
	h=To:Subject:From:Date:From;
	b=OqQPRc2IuFQF5lo/TaKjAXUe8uU8cO+kuzPRNDdQ8l8AfXlqTHZ5hM3ju7ynDYkpC
	 yZyRPH0WCCcREu3FdVmirNhFxJDuRCma6+3EWbTvJ9xiOAGDVgoxFeiLJriLuFnvW5
	 CwZF/k8JsHuahg1bm8DA+pl9EASAyU6agaNdXo/pg0a5jm47G1fz0tFgWdqWm7/VfJ
	 CBHqblf11rqS5dzJSOx5MS3nw5T+WQT9DUm9y6DLxJ6JuYy+QDy6PxXQCl14iaKPgS
	 kjE1tfTRpLee/Mgx5d9dok4U7kqEtblM3bZj0FybgnG8LVO6Bx6aS4OxDVDpSkfr7e
	 xPeKo10ImZhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBFD4417D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553737359.29542.2677226150459717094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b1b7af615ff7a4e57bbd81199eeefbc7ab6785b5517937c235167e2895873b
Date: Fri, 12 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765537373
