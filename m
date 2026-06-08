Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CE218ADD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780880074; cv=none; b=PU/Gmgj4PayCgOor9/x2zijIx8c1L23DeQ74m4eCjGdrAso1xVPJQcn4PJpRkWdVRY7zxg8AZmPVmGlWP8vlBfbJ+eRcduwhO+vlH2nEeSkfZnq4mpaLRB9AgDMVVY6UdLCDTFJErb/P1gnoUEe0h6lKgON/S2Tq1Was9s0q8ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780880074; c=relaxed/simple;
	bh=PJCWcFio+UHzbT4x6SWr2wsvj8tkab0ya/PiRicq2Wk=;
	h=To:Subject:From:Message-Id:Date; b=Ra412Xc/5mVoJ2WidFeh2Ipo99Pt2SMqxj1Z6EJPbUrNdwMVIcsvhLRHB4cwIT0Wtiq8yGal9/WFQkrxl5azBaHzj7NLkdvpfnTapTz1ocovPuxt3CdEBvylZi/K60ZCuwuCh3bh8NLOiaOkmP9DtlGYAQfsKAYkFdHYzvT0gUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kwpxnk+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kwpxnk+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFECC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780880073;
	bh=PJCWcFio+UHzbT4x6SWr2wsvj8tkab0ya/PiRicq2Wk=;
	h=To:Subject:From:Date:From;
	b=Kwpxnk+4yRtzO8Xdpr/9KX0kItQwqSF70Y8e5XbXnphA6HbFgInqnoNfHkKdRw5YN
	 jScTnBIDGoufOl2c054TzoB2UmJZizIZ/oip0+TX96ZGcdsotQoZ5fS0iUxrpqCL/T
	 fi3OE+dayLOe/LzWzTMa+zYHXUeyPf5SJpBzbD1NJzsk801u9caicDQGd1J0fztHVh
	 1C0+vYy6V2BAgCzh0uTd36F6HYCOu0Nh/UePQOm1W+OcRfb9fsF4JQN3P4r/y2FaG+
	 b0mFUhT7aYehFw5ZAhii66dcdqF7wSBBfRw6XVjAqzhhaMIGRJvVZcJu/Zl5mTLbxC
	 0yCzPgVMH4Dmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2DACD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088007368.26409.14732984109834841345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3212d2c95c504fc7f12f6fd89f6d5bb160ef4489837619f5ba44cf6fde88d8d
Date: Mon, 08 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780880073
