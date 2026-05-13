Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DCA3D4116
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778654434; cv=none; b=ho6+89DqTRILlbr3XwIL6XSA3jwE4Kd0Ve+yv6VX+JeWF4QefT4/2jLN+eB3SOTiBO1NAMyRG0Fx1K4DMC8dgTdPzp3G1NaAvDvNJpD+SUoZgbqyyzjV0mcZpctMWLtpSMBF8nDD7cQjoYTX+ReEh/xJZhkMrjTPn9hbhndvoWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778654434; c=relaxed/simple;
	bh=TRhm/6BnPHj/DA2xtYIfsOAptP/WpV6MEYurrke81oA=;
	h=To:Subject:From:Message-Id:Date; b=W9nTuT5G51FnXYZ3ODh1S0ka/P2urO8o1TBwj9YzJpDzvkFIvcYJzJuYasCgbYKMZey6VA4WpgAjCHKC5bNLYv2aAV2+LgMBJ9fxqFbVUASodrmGlZgVOWnkIGHaCR/P9KOfb6BTExi1/fDh9bx3BjwJBXrDWX68rIFtAgk6uFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkWSmaLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkWSmaLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA77C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778654433;
	bh=TRhm/6BnPHj/DA2xtYIfsOAptP/WpV6MEYurrke81oA=;
	h=To:Subject:From:Date:From;
	b=BkWSmaLIKvOoVy5oxGlKJaj3wTJE5qohb6Oi8/z5aTO0fzS9IqJfn6GH6zkrre/v7
	 YrWpmhc15VNuG1Sp1lbR6nKgtMvmn2126ZD7AWdL/uY/VbNjdAjcEWAvPuyy3QPN4G
	 fmwg7KQrbJKyDSyvrwOyu9S7x8B62PrWpxLgZbPzGlRjDEIvSSMM0aAiiJuSXbU3pJ
	 nLm9f/oPxu2gupFRXI57NLFL97YwlCC+P3tXDYKP6xTQyQrZSltLopu3qejehvBaw3
	 pkxlYM8DWrBTrPZYN3BslNkFtlxaXOLS/eifOFxjh+Il376rCZOWOkOIOpvJyvz/qd
	 97StifNI7m7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76E7CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865443373.9938.2333630400467083029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6918ac5991d1ab2192483c0fe818d865a789416c350f24a1f5c49b1c740c5492
Date: Wed, 13 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778654433
