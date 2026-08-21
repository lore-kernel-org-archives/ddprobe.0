Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F2D42B75A
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787329234; cv=none; b=tpNfE3XGf9IOon9EZE0wArcbh/urUunnXvYoVcXeGEnBjpZjHtgdZgz+WGhiLxYpVoNI/kTvXGM/UYsvATZE2fbgbw0ucaX68PL1+j97V4zVjHkoqYDNm7H11CE9z4PGULoCYwCqbDM5q1HWREJEdZEEp5OpsPfW3A851v83JUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787329234; c=relaxed/simple;
	bh=iw8i0tqkoDy2LpmFD3ncQbsNpmxCsKUyog5QcBByGAY=;
	h=To:Subject:From:Message-Id:Date; b=AHdu9zK532WtUcqPZUpzMdGvFjJxI5vKkW8cwyRJFvmwErCddsAp7k3/NjeNQGgDjHu7huCHxvOGcbpxmfwsPYFhvgGIDhsUzUbcDnPIb3/d0TexF2QpwHebxNPR0JCLcnYSGt4fMcAT3ZIt4PS1tDYjEo91BKcaYN9e7Y4x5bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sob7Y+Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sob7Y+Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF585C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787329233;
	bh=iw8i0tqkoDy2LpmFD3ncQbsNpmxCsKUyog5QcBByGAY=;
	h=To:Subject:From:Date:From;
	b=sob7Y+Z1crtq8pIHdx3WwnSCZlt1fskH8Lf2dtOlMkg2/aASOQV8Fz7OPyWl69qom
	 M9GNgUx6X0hAGRWKkqZKz8UA3sz28xjRQP6bLM0hk9DlnLS18IPQWPqh6V4Xmm1Xsq
	 TeotiyakJpLWNRiC9BtcFGQPczvuduBNjlfQbjMoe2bs77D6JLsfz49pZXcxamuCYT
	 4gv8rFJ1UxLzin6f2Q0WorfZFn7PCIiX8tgO4VKRzdiYMmvWn98PDEIrDyvbacChHx
	 qRWE/Sh0jWydQ8Blo0J4CTXhV2g9jFvL49GMoxelLYuKVDH7SxObMKvDzpDx5hdiDr
	 trdVwPsrAXgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB180C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732923369.3898.1688056171790938725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0514df0306276a35a2113a7217345a04c10dabfa1905f28e4ed8b45d247a5b
Date: Fri, 21 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787329233
