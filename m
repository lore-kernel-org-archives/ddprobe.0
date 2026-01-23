Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E2F2FAC12
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769145834; cv=none; b=sg/7BjWQ7/oV0X2nWtlTDQcGKYUcMoK3sJJKG5pfcGAqSZISRXvdSRMblzB7em3yH/IWzuQEWZcWEpBKZl8ZKktuT52XrGgKfq908Wu8nHpOOUY/uXJ/QoZII9ibx3YiAQ3TJx4lIfNB3mRUjNjTeaYBn/elPaHRBmZRRK3ejf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769145834; c=relaxed/simple;
	bh=zJlzVLb8ZjlOG/OhDpPPubqQjxfJyvdulexdoQHr9YA=;
	h=To:Subject:From:Message-Id:Date; b=RXzoJTGylSy+MDOgICG/lCHqyVdExejSclIdC/P1kldXjIop1WbFOyRLViP51hHGb47KBtn+awPQ6ADwcuXvVO6iZ36jNdpoj9t00qkWf0wq5yvKEvSKtyLgN1v7kx7WPV3K1Wp1QfTAk7GIPh4JvnQ1cQ+0bpOrIiHn51v9nYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqbR8x4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqbR8x4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3626C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769145833;
	bh=zJlzVLb8ZjlOG/OhDpPPubqQjxfJyvdulexdoQHr9YA=;
	h=To:Subject:From:Date:From;
	b=sqbR8x4sDcSS8BeYejVZzp0PZ4o0um7sFg2XvKJ8hWzHpTizcuX9Ny/+eHS6hC9LL
	 HkNHx0jF5OweudNRrcgzWh+3YlpZDdaiTh8Dk/HIsZDDBDOaG81eeYQD4e5vrjBE/t
	 ULPp8Ha0hd6t7ysuUl1mYJ9DK5sJmFDeL5IK44cwqF/Zg92uGCmVMab1A7kuqhI+1P
	 8z/h/J7rw/xMxHWxk4/hS2g4IS/+ha2kSlvfus4CvORqwXvXfdfZtNwl6CGxMkqxzI
	 Gf4koiSCpynoEYGP4dsySSPNieyHs7w9Aj39nRdnA/VgvIo5SOwpncymbW8sSDqwic
	 g5ET8BgR6G4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93387D6CFCD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914583359.27575.15645789847129666713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98df9245a022bc9faa81f1ab6ecebe11f5d4dcb512be941e8a92f93ede497cd8
Date: Fri, 23 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769145833
