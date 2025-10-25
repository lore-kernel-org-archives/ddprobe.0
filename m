Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9882D2499
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761419394; cv=none; b=nCsD4BqmdeuFf2sYxmiSekUxPIweHxRNlBFr7d125a+Ra6+5gEeAlooEMVI2rgxiqttETmrV3HvNpAr1ghWi9ry6Fog4TtjpfvLDlCZOzurOBMg9zKEL/3/BBXLZfn6Ewxurp8JfZvOaelOFoUBmgdQxIbZB5wmceH24P3ixEPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761419394; c=relaxed/simple;
	bh=1VUTd5f28E1A6Dopr267KurnyiJxkZOHFpBxHvy/FXQ=;
	h=To:Subject:From:Message-Id:Date; b=qCieTUALXG/QAupm1wWjBWG4/GQ1Lz8ByuECqTUayP6VfCtO+MBItyXq78mCcCBbHbBawRYK/+bkjvaXijvEJN3EjTRypV/d5F4GKaRiI6KgsneF3tMqzrP41H//KKqXm1J4X7lffZhmg6ie7e9hbDet9v/b4OxgUqxSDZWhki4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0q1Oqiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0q1Oqiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ECC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761419393;
	bh=1VUTd5f28E1A6Dopr267KurnyiJxkZOHFpBxHvy/FXQ=;
	h=To:Subject:From:Date:From;
	b=S0q1Oqivux7LBrZDySeIkNSR0By5p037sPIdLimDlnS+Iz7XgTmhSNhlR3VYBmBtz
	 hWHjToRGGndZ4BX4z6OIT4zpsS2btA0nTWWYTniQhqjxuyZyHKOCebxK9kWpEEyjvK
	 MlpzM9CyS+zd7nPDAFJQipht7hF/kKLor1O4U8ayM7GQ+4Y/jF6EM4+xXZBe1ZFfh9
	 JA1kaCdUNwPMbsSMBzsz9ui6fOS2BYImr99uXoasn/0OkMBn9NF+BJ8I8PB9hrgxGG
	 qyodgmh39mZ1jjva3Hblvj5Nwt6ENys5xNTpsZlVc/DGCnFmK/k3E/sKFeidMgHh36
	 RmRiM5bKzki5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F26CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141939357.22219.3696158298431302374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d41d63d815da2ae559cf84c00769605654e983f4473209c737e4f9657bf7f7
Date: Sat, 25 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761419393
