Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41603A1B5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774760694; cv=none; b=N/UzMEu2WeMqqPGiNInITg69HZoxUduVDZNvG2DB0e1jwF5PHcAoLnexBCM6OBgVoi4XtEAipPh2RzqLQNVoENL/OOiXA2QvjGE3urFefKTpLgAoz2pKFuUvhbk8IqXzoC/bNkfKTGohtuakeK22su/GImbCVYFd7EWWY0wsqQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774760694; c=relaxed/simple;
	bh=cKtLaXMvcVrrPU+0j3+AmZEfhKEAO+3uUdo3oEx5MpU=;
	h=To:Subject:From:Message-Id:Date; b=cILGV1mHn+v+TZXbuUDQdKauwEb4uhMFt/RcFvSJ56qsEMSaOSfQW6DbzH/UteQkJ9nm6rQ5x136HeM+gQP2C3GWmahBAlW5gzaJ3XGyELWBYoslAqhkbBP8Kt9oId/g00I0csXy6VDlmNNywiWMR0eDQdMh+t88dR3EeBzI+nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPIWq+UU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPIWq+UU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F46C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774760693;
	bh=cKtLaXMvcVrrPU+0j3+AmZEfhKEAO+3uUdo3oEx5MpU=;
	h=To:Subject:From:Date:From;
	b=ZPIWq+UUfj9AYuUQzIz53ki3mZnC3AoWMty4MB8eTfcYtlUKWr8oZ6tBFXggBf/tg
	 QVYLjvW2c5l9z+Hj6wLk6Hh9ZqDKuEgL8kNfrzs6fV/02YhcixlAE1dbVdujqaywLd
	 BTQmm0W6WvgcE7fLM4KCvUopZFRKB0oxGfQyw5bHJ3AAAqcps1wrm+pK4OwdVWyQ1u
	 oHM04QUfFqu8k+uH90xMZ/oW15p7FB3gasrymmGyAbhbU1A66kcUOWoHY7FEiBx7pZ
	 Y89jfMPU63FbdSxnjKrhpJV25ONtuvMTpv+0OabYDjzqG/yylbRUGj9uzRZDM9p4kb
	 L+PY15feaxt3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9617BF3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476069359.23989.9590698337710163086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bc3085e2e9394b651185a759e40a8847af21d4354b0d17c8b479d691cffad6
Date: Sun, 29 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774760693
