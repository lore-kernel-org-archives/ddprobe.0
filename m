Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFE72F84F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752961794; cv=none; b=njAvEhwiQW7tj6wLcc0gbROTsZ8n9QYYzDmQLwimQk80hG5FuwjKblV184Fx0pRqj37RzdX0XUAS4UCFUSoLHNmf1h/uaJjpIoo8WNoIZgdukQi1TgDZYWpHdLer93vL4Y3QJXBWmRk58zyUHM9Yx1nGEJ8akvbC84hFvEi+jEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752961794; c=relaxed/simple;
	bh=83lZ0gvWvRWzv7FG+TRvLXoaNM47O1oG1brcRW/ON7Q=;
	h=To:Subject:From:Message-Id:Date; b=mshw5JiOVUhHk4Jp2hzUxX0CXQnW/tkRHBUH+Kmtabf5hMPQiPPUHWGEMzuYZ+98ZlSfncokZcQIpBdxlc7BQTZsmAB+0I3hO8s3UQfkLKDlFFoE93+h2LHnvZIVgihcC5Js2Xh6bM5IL0QE+3KVmY1Ox9hIq5lj+dQmeSTnaD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuAe63Hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuAe63Hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB750C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752961793;
	bh=83lZ0gvWvRWzv7FG+TRvLXoaNM47O1oG1brcRW/ON7Q=;
	h=To:Subject:From:Date:From;
	b=cuAe63HzZK45gWLKsjuCQM5f71bRQADTQUqOfFE0DKAiDys8CXobhjPp1M0z6qcP8
	 2RJEuUBYKx6V4GSJmeXUqCdFmae5o6xnN1YyGCu+PRSlWE8HxY1bJn21poGTkSGsmQ
	 RJxm6qvpBbdSEMb+9H84m2VItvHElZe38AqW87BkGDJuAV0hWQYhN98jpspDFD7PKO
	 hY62AC7OfPwR0P11cUz3u6QDbJ5sSqB/pR0oL2V+GAXy5jpW+vp0su7vJQZakvHhRD
	 Uhy9dX/tPeBf/kUTez2XuxvXPWxXG1EPzxBvkvOHELVO9LbVDiiN4X0hd9JTfRCTfx
	 kLu+AG/0le/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9403BC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296179358.14515.1594130577322671970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09407bc922ab548b4e9fdbece31c81489e36629ab843d5dc851e38e9645ec4f4
Date: Sat, 19 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752961793
