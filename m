Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06A42236FA
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790554234; cv=none; b=MogjOWaAlnOS/1NRb5p2eGRNnCdFn1PLjlfiYt/meucmPAhivT4AZK80yBwuAR5DTgcQNvVdu/3y/DPQ5lci7efX+cIOkHSzaTD6RRReoaR+Ly3hD3V4ljllZsmwf/YVcPgS/Kcci7HfBX4rFdKCnL9vAAvm4zZXE6NCV3Fv5u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790554234; c=relaxed/simple;
	bh=IGkTomcSOOhfN+cM9ieZGQytJLkDEtJGwldfFW7ZIY8=;
	h=To:Subject:From:Message-Id:Date; b=hwUekac7NKQ1cQ45/0UmOwCNpnL6vNFvmiQfSWaZsNLClDDEV2Cn2sJSdezkgaRV4Cl0tZNln39UpvHlA3tWYZH3VPW0vchPi6pP+XEYu0Q1aQMWtmOWF1jQoUMX8Frtlallt/KJ1tMlQnBK9JCHoXJbsou7L98BXZGx5j9NruM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYNTQnhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYNTQnhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B1DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790554233;
	bh=IGkTomcSOOhfN+cM9ieZGQytJLkDEtJGwldfFW7ZIY8=;
	h=To:Subject:From:Date:From;
	b=SYNTQnhu0zk4oi93GcJn3xXK3BXmbqFxgAZZ97mOnlyRnAqItvtOUmRQ+jMhQ0LM+
	 GpK4yNBwE2CFsDK4eXrr9nUcnNbv4URuPf/6aWY/vhI+iA/AEiF5PvNzzbUBcSIRbl
	 JYLc5S0ui7g3SLL68uFZ336szAVhE6DbtEC2w8JPW1aZYJF9Wpy5BkMDYCTzaZe0zR
	 0Zrf6R/lRJn5cGgIrTCnsZGamCZt9zUaAGXPLMxpRrE+H0sfqIpD6tSqOf3qAKTV5d
	 MY2xFadOlOI0HBeL7tVDThrt3lSyiq6V7IgvDaAJ3g9iJysyiZyn5qkLXkbKvw4CUb
	 jidTh37yRkVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A6FC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055423369.3389.11831497000551994499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62590526b98e50895b958f095ab5bd2f8d16c821796d4d0c008988a021be20ad
Date: Mon, 28 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790554233
