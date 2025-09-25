Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B833747F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758844794; cv=none; b=h89a3cf/kCXReGkBdY0xbv6JCdbt8y9FYk6niJMqVLlZC6V/9NFTgeAFFXJX8cX1dNYWmAA4AqVBxWeLaZ+jZfOqFZe1MGE9LIGhxCf3jWC+zC+kV/p/r2eg9dh8VsZgt6lAdbrWiByDEho9pl330c62PJ4h7qDirz3nUUO5h0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758844794; c=relaxed/simple;
	bh=nzKZBkpazWYSEZIBNFoEQBp93Er485cuPDZVQyHzOos=;
	h=To:Subject:From:Message-Id:Date; b=LPuhHiMZBjscTWzBuYsBgcLscIWVf+X6Zum49HkXOEUxnIo1z2uzZ3szQwSJwfe+xNtMoNT2r/T2fD2hvPV0O3WUTvqZZy3XbWaNnufI895OzXFq8Zu+bBrOoK9oWjh33EE6/3Zqlwy483U4EMlKgq5o16dgK9Fm1ZO2KQrBiTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFxvuRiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFxvuRiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF376C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758844793;
	bh=nzKZBkpazWYSEZIBNFoEQBp93Er485cuPDZVQyHzOos=;
	h=To:Subject:From:Date:From;
	b=MFxvuRiwZPv8d7TZ5wJcr+WRZeFXtm9mXX6yazxvc6EHj9evkhhLzV02qSUfo4E6K
	 rZhax3GzrY94dqDxw4fZuRPWK/6DpnoJJD2PinJE0xA6RpMfpJjJs8eR4HF27a1b5G
	 kS9wBprdEFUs/Xn9XPN99acVp3tY1DpoOkKFlFilabLRfXO79zuczVoiDizsyT1LSl
	 wcBASEXO3ZuMV1mjxSt6/wB9fMAl8W1SD2gwalCvDbZQ6eq8HSm3XiyqUpkayxVi/q
	 lBvHnFySlOSvB7TqtEyqmpy8OHSCL5t97vQ4Gc3VxKBH3u99t4FfW3+S8SWGVH2jqX
	 CJxs77CaikjGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E701CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884479364.18784.653388049692113034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f477230284936a2c78484751aafc29494f95138d73f982a935c273e4c91f2776
Date: Thu, 25 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758844793
