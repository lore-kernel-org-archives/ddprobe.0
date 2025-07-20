Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D866D202C5C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753013993; cv=none; b=f2q5DwThQ21TLIK6VG2jGFh+thgmyaP50vnPuHDd6A6ww5Qz96XatTiKTtPqmWxGscz87JtaNitiBaSDQD3Vfl6N8TAelSI6hEPesql7iMBlVPIkznS36pMCgAmvKhZ3BUjKZLaYR6xFfa8kXwEMxzUzbyq8B9vsHpNRoUWma0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753013993; c=relaxed/simple;
	bh=Rnpw9cw1LCE8VD4ozhquG/J/5y6yw5PI8EkG/frrvlg=;
	h=To:Subject:From:Message-Id:Date; b=O/DMru3w0HTYqliI82j2pm8n7ZTZd53SUi1cO/84sxE3l7pQVV/tzPQeyjEdQMg4NboiuzYKMov/JOJcGeBfS90GyFujwvjwYDAxOckvPfRRMmKNcOlslQBvi6pqvspvZov+5MVD/xBhbhYy5EvPKihOKMS6/ZPubsYOS2Ekn8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLphVsln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLphVsln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC99AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753013993;
	bh=Rnpw9cw1LCE8VD4ozhquG/J/5y6yw5PI8EkG/frrvlg=;
	h=To:Subject:From:Date:From;
	b=LLphVsln9/WvcLIOquAO+6mCBl2Zw0jonEqAVJplVdGph+bLgttC6IoFhDFvFICCR
	 JxtuGQ0R2lF0YrQH76nC/h7rv0jtL18RIXYThk1AGs06I6wx5hzMbj+s4I1uihOuWp
	 8qZlhuMQQEfL3PYzpTbUwjCy/72jPWwtdSD2nHb4siBt7pLvUi3XDRQ67aieXzUApS
	 8W5KzsX0uXg9iB7hM1tYnUYW74XK1Ib8KbmX06f0KneOH58YC+gUl2geogGO1tPgoO
	 t1Z971MxFX4SZ4sNea/Gd1eBC0j3LdR0mZ23BJUZbe+7ZpXIoJIR7yqyAqlvJTpaHy
	 h4kSnJlT06iRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE15C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301399359.21419.11150051409722409372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c904edcfdebeb07ae9f4aaea2db357bdc9c52db65b51a3443b5757301a3f1e6a
Date: Sun, 20 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753013993
