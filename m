Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7353E0B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766763234; cv=none; b=rNT6QFjz8HLFhobysoaJtFj0PVF+EDTYh/O7bKo/QMdSlzeVH2Akl4s129PKDairnQqw2H+m5w3gwjPAd3+RQjjb4zDpagR70cWVxeWkYj6Ghb+AJ1hYciJ+AfoUjgLA3uZ6fO0f3phlJ5EVucvL418Aw79Gqc4xvZpMN9Z7VoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766763234; c=relaxed/simple;
	bh=PG9ZKg0WJHHY7siP9cmdjFD5d98f8GsMWP6uWR9IkeY=;
	h=To:Subject:From:Message-Id:Date; b=aFinDtPLz4q5CVY0C1TiucBMCZ2Uhv/sp639NNOSX0TDXTuQS+FMca7SoM7xu4nalgDOAFjdrtRgcnGs/6ThKjIenxpfgwF0VIFdN9E07RNlUS69YwKDLsVmKBX3TM+21Yqs5eNVlUwzYS0fVHWz2LQUKZRTAMU7OslaNFQjk8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvGDJ7bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvGDJ7bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19FBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766763233;
	bh=PG9ZKg0WJHHY7siP9cmdjFD5d98f8GsMWP6uWR9IkeY=;
	h=To:Subject:From:Date:From;
	b=fvGDJ7bqW8pRZlXsRI6K8oIKuyoW3g9DJ3J4bkzNy3vcOTVCrinzFO30tUCEc2w3W
	 /akkXMXJ+9qOkVYv7TZ9/tRUHnR/cRXbyL+Z3OMi6GEwx5HePtC+hwWU3JZnL1OeCP
	 IKAXUvBaZPDwE5vqVSI0tY4qqdUbmpEivn66bVMblCJJlrLWG6M7wZHwZj5WfxSPU5
	 P/gxqNW/5V+aBQLLc5xsQkFYQxcC6r/G8sEs/qlOgwhh9P1YFZ3dH1nOdCo/jVgtvT
	 +VuVmiF2NROr+G8yNGYz7H23KpRQ1hOfLWhfNFzG6STWBKnjPnOdK1oWYJ/Bxt2n8C
	 lRweNto5/zj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B8FE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676323359.23593.2279580087189641286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2e11be851bf5a120675491bbaf60e8022a8435942fb614fb2d4d250341822d
Date: Fri, 26 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766763233
