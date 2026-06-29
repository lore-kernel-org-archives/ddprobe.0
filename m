Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CA43E4A2
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782749314; cv=none; b=fTCZo6qEMvgkKdqmE4aE+R1itzMGGZIu8hHCPRP2Eruzs/OtFir28c44ZAc2NbQnIlOcy5Ni/k4saooxiUGxyqwYUDDiDehD3epe75xjamWsMzkvJ7oDLGPNtod/j/gzVBpRSjQD3eF/1bdCaNNrCS3xERvWOj/43qzw0BuH8kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782749314; c=relaxed/simple;
	bh=42seCU70FJt8hSJeftfEWu1X+wAN4Qh0q0grEEvadOc=;
	h=To:Subject:From:Message-Id:Date; b=GRSDHNJM084TT8YJJmdfBZ1TJFlwjuqB/5jAr0phnTThXCwKaMlACakSxEZ5hTbfLMAT1teXKAQz0xIq7zglo3JZ+Z0hy1sP0ys3QPoycAfLaSK0QY6o77Qi5fXw2ta2eGKurKmT/OJsSx0SwoKDTDh4LhTH2Kel8vSFT/KY2zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbnasvQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbnasvQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC253C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782749313;
	bh=42seCU70FJt8hSJeftfEWu1X+wAN4Qh0q0grEEvadOc=;
	h=To:Subject:From:Date:From;
	b=DbnasvQJxsSX0oAiWx+MyVzZJCLl7rGu4a89+IOkL0JE1TPM8veQ3fvyH0o+UxP7g
	 fUejtJoxIXNbOTSPoBkIi5s9CrdRh9j0+Fq7cPPeRXDFF5AYvSnzMRm4mZg6e3qHSN
	 I8FdvUm4m4mYDWzXzZknvzc5H/lwgLABBalmrdQvFUh1u1WthKr5JCuRqG+U40cKIk
	 CFyrY5NbYYykMldK0+aDaLS9Hf7dWAx+IjWN+6IdnaGYgmpeiLmWMtvbZmc0X4aqbb
	 DGK0CJBx6VoRISmJYGtihS7HHrCppwqO3NXX+euMCVZbPUj5P8w/YtSpp6XMdrFSpT
	 zPOdgg9IG6dzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FA4C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274931369.23445.9774422137385112114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf1958edd7443cc52749d75700bf7548bc3d2410e62a41cadc5993f425ea89b
Date: Mon, 29 Jun 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782749313
