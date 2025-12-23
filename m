Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C210F1494C2
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766508833; cv=none; b=e/r3xXFoQYyFbwOYw7z+y1Jj04oKZh8LGZUq8QbkUEwjp2JNBJVoQAdAIs6g4hL4A9d09Gx3FfdxhoNiQLji9Hkk9d1Zvx9QgYKbTs+MSq0LePOvBFPrBTJV0jLtN4A4HwZErushhVBfrbGcPC4JruJU6JrMbVXHvzvoA8oYKlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766508833; c=relaxed/simple;
	bh=Bi9OaQ6kUMMzpCNiYlPyKmhsQaYTBF1WWGWO+IPwyrA=;
	h=To:Subject:From:Message-Id:Date; b=EtQCfpgP2/dePHqu+pARCuIci7OAtEDTIeLxUXjfcQW6RDPp3MPAkrHtYIPoFRj4OQlSjPk9/0ou3nFuC1NXX4fdSW+Er2wGZt2GoGwUDIQjQPkkAMJLfxHrv9p5OqrfZl8cv/yeQEF5eM+JetvoymwXKq0wMRvMsTBwnDtvFig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT+VK5Vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT+VK5Vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3205C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766508833;
	bh=Bi9OaQ6kUMMzpCNiYlPyKmhsQaYTBF1WWGWO+IPwyrA=;
	h=To:Subject:From:Date:From;
	b=gT+VK5VbeQPSaXyhU5gvdt/4VfRrUXNIt9dSQFf1ka4DTvIHOeJzZHYGZx0DuzkEr
	 mTzhe/zHJreGlA5TR7A6CA81kPCIGsdGACGteiVqvi6aDi1lTNF2izvolBrAYAY8TZ
	 4o3dq89jbs7emM5tgjcI5LEO2cR31quUgngAjWtYvOGXVL0D6qYcwpJ9m9WCYz6SNo
	 2ABC72GoskDWNH1MoJuxvZm6nvL8CxPU/K+IBO8wr6trtK+3MbC/lhpa16+Da3FrtM
	 2tUNgBH90O7dbDze/GuTYeZeKHOTrRtxO9OUdEYLNb3LXD/uxvKZKkOZd8dG+3mubj
	 KjMCBxDGjkCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F5E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650883357.10969.2034677985646769329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b5f8cc3b50ac11c40e59f1076c2bf73e0603e2ea19e3ac6392021d9ee04310
Date: Tue, 23 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766508833
