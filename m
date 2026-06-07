Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3360923183F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780836274; cv=none; b=RaQlIIOTZYZ9djueKcR8T4aWJsaN987KN/z9MNBhQbH5jvf8pAHZ6XBuBtUPaAAeiW3xGXnlODQQUWaQAM+OH3xhV5Zsy3f/Q/Q3VZRRgDPCW1pqGBo6yXShkLWGkFUDgkP3sLuZHY7fe+otOLhWLnBMjrX28ezrdmhXB7RvaPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780836274; c=relaxed/simple;
	bh=5ssXj3+vvt9b4oqNbbx/Z3YuDhPMEBzgh7r1/mOhiZ8=;
	h=To:Subject:From:Message-Id:Date; b=FqQRwyfnq65gxfmzPYU5kYivMU2phxDxyvmmpdwBxBiYqj43kUDx6Cu//fGrrvYq6CmNImV798tupyrLj1siqK961Cf7yKkbP2cfSzyufyFaabJG3DdDpQf5tearVBjYex2JRhfwl5f+13YuNvCEBAQbUUP7tWAPBY4aH7JX42c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsb8zP/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsb8zP/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780836273;
	bh=5ssXj3+vvt9b4oqNbbx/Z3YuDhPMEBzgh7r1/mOhiZ8=;
	h=To:Subject:From:Date:From;
	b=gsb8zP/RxMO0IiOKGXbgC8X9su58mDoV4YEraAdhI+jpL6J82wYZZqq9d9b7oLa5g
	 PI3k/XZmj32fgqOt57LrJuj6V6xBI+IfkFVg7WbFNU2RbVw3bfeDTLXSUy8CTh8JiP
	 awpKZn7Wufi+wKxhvrnmrdtDVnDquEH23pDrymzJCSUvR6X8usyRXzjfI1BUhO1vcE
	 +6oGVimpYIWH6ASUEd+cz2/7kKC6cAkKHcfwrSkkRq2cED9KvZ4gckmbupvsCJyrnU
	 2lWTFtELg1daNiqZWmE2wcLfgSXapohbC9XY3KsRDXygoObbrcNmClF2f2bYNLyn3o
	 7KDtAoC9hpE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0518CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083627368.14278.5447256887182960687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a4450d477950c202e823a797becaa0dbec781a21893ac6684822dbccfdeeb0
Date: Sun, 07 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780836273
