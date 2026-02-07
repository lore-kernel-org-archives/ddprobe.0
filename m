Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2094D823DD
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770444834; cv=none; b=BZFMW/rCR2+tMOFS9nYNo+ETvIKBXdhvHCZ115VzGVw/hfcPDc9ApT1cLcF7QqhwHyKbQRNl03rGKcTul/vp+E8VwPaqJScFnz82HVx3sVa5+IkBDIefmkHhDam5PDBDldoMNtMmFhBRtEhGlmC6cHMrE6cPM3jcrsJc6nGICvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770444834; c=relaxed/simple;
	bh=Vvxpnlm58PMq3ksCaPGP5pxO5pfnWYfAHWCU2+kaKbs=;
	h=To:Subject:From:Message-Id:Date; b=ZQq3j5L5zCO3JsvtIM/e1wu497Mr3jO0e44lIDGoAZvOX3nvJpOVLOykMbpMYZ6ZV/ugShPJVK7+JqNEcu0vGSZXwgalGZmwlFu4SiNftoZ7jlOAlslZXM47iFD9trZjEEbAqGrwiKGRLQpoiaTjavPZtEw+rkVbqs3drfxAGFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDC9dLkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDC9dLkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB1EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770444833;
	bh=Vvxpnlm58PMq3ksCaPGP5pxO5pfnWYfAHWCU2+kaKbs=;
	h=To:Subject:From:Date:From;
	b=IDC9dLkYK2Y8gGwJDxKxtyI80XjizDPWH2okENbDQ6uc+s91DhqcVagcrFI3S9rly
	 REIUFppMHhYlRkp6SRPjuIQoIJZR4qzvCxkB7zPpPiDn8uXgNy79ZIKe1CZ8doMNqc
	 x4aw0ffeAd2HeOY3cHaYXPo+w7Y++O+9JUnagAelnw+L0Qxtra2gLzcro1UhZOgbNi
	 d81boBgaGmtHGTZFqcLsjrU37WWWmfwxmdRTXbwd5QScACgSpyJXGJYJUYeFD8iPc+
	 PVLrurQzm5n5ofpVJam86iUbG4D+5ctER22sP+mjm6vtbvo7pVrk30eX5FYWLf4bZs
	 J1hrmWjXVfWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7EEE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044483358.21492.10976622000476456456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21ef379d940239c97b8fea5fe2ddda017c767813e05f6a7f539c526c423675a
Date: Sat, 07 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770444833
