Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8C1E2858
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782535714; cv=none; b=lL468ZLY1aDG4PHS+UpUdXHqgOrM63LxhmaRY+4zcMBUBy7wviopKKbb8XaEbFAg09rCiPHUUH7TdLHJ0VBKF3iYtx8GKht5Ed/gGuuO7GnG7bzKTstdQtJ5RI1FCn9vTJaHw5B3TOHXR8BFvbUFJNeyLscm8t1bKJF5J8XhrJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782535714; c=relaxed/simple;
	bh=3bv5lpiBIem6seTZHPwH1qyoAnKosXDz9r2jQ/GoOtg=;
	h=To:Subject:From:Message-Id:Date; b=Vi0dSIsIoBv8+ho1f27omsSGrgc1xr8JIkGNEVM/uNYqE2AOL9lsXReI6S3q8ZKbw6er6zg8YVx0Lv8pDYu5rFMJVw7iDjUF6pIvLbcpKGfn193KXo9TKo4ObqzZG6LW6p3nF+7mkHvPxBLgOOVjnPlr17xYQfnI2yWvuGYN/Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkUkxk7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkUkxk7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A94C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782535713;
	bh=3bv5lpiBIem6seTZHPwH1qyoAnKosXDz9r2jQ/GoOtg=;
	h=To:Subject:From:Date:From;
	b=rkUkxk7eNch9HUr+PN1yC6QDweGgne8uX0X77VHgw1Mw/Jg2vmzYVQKXM4KtX0KUa
	 AgewEOtAS1HzF796XXbVO0EfE9VOQQ+ZXpzgjdv0SshJspjsVVTPQUjsSdKNaQEoC9
	 /nvnw5x/dNOGqRt6/5i4ftqhO9MxNRq8r7tzccYJ7kwYDEigLRr2rTC6ttLLVySRDk
	 qBIImHYSF7L4aaPLfcoOGXQRRDPJqW/qUysFBi9FSARyVkLIJucqzUJSxPy62j9WgP
	 kN+PJYcgD63NfgT0LEO/ihhmp8F3UdwHyUQLkHPt4FoEI1prlyi3VYf+b9YmDR9Iqq
	 81nZ1tS/2A0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9846C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253571372.27892.7346214744628267873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e66a3a90634aea47dfa3a735d079067f20099e696d23a459dd001365e6c245f
Date: Sat, 27 Jun 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782535713
