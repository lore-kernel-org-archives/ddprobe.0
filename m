Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC16343D9C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757426394; cv=none; b=kM7rQkAeb6fGflHPRl0fECWea9ur9/EJF6L+AM4WZLyBAijvTo4bjdHMZwdiZQ7N/51hy/3XI4gfRhf2+1YzmgH4AaVfShDYtIX2KtFu66qt23Kqsov4GwMjcUSXwUOLaoQIALnW7Jph3imZtEr1dcVgAbkKuovBM/zTRCGcT0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757426394; c=relaxed/simple;
	bh=NP0IUkJxKVlbVOBZ+aeF9eAvnidCs+szuApkQcJG+zs=;
	h=To:Subject:From:Message-Id:Date; b=d4oY+E8pMVFGxAlten642BeyF5bHlMpdPsbW69hDd0ARK3PMtQufvWCQWuJoeggZ4b8gTX4On9IX00bOs5Iy+iM5iADRvnY3zU5jeMTGM22mdyWjJaKjwEfwKNqPIN3Z8ffxJMdamiYzQg2VKMZyvp5njXQbRY8diGooQOvQuRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7x/bbRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7x/bbRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BAFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757426393;
	bh=NP0IUkJxKVlbVOBZ+aeF9eAvnidCs+szuApkQcJG+zs=;
	h=To:Subject:From:Date:From;
	b=c7x/bbRN4KrpgDo4JskOoxt9Y4gB/OBYvTPJJI46Ewe+sIzFiHGHwqp7D/DybQH+c
	 nRStPYagz8vBcIKnZulE+4NcLnQHdL2vITTQK8AN+S0fvpJ4vSGXNR1p+5J9okddRb
	 b+QXMijGqHQQ8pZyOtVPZZRXAHN4ZT+8iMJeft+5vrODBn3T7pMshw/ql9Ubf+rPCU
	 o9lCwYlrXLSsWpyls34oRFuxr3TpsCwK3ygK5sv8S5NIAFp03tSphjfHu0JerAxgK7
	 ea+6UlsRFNNjX5c8my2tso6xnn2fK1khMyAqVXFD2d2p+yvyb55LAk18yXBp9qJdB3
	 pxVJUEdIIVfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F1CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742639358.18501.8735424157593500485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d6ee92be36f0e82aaaa4176fe5fe292f13c03b2c60181706bb0d62467f8546
Date: Tue, 09 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757426393
