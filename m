Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45893139D0A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751827194; cv=none; b=trKS5cAJl/9q6jEZdj+By3UedeiU8e9v/5mJPyzRgwLnvW+5wLZduZLaRxTi9VGM3jVvW3YaMt5wfafMV/UGkE2NoLXFkoMl+vj6GBmIBhBlyTKF3aRTbcFVykWsuOceTrUqlPRxLUv8Yrt8yh53dW/EFO8P9uE+0Sj+C/SD8fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751827194; c=relaxed/simple;
	bh=eCFE/wDRDYtNvXQHiTSekHxkuYAx6Hs1HtVt7WkjVTs=;
	h=To:Subject:From:Message-Id:Date; b=qItI7Im61HFwiXpmgQunUW2R8Ki1RNsXGHgfdTgxDtaHlw9It1VjafqzYfa1Ima6pLiyAJFDfuE8G17RbuwmrXq0/LhiimgDtgZWszhWaBfqg15epHXQBCEapoOlROBgwh+2042JowW/OsfXdOLqL8WA7bRVu5B+Dx5BZ6dS08o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtywPJ7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtywPJ7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68BCC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751827193;
	bh=eCFE/wDRDYtNvXQHiTSekHxkuYAx6Hs1HtVt7WkjVTs=;
	h=To:Subject:From:Date:From;
	b=YtywPJ7kvsIZJEoH5GG+zCMGP/s9PIcZUqEKAUFCCRK0j0Z1258Q4f26ky1F9EXgb
	 lH2sPZb+BxS0R46oW1OIUTEayZlkufevqtg4Uq5NRnXuEVLrPtHKHoTSsKv9H2/IMv
	 v2sUhojJ9Oy+6oLba3vHqedD6l+/JvH4JdhEBn1/3Q5gjHXIn+JyFTj8yDPrrTJWyK
	 0w+bWiyHUNmGxVRhQJ65RJlfYQtHe23WmS7Sfcmt7gFCrw8vaqg+0hO2XYzECKa1eb
	 Bcrb1P9B9xoxFAZPPHUVtOld1abHn2hBofVGGnPkJ3s3psViUOSiKMC3WLdJwbiZhl
	 3wk3n6E/AMPOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EECC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182719357.14257.1004388623643121112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fb7e32e33949513d3b16efc7ec407ccc0a41479c2ab946081bd85c8a60c142
Date: Sun, 06 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751827193
