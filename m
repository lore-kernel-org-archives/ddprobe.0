Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADE39A043
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773339294; cv=none; b=WrN4oEWBzOo4mDUsm6GWgolXzZcB3olUWN5etii8PObJS1WEY8uSimdzcgy9pvB1UMcS/3iyxIjhPPzaQjt5whq5IKsNiFBjhRKS9c1+GS4Apuo1J/A60wv2U2QcYTtIsHMwa0qH9HFnJ9D2Kdh/3BfNGtn9Ds3+8egNSkecSAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773339294; c=relaxed/simple;
	bh=PNsHH1Lo0mOMZRPCNJLygqj8+1mb72AuQTTJAzAAyHA=;
	h=To:Subject:From:Message-Id:Date; b=kGYvS7ztdtJ15f8RBMwLgqU8fJTcoRZcPEs8mV9pLKPDGI3hd4oCc0gZ8UiVzd00Zx26uoX+EvtHQzl7R7JjGzbjbuSYSz1AAz0SnPDy/bNrxmg10xxpCc3dk2ABxTnsdzYwgdpNobcXKapreXWULsLGZCSNBdYO3Ny+rurqphw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai7ooxHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai7ooxHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C3CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773339293;
	bh=PNsHH1Lo0mOMZRPCNJLygqj8+1mb72AuQTTJAzAAyHA=;
	h=To:Subject:From:Date:From;
	b=Ai7ooxHLtNDOUMrF/U8ezZ7WGxiaZXLQJK+1arlli6m0D3/4kFhAB7NX6SP5fmXMW
	 UnRc+blrVIbfnTD8gx61+lAD99bqgWXmrJqlyOMwCYoTIw4aKf0Ykp3COWHnqVYDk3
	 N+LMAVlAnLwUXaVD42Yxe+iRIz1JWj8gXKqFmtG8g9k+70THr0Z4uxFpegT22Alfz+
	 JBFSx0WnxsjO3dbDSJlzybROqyZPVGbWb0ynRNpK69tdFFh8khWMMU8UCj99PiOuSQ
	 jwOCN8OWEE918zhqXo73QrHvrQHv8VUQtWVwy1f41TK5xOTztvB8P145OEAEa8g/72
	 ID4DJyc28qflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B89106ACCD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333929358.18418.18388140380778355501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050ee6708a35487f5bb769345f85f2ae54c28d5c7a7ca183ef92872bb91cbc80
Date: Thu, 12 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773339293
