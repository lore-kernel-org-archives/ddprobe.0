Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0506520370E
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729017954; cv=none; b=gImnF286CqP99OTXJTJ/eTqxjPvofc3BU1gmCv011HX0IwTnkcqRrMFn5+VV1Cwf0ChgHOU16UYOVM3XTChDiB9z4USBFrl3ggkxbGQJlCF5zZu7X8RaVlPgkcHNbEf5fMHABb9qSiqwRim5IcWHpoct8xsicAYDP94yTZj238o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729017954; c=relaxed/simple;
	bh=QPbKbZje3P8cIGThlI0zfx5kf6R04xe07Ocu7GvJIPo=;
	h=To:Subject:From:Message-Id:Date; b=pIxh9o9KuYTL2S+WrPx5yRTBOtPnqdGurzgsf8dtES2+waDBdYCndQjEfuIquUSwF68Qh1KdD098uCN6ArWdlNAsOippRftisNtYkmC61sMMqgfG04CPHvymuyQYiOh1rJvi16m042BpclMeArECkbLs4Dq1KY0BXS9oIFAXlD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceZ0dpXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceZ0dpXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC23C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729017953;
	bh=QPbKbZje3P8cIGThlI0zfx5kf6R04xe07Ocu7GvJIPo=;
	h=To:Subject:From:Date:From;
	b=ceZ0dpXHJAqiXvK6IipJcZYM1BfgzsfbE4Rz8aRbOMuT0PvmJ71cxR3ero51begnh
	 Ni/kL4OadF6ob4ranwLoF65QJgiwZSbazKYiQ9fD3UXaPGLxUp0wfamgJmeRwt+klg
	 Zi1gkwlfAyAMuahkjUYGt7gUsG2YMgfKUPE3rbBN9TE8ywAUD7z5z+a4YdG+iphtbg
	 /NQmkrkXJ8xzy5sDAQHXsfyT9LG6rGkptOsxzeMIRmUjIdYP+5t4rwCyUc5LPCOCHe
	 r/GSbI0dwms+JyNly4aaTSR/OYMFavV3mAyHIssx/qug0Qb5u0qP09QPzGTCOc70sk
	 M4PaZzbm+V+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B2D1D896
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901795359.6308.16258619899569030213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfba3938345b3ed4081d3c7c0eeb87019ffb9ca8aec2d244066d05c88197d49
Date: Tue, 15 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729017953
