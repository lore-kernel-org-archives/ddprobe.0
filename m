Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6596428690
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786946434; cv=none; b=iI0V+lyu0mt3U44loCypJtbUQcnAwwuwLlfsR7+2ocJLaDfcqad481wVPdc8RVpSiFhBlk0rhsEJwIlaubwXJZOvVXN2kp2wtjdXN6WHcIY47+hjnLLKzfmzwLMGHgUGLR3d9rDkRCPU9c0TRGp4MwNUICIcDNDqrUmxC4y3B1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786946434; c=relaxed/simple;
	bh=g/qRObpJecSVEIucmzELgT8Pi90vNx0wwU8Q6mhNl2k=;
	h=To:Subject:From:Message-Id:Date; b=HTd5773B8+d1lKwXult+5lIuaHNOVQRyxL8HNlW5Rxh4V+xuIejSSMkc0PVffeHDLdg6yxIn01P3kfdlfAYnD5WnjIaOivBANR0UrdSCZoevo3pxevutyhrzx+sZEo6UWr4tmF0niFlGO5So+AHFo2TMBAspy+KzOVHA2QSTdN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSJKxQje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSJKxQje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE4DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786946433;
	bh=g/qRObpJecSVEIucmzELgT8Pi90vNx0wwU8Q6mhNl2k=;
	h=To:Subject:From:Date:From;
	b=QSJKxQje8ycveKaa+w6ntGo4h1UPU2vufs+OCV1FkAia1sTe4/s9cb2fB7GAMasSU
	 C2Py70rg2Qu8fFDYOUSSNhV5dukCwotIo4GW8IwrYGbvIZoKYBvX4uKgrWE3YHRbUh
	 NHvOkLlcTuqEpLJwnHcGjTHGbaMURJ5Yb+XZG6etxHklWYogR0APN6poDQkko4DArH
	 5PoLt5Wan7whaK917RqDthergD4IGGkut8YhCAClz0T2ryB5R/f75W6sCbuN1TkCaG
	 Rn0svvuS3luU+58jHoaohmYModU7sGURH0fF9nSiPtruPPiBqPb8cYlputKj8bIke8
	 7c41tuEKV7QUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A47C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694643371.14563.16279576304559602564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c169f45b2ce79d59f5064560b4e3a0275db0f4154442ea1b8126a17f7a51950
Date: Mon, 17 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786946433
