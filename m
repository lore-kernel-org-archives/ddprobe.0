Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2384345BE3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775176534; cv=none; b=h13ciWDFBQUdVCEykC2ZjMRSGtgiqK+T2TJ20x9UNhrb1bKleDPVWTsVEzpUGhbHRvlLKW6CAIVqpyluWZlS456tPsqkvs30PBSjiEy0YaEsFcl6Ax5VzdhbKS/yH+yXbz/dJb1PSl/jhWouMmUWHT3/dLbiF9x75DPiBVGmwYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775176534; c=relaxed/simple;
	bh=GWXwdgsmAWg/oJPxVIDIOLSQlxyhpGjMC5zwbhqW4jE=;
	h=To:Subject:From:Message-Id:Date; b=E2u1bQDPZInrnH/zn9XX0LUjxLh5OLRBlS64JeC16wAkXmexmWMFPZnCqUz3SXxfDGckbcFNqOdTl/sBzotf2tT8y716X3+0hmz4LbogAhfiwFAZYgBjUKIkeT/WbQ+vJBCMMYNjTttBwFaaewgVDbAXvSqkpqnwYeX7Jt7oS6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGiNMDaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGiNMDaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD87C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775176533;
	bh=GWXwdgsmAWg/oJPxVIDIOLSQlxyhpGjMC5zwbhqW4jE=;
	h=To:Subject:From:Date:From;
	b=AGiNMDaOrUC/Jdf4GD5lVKWBVbJ6EaDKERrs7k+ddiEXwNAWY9O/0x2rrSXBNAdSJ
	 IEROVEYttxuJWGce46NxkuOQiwPUNulVK+BbLmvJuke9H8kV/Vyus4ZXPvQiqcouoG
	 T515bttuR631hT7dEF1yCkwakgd9mDgAxu98lm6P2A2TOM+HHZTOIq3wwEFNrO/E8N
	 WTa17VJkcOMv1XJiYHAAXTBfLxFd9759XdTRRPAOY5IDSbkEgQSW2hpt7qq+7RGTA3
	 yiywXEjCPmaEc34pBVODNqp5vMC9RZY6b9AbLBpyeOjxnDHuRWUUqb6520kSI8tM7k
	 tRp65zeSdiRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F85D6AB1A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517653368.30144.8451905536923725883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea8df8f175d65a4ff0b808f0aba79ef8b1a178488d763cd769f42e34c2ef113
Date: Fri, 03 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775176533
