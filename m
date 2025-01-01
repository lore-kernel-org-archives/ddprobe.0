Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB83942A92
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735729553; cv=none; b=swktzR9GN6psjIafhdIsearzcvVTZEZEJjVm3fWZ3aoklpdKR4hdFrvdzen/4xUvwBBvePy80OObLwzkazWFrUHKCgm8JW1yJcLoshsJoEzGxZ7trv4U1dMEx6VYIJxgVAP8/hIYKT0tqG+wsi2cw0Ha+kfSnhXFcI8qUrgWkM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735729553; c=relaxed/simple;
	bh=fhpdZL8Sya6IA2EVWMi2JWIpmKykrZ8f/0CEeHhL31g=;
	h=To:Subject:From:Message-Id:Date; b=eYvXH/uNdNe5gkRVTtjqv6ZOIbEE81rXoD5nbKUaXWCSSzU0d56sXe0LupfnD8M6vdRSsxMzPZ7gnPr7ZhhaiszWektrcHohrpwe3Qk4O3zqAKCmhU/3RqE7VK1JNxp+Tf0XW98gLbXOdHtejVpTP+D06tggYhAPx9KuLsv+8SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLV8hPlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLV8hPlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C5C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735729553;
	bh=fhpdZL8Sya6IA2EVWMi2JWIpmKykrZ8f/0CEeHhL31g=;
	h=To:Subject:From:Date:From;
	b=SLV8hPlrDYp9T/2QhnxVeQlxWSbwkMCSPK9dWUtNF2DiwOromoB/JGLZQWAUIy9jh
	 xQB6UCwwYPQKc0irRY0BJV2peJyoKQuq6otqr0IWfD3u8WoKts0555b1gz1ceK/dfA
	 zRy/6v74RJrJkK6mBnx7U52yx5LWGuXPPSb2fQa2hJUDLfoIZodZoe7Fs7ocd6vzSs
	 TcHlDP7gfU5TPAJ5tUh65OgRcr8VMF8Fboq5Bu64e3ROPKolShTZDgeWpY9V8H/ZRU
	 rSYQs8dK10xYbxnDKKBTUfFEQtKH7xdx8V2Do+qid8ZLeufsufBJiLJ/ofYXh3OF7P
	 tl7MI9MVZNJYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90893E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572955358.2078.13149637534615102556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e9f3a90b4d4e5db02da8d3035f7a8c7a2d66f7e3844c73640ab8a2f8186be8
Date: Wed, 01 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735729553
