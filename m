Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7126C2AEFE
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717511183; cv=none; b=otrrm+lej7ki9NRyGpO5XCwgSJiFy1K+LqWPRIML4UNgl0SbJIYZIx0juJjd4tLXRy7Wzh3IJ4ZeiKEu2Z0Bh/q6ts5KH1cXZVjlApXnmuCT+YBNweNSv1zX9vyN1spPGs0B+jQCDJ3MQfgHDORTRLQaIcrH7K4tANJoahg9jvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717511183; c=relaxed/simple;
	bh=U3FHak3GCRLgfU2QdZxucPz4jI6FuhdY5MG0wRNUjvw=;
	h=To:Subject:From:Message-Id:Date; b=KjGISPnJdsDIrmol2Wgdn0PzslGAmBOFmYaJNksP0QmH40xuCp8osO9c4RenNvB2HDrNtSN4XOjm284UupwsMEzevVEYU+/JJu0HiuO4K+Cv0FjXHzeXOIbROWXsnGZiYzR8NfECPntuEhbiM4R7b1d3kDCSPrHVF+nHu02DFpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX+CFxEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX+CFxEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B9AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717511182;
	bh=U3FHak3GCRLgfU2QdZxucPz4jI6FuhdY5MG0wRNUjvw=;
	h=To:Subject:From:Date:From;
	b=VX+CFxEksE0Ak6md8eqmVGTi5BmPe38WsHtkvThd3fMRMk6HDQPOMp5IFymCpskAq
	 ACAO+RQwxljlvdbOVWActxSLZFZ+RxdagcpGKOJ+S+db8N7+aVVwUM5LTbq4V22SXl
	 lSzKhUGa+ulLil2DO09et32Lg8KNP7vTz9wqJxcZT81muX0VOi/e/n0EpDqHr54UIx
	 Thp8yrURim2Wmd3tGxJ2OMUkqLeP92+GT13iD2AJmhJILqlBSft+r3eB3nxWu8LC5X
	 /TmJZ4QGTCS7CXlbiiUjvvvwEjn+4shalGicc5/Z0/+8Ff/N8+WaR3agxQvCVUqVi/
	 DkIiMIbAO6gzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00ACC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751118284.29019.16990588562699015575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7a0a8091821535b6f1a0971f3f4d512bf50b6a6b2e906706b7f3f493f30f7c
Date: Tue, 04 Jun 2024 14:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717511182
