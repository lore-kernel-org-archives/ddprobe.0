Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9BF149DFF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719067343; cv=none; b=kgPTXAAf1ZSyFhdrWnGqmETZLn4wpVuzhl1NhY2tPes5qkA1KGN6Ch/x6MEw2NrdvoRioubEPAxW48fgmk7xZrWlEAZU7jQGJjZkQQxdPhJafhuJCZH03GwNRkLXtE9KFSLmwGaoUMjuc9XL4JbV8Tc0U1epgNYbjCKDg5KcOr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719067343; c=relaxed/simple;
	bh=vlzrpNMrpgRLz+Z1N0xuE1B4fmFhqmfeLUM+8h+ZzTo=;
	h=To:Subject:From:Message-Id:Date; b=WhTceg+n3/2nsCLe+E8//jxpcDmBQOn1bKyJFrhCcsyhug85F8iC4Fh0hPe/O6GsphLYLkr9K49hC0/+7HOLKnN8dNon/ISIia9fgSZW3T0k6GRsQZcgUWDsKNSqSWs64S8Zt4ilfUDCfZ+L7OrErapcXnMY+S7kElg59ju1kxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce4ysyEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce4ysyEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92F3C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719067342;
	bh=vlzrpNMrpgRLz+Z1N0xuE1B4fmFhqmfeLUM+8h+ZzTo=;
	h=To:Subject:From:Date:From;
	b=ce4ysyEcY40blbAEB4y4GdCkXzpj3vVd6H8ChMSpJpsElNksGHdiYHyUc+11YMF+v
	 uwpXdr+skMBbPg1IesPdxnt3MHAzOLRBa13GXbd+5w3kRVVjLwLiWAaSOkpaTMnGHS
	 PGpjYEUXUPw/TAPg2hM2TneuVR7mq04SE8UL6KnN4a7x2X8wTcsV9cJmZlX9pNHfcQ
	 fpQkkauOJ4+HLRjx233W3MH8iDiiEKMAB8pJ4+8Fc2mMx0zhAlRnQjUj82flXMvyGQ
	 TfXLX2zPHv2xwL85ZiNp1uYCv6rYmi4rP3J6L4d89l+3+1wMM9bxnjAXTRdPXMkEu1
	 kk0MWLCbIfF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D8AC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906734278.15916.8978975834516865704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dab34981446bd974cbd5f3fe82404bf36e02ba1b96d16fbeb71f6a81c267b9
Date: Sat, 22 Jun 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719067342
