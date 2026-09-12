Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E04384CDA
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789191634; cv=none; b=bSc/F04vGt0qOa5ka7BEj5eRlSgN166GHOYes5LUASZIuHweJOrOAs6MneMPSbHLBUOwTkF6Bm2I1mcqt1irCJixdaBSaTckPgWX8cMz8250IKYcrIkXE175SCRmA6qAeHj3SYD0VY+FEoyNML7KMr/rRsUWrO6AsKNBkGxdEnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789191634; c=relaxed/simple;
	bh=dsNAmVgyOZqsOj2kJqBGzcnLymdFzKYyfhNXCYg+T7o=;
	h=To:Subject:From:Message-Id:Date; b=rXKgo3Ms/0RkQ4bpA6sU8W836vy0SAUX1//ZnJ261moCEE3sxKA4sPMeW6+vsc+2w2G16vDUCRTYb+V9wZNuJCOJV7WN3SqncdNhorfUc9J98ku5s1sTE/OC9m3uIzsksMf0EA3l3CU6BelNlBX2vbcfQgEQ/QIFHU60JUCFYOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL5KUtVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL5KUtVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC35CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789191633;
	bh=dsNAmVgyOZqsOj2kJqBGzcnLymdFzKYyfhNXCYg+T7o=;
	h=To:Subject:From:Date:From;
	b=aL5KUtVKGh8oFpQHHBOQUHewdc3liYhIqbtinzrQ9BlKWfkCdU+HBxjfZ9Dhdt2iW
	 U+NTf6Qql1vOCdHhFrJJI2naAaDCYzQWyzIyn8CjQTmdJsgWwLSS6CJZ7AuX/HEu4Q
	 KzqBxSCK+XpO2+0bSaJblJXdpO4e9/RDqDkq7zGtgXz+YFJkU7N1bjsM8hiZQWhniJ
	 xPjzyMj0Q6ZkuUoI+TWKjxaocsPFZKPf/3HIkZ7iFfVI7zuWf0M8aHY/BXCqtARbkl
	 oHmOrC3UzbSBRKLwrbb5MBI62L5QgFKV03mjU3573xx3hyrUA+Dun/OSjXJ+lZSMA9
	 GxhBmWcyQBMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0CC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919163368.30341.5022439686882890120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f6e4cac4285c9d3a1354eab1ffda0dc3a437ce4071f4c09674a7ef2e8378d5
Date: Sat, 12 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789191633
