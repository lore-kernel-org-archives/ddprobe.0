Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB288321F54
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763436115; cv=none; b=X3Nz/tDqJSGL1GZIIbrOe7VaR1WX5J76K8i81kocN//2BdsHm58k5A+4f6YbHwuq+PcvIg8kTCHs5NGnguiyL19/d9GgKJjaP/Ih8/srwtoTvreZaq+bmACB1ZczWzOJSqprmrU9dkDKk87H1D0v0agmkc155+tbWo9jIYezlnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763436115; c=relaxed/simple;
	bh=5fnlCmskg7GAyPduGMN/3sm6X5BGm7mymrWc6w60rp0=;
	h=To:Subject:From:Message-Id:Date; b=p2ByMls6RTJXAmZn12bX1NRdEJLZ4Je3xwdTtThd90PVL+P2XiZ2KsEECrqOprIySynplPsHvIDq3Wq1xsX6wVumGSqAuYuiwAl8d1h4DJaoIT67ApsQTqz0C5SOHJ7qLKQ7vKVBF8uDNdrIU9gIt0BnnNuQCCCkPQFCVnSXN2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRkEAETu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRkEAETu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB553C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763436113;
	bh=5fnlCmskg7GAyPduGMN/3sm6X5BGm7mymrWc6w60rp0=;
	h=To:Subject:From:Date:From;
	b=LRkEAETubfEAzO/gclqyu+vruS7L+BW/F4JopmKFqEVXD9EfJAX0tR9AfejY04V46
	 F+CemsaE0FPry4UAmBAvOVocBBnAbvbgyq74RecCmhT0tkZLpZIXADLW+4O3rGvraJ
	 wqv27GbRA4xcyvNoLKGhFPiquCC2V83VR86T2os+BmtgPFwZgmHKrGO+VlCwq4Z0su
	 7s0664RiKgrBo0MztHhKJe3qPsWL62fEUZ9T7i3UH7qLLNrdByFvyMwL/SQqqbhzgB
	 MkZwW81XAUXfThQ1OFJDy6Iy7E2USAQ4lCNG++iY8a6e3z/cDjRYJQQWYcLjUwJODA
	 M8/DcYrX01nOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DACCED245
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343611358.10759.3928845603096200952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c300178066dbf201b18e1cd5efb4d8130faea8a87274fc1918c8db8bdadc5c05
Date: Tue, 18 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763436113
