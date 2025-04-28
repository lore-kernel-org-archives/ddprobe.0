Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A81482F2
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745819994; cv=none; b=NCIrW/WjTKyAz8jxLrKUWXdnhe8vbIzfUdSkCiDZrgXrhLXLWMWj+vtD9Y9u9kNNDgi6L08HeYyekt6sS7WK8pha2nSsxpO1KX63TnR8c7SwcHxrknV4gT7tQfrjR253B/4pf1/VTBGu14W+jV00Qlu9ETEt/kf02oT/z5ZnX70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745819994; c=relaxed/simple;
	bh=froIuopCncQvvEK4mwkQaoe5mCdO+ZUW8+B5WZOUvvM=;
	h=To:Subject:From:Message-Id:Date; b=GlnCEBGR1eyBGxHiBVwVxOupbuGnpL3nw4qbI2QxHLH0/jGS+gLhaS696Zs69Qek9PwnzQJR9Zg3paf0qQWAxJ4nlr4MT3yeP7iUR1MpfmCWT/GsnGOInTl6oR8u2J4Gylqv+Shdw7h6+hHyuJXTTuzhijIc1+jIRQTYerMgBsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWpfggI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWpfggI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745819993;
	bh=froIuopCncQvvEK4mwkQaoe5mCdO+ZUW8+B5WZOUvvM=;
	h=To:Subject:From:Date:From;
	b=cWpfggI1g3VnkfTRTi2etcJ6dBwrXtFdVU0ODOMKURH0A3LXsOvO6mq1g9Mrntbg/
	 P3vTq9jurRSLnnQJKvKRrg6t3+w65EOzHYrTh3FKSbPJzpCWVKlY4dHdGtuHzWkKct
	 MgqlRcTAAJVfQMbnAqK0R0ZCx48U+wLtIB403+kcJGx59JM3Zx+QVOTx/d1euR0ybD
	 s2LMXSl+0oumLYyUp6jpOg14PT0JpDsX4BF9/Lj7xpz/lLnzMLO8y/NAyyocy7Z7ZM
	 q9SCHTVVxDkymULCw0GUWi/zvCOBIHBg8jaOnSaUfuQp19FgOHM/vBuqTRL/8L+5QY
	 9RjWyW+Gc9wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FFC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581999357.10357.6298692485242523254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d4387de05c15a694f4996f7e9272ce3f3bf3e6a3db1b46d74121a5184bbc79
Date: Mon, 28 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745819993
