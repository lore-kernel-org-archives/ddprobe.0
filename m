Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386287081A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766708634; cv=none; b=rGfD1MsXksnTK1sXYHu251RB4gE8q51t5DSIab6XpjOoZRMcrFARVtYGMkl2PHdA6XYQ3Os0aB7ZicyRUsUzfj7O5hzWjlkagH5WLvvPjnzSQWwHnLzj5lSxR3LcOc4M6o3Yy+Hdil3bEGyteSE3OS97wN3RJF05ZE1LFD/CrT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766708634; c=relaxed/simple;
	bh=VFcb5iP++sZwxQGIrXH6F8Qbg6TOnrfZ0PneEdgPBWg=;
	h=To:Subject:From:Message-Id:Date; b=QI2sb3FWB2s/EV3Awlkr7kBFlbCku3bIejgkFTXeTlHr7tVs10BolX0ha4D9NIdlPrPrS42zp4omIi4Gz99NzLtGJQ2hlNAGwwdjnIEYUMmaiNc5059t3kV/mmVF7WadzU5B+mNizjxLmqHl7RgyYGl9Qd9HJf3FrAAhYikWpHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iciIkhTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iciIkhTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766708633;
	bh=VFcb5iP++sZwxQGIrXH6F8Qbg6TOnrfZ0PneEdgPBWg=;
	h=To:Subject:From:Date:From;
	b=iciIkhTT8LUGIq/+l7knWuOGM4NdKD/xNX/5ffF68vJnRWNMbPcc5dNQFPdF+ec/R
	 nBpBEOOGhwtQEQoQrwxNdDPO/1kL38J6CbK4tVbSHHbDHfDyUlUfBVaFUUvn6aV48x
	 TCDIzB6K7SSI3a6VU17psQINA7E7/3cI2i3anMluOP/VMRHnF6JMcDpJOEus35mP4/
	 eQUjiEWARVVbQ/Bw1edHYKi+QbF5ItXyHqXsoXDB2vdjpX9bPq+2HSQsWchnBD7rwU
	 zl4MBp9j24+LlwFQ9tTCQIYVX9OCzA8FSt2JOWSnQerf5l72pIiTwOoZcxVCqsDfju
	 WSjHZ0cG5CrTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF4E7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670863358.6532.10418364702911239926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67199bfeb52bc7befc0499b53d48a7140e12d72934f0309104d300fd5a8e8f81
Date: Fri, 26 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766708633
