Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCBD175548
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718095103; cv=none; b=ltpPldYVdlkrLllXFxwuuvQrv10oqy4VPN+kGHbtLAF4V9f5Gdi+RPUwOOzg18u9sAENLF/3KzLZ5JlysaLispM1pybAtllnOesC/jegDjer9R7AdMWJlFjjdxdfEy9NXhsCqvbtEHDAoGlK8N/H5pmmPOK03bmom+7TKK7iplI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718095103; c=relaxed/simple;
	bh=Is7Yz4lo+DfHkv3h/sIHdabLnmRzkEcPy46hfp0WIVI=;
	h=To:Subject:From:Message-Id:Date; b=hKZRygniWgTp3jh76tX5uhLzDWY3D+xM29ykWnhg87koW6q9YhJERpBFQK6HpbBxEV1sryTr2l6rP68NX0D/LdoDIEqA9qgiHJaKy2YgDWPn/z3GtVTpM6JaONt8rwC41FnAGe9Jk51QaZLfr+xud/nQ9tyj2XaE2UFSfO5edCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRf7B1zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRf7B1zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA956C32786
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718095102;
	bh=Is7Yz4lo+DfHkv3h/sIHdabLnmRzkEcPy46hfp0WIVI=;
	h=To:Subject:From:Date:From;
	b=hRf7B1zHGuEgx8CM54ZXURVU1y+AmmkwQ5mdl4YA92PAcCrL6nWt44yagOlLHOp0u
	 0C0Wz7R1jctFqbwmZTyW4XXsOP3tFUQFDB1WP1YTlKn9T9IVVeb1YmwovMrWlnjIqy
	 rivcnzGZ8PtNDIpwen7HXcKA5wuA/TJhO5BQJGF7yBk/JPWDJhDaIr1OGvpjlSTH5l
	 LBveZujEeEYpVaI4wC91mq+nC3uFNBd3aPEqYFgz/0mAHHYshYAzMbNBRxDPlSrq4L
	 SvUDN1qdUrKZR0BA3bzjfRuKA16S81uLtNbVibG6CoF/VsjcQn0uqaONMp7mdlunfL
	 KmIwV/G5L/VIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57B8C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809510279.32435.15588804013972117613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c6918b2cf99bc156259c1ceedf5c32dbcac6df72f0034f9c15af80380d6334
Date: Tue, 11 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718095102
