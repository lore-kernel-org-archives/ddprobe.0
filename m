Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5F93D9045
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770202434; cv=none; b=IKr7d4WYq3EviRWpBUXyTi9tanrT9KDwE0XEdsTEabmxdlIn8usiC0gDpRmHZQfYJJ/a+ac61sfj7a6POF/Qpf1IHCV49B9lctsnCIxrnZkjZdWZkVq0inGS3R77kjhmA7O3b8dHS6e9Xo/Qu6TaMdJpfP7C9i6nliq9CbKwbTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770202434; c=relaxed/simple;
	bh=vKGR1GxHSiQqmqgigTh+FUPiedZBKGN0gNgTdG2TLNw=;
	h=To:Subject:From:Message-Id:Date; b=GiUlliw9yrAuaGrBzCD3ZRFEAfET44iLQQ36Shw1Jyhf42rrqMr7OL+y2RrilxY5GRmcgCz93RPF0K3MQkliJ1jlaF/HOL6Znkv73SYbvD4+30AzD5hpLJDE5njf1yTXbkKN5g52g0c25ndc11yRZK4+a+Q3eNV/rGRHwBH6FpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm+RpPQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm+RpPQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8AAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770202433;
	bh=vKGR1GxHSiQqmqgigTh+FUPiedZBKGN0gNgTdG2TLNw=;
	h=To:Subject:From:Date:From;
	b=qm+RpPQvF65XhLURuijYtE4wfdaxmtP1Y2erwehL3HfBOpitP93r8uDzXfe7gGssR
	 Rrb7s/r3UmE+h4z/VuoePw3HFFt9XeA/6qhholOjZOyQFytEWfgwwt+MVoDFXsc29i
	 xASG5ynDHZfqse2WhJjQ0guGZJCnjNB4spN8fmxsVS9K7ettQXx9mWhwduMaCLFzOD
	 WmLepipzq3LUltgXWYQkc8ukGu/exTn0oYFeybF4TPVZYMcmj5oQK7iaQE4EogF56y
	 ePzqiF6YtPHYMrmH7jRsKki5tH3ytj93WBBHSGJF8Y/B9xG3k3uVIZbnjf85xxdVnQ
	 sc/ko0krhr+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980F0E95379
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020243359.23040.9041827724257967583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98efd4764ce60851227b400435eba9053388e7ca1a374d791e35eb10bf0a80a
Date: Wed, 04 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770202433
