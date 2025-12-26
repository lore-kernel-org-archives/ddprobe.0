Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E0615E97
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766714034; cv=none; b=tcCty5jnuZ3DnZWsfqwtUC5xgHZc9gTE6x+NFJ4d7xkMi1UNXodYrZkHD1J52jDVgEFApkZmgN2qhuBxiiU2uweK9VKarvLEHiJ9BAcQ+jOgo91crzzpbdDknCHMWauzNxqCkcCkJs0juan8b+ffBvgTo48fm8SDW4CIZhxBmEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766714034; c=relaxed/simple;
	bh=g6y9Aq7gDvArbpMIF11rh+/qlfaF1YfXaGYuxLe8fa0=;
	h=To:Subject:From:Message-Id:Date; b=NWHasJuvk85mZP/UWIXoo5DsdqRtj9onEPr23+FlQLG3XguZmzISkefT6dNnuAVLsmWKCyc4NkNjLzaMeoKtQqeN5GFdUbHsYAOto1ipRFZmXlbuSjOerTOwVtLS86XKlZOauG0NZayNnTMLiG9u2qx9bv1cFuXEJHczq49DrvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXblfMR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXblfMR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F345C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766714033;
	bh=g6y9Aq7gDvArbpMIF11rh+/qlfaF1YfXaGYuxLe8fa0=;
	h=To:Subject:From:Date:From;
	b=sXblfMR3MlAryM7aCvE6f3tOfrvMWDKzga/ojSM2CPT30HU7sSRsWSHYb04N8ybOG
	 SnRnabUKhkFBXTJP5gXKXAiBpsyMtEwk/BHEuyw4a5ymGs6Z0nVv+LLA4ZAh7CU5vu
	 vdc1lGLs2e820/JGQPWcAVskj054ojPDXK2ilKtXVqEq+1BGV6wv8zL6WAH+URaLO3
	 hsYRd7ln6fdDhbYI2jGOOSotMBrxStdsnQ01n02+bPA4+TZU+eLEliGdhkALelILJD
	 BqKXUrZxoslq3xXzU7a0CMF2xkJHEl612E3kgwwxuFMJv7t3FjY2Gbpldi2xEzGved
	 KIrCiwnZvxvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBEE7AD78
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671403358.15673.10200062902583548501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855ebcdc5767f2dc40e1ba449ead165cce0cdb42aedb54293770fba567cbce42
Date: Fri, 26 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766714033
