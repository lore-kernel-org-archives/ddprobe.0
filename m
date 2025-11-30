Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3720DCA6B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764480775; cv=none; b=bh+COGVw5WFN83XShcLmoiUzZ9Asp9C1O7SAR2pktQBz1BRAJ0uk6adJzEd6tgVKCjD0ANSiLDZUe0SFzIwrigunvXS4BKeBIEk6SDYgowoGpg4mqqYW41vhf7dX0AJ2zKBnnCZ3fUFUCyX1eAHfgnSqrns2miXI7WxvbiJdo2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764480775; c=relaxed/simple;
	bh=j6bPhGoyLyV6cC5vpy1682KzTc1p8SpdS2fsOniSKA0=;
	h=To:Subject:From:Message-Id:Date; b=Ourst+a6+Qvqw5IRkBmP7OGwsJgu9M4fbZEuamJi/m1iJad1DA6hXfApDGlnVfGcKTmcpkAohsOB7nMjQpKpvbY3fuiR/Y8AJXfnAxDfpe8VbRS/ZQUV+0pHr0cxOnSewcdtiVcB3qxCWygpOU2/wvK1mPTPdoVR3XR3KFVUrXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U18NXsAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U18NXsAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0E1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764480773;
	bh=j6bPhGoyLyV6cC5vpy1682KzTc1p8SpdS2fsOniSKA0=;
	h=To:Subject:From:Date:From;
	b=U18NXsAyUszhcXEG0SGCE3Z2ErnP+2JrbqOUFAeu2wU0ue5tO+vuSiYjF2GFSiK6M
	 /Yu7YoHBmtujvCQDeHSbiInQtUb7juAAt7fcH02vzS7/YPG99+UKuKkSg3hfKLevaJ
	 bbZDZsN1iN0M7H0SaBdtqVImlZpoleCTQI33+yLmACxVPgOmJue+092i5kXU+I9GMw
	 8a0SvTtUFIM4mFqU4vgxTtdLV5HtzbQprLURUjQ/gvzIeBYHNGBJPuDe6/Y2puFfbb
	 vDZ/GHijCR7xVpQmWOuuk+sVCCopfVfT3hjWK3RBTtcuKQ9zMrpVrjEm8yihQM/p9L
	 i9J8+QJ6VT9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9657BD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448077358.11677.1248707891889106414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86219c0dc29773e4e097f30d82fc72a7d8ade2bce93b134a2a97086482a8cca2
Date: Sun, 30 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764480773
