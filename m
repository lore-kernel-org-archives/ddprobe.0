Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C91F2C5B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742932195; cv=none; b=IGY7GicIDewY8k2e2ksk1KtVyxQfQaJLj51J0JmGSj6p2PYfbxFng1Qe97TAWYWrXMngHT5SXTi+l8Zt+MEYT4Egx1yynuhqGgKxEeN1vgUH7q6AXocVrunSojs8ZI/I8l+DHw2BAjE55IE4uECTJGvftBnLRtkpVjogh66aVS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742932195; c=relaxed/simple;
	bh=lPa0iUFexWV8c1qvLWQjz+7cekZ09rZsOJPnSyZdgaE=;
	h=To:Subject:From:Message-Id:Date; b=uL9p2DkevGg9/lZ24oBdtg90SND4HNrT2AruQzcIhPgqFzJnUW2Rhewx9pSO8ehRTwPPIyu8uD6amvi/H/UK3eqO+xrHUHxB1rbKQKn3Hxt6w+6JxeWFf3a+10vjXmR2+Xd+r18HZOKkxokNyBa6q4cCnSkklQxhLE6pQ07VcdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psF+yjOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psF+yjOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD15EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742932193;
	bh=lPa0iUFexWV8c1qvLWQjz+7cekZ09rZsOJPnSyZdgaE=;
	h=To:Subject:From:Date:From;
	b=psF+yjOlHDmy6j8MAX7qNDuerzvOsolkpwkQf/Ztowm7AjWi9aR121lV1vtODQY7y
	 xqhMa2A87fyIRwuYAXrj3Wgz+BvqjIYWni6onKa6GcakCmmOD/9tC24dSBPCttSoPh
	 I2NxEkkJ5F5lyoQUn65ptvQk5De2+8H+LGcXOVSZ7wdgRmKq30GY0EZ5aXtaa/DPaH
	 7lr1cPbC6Aych5m8tnkW5WdCjJBQGlgZ66HABN808OgNIWRKHalLpHq4tCnFVB5LBr
	 S+iPzNgCxtNniDIfWE9VSBYlskGe8UQYlcF0FQn/3qJw1nD+HNx4WxJCmIl9dOdfOS
	 DCjrDtgdR7ZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD2DC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293219362.20907.11372496689632480968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295556db7a428ac58c813534f529beb8843649cb51d1d60dc5a3412df04daa90
Date: Tue, 25 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742932193
