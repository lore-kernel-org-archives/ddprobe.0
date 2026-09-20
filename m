Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF412ED16D
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789947634; cv=none; b=RX22AybeoYp1Nz6rcQbxnkJTrVm1ifGLLpnRgmigQslvkDF4P615NZ/3nfxNCAJgapvBmoWfu9qJdvVZCYZTDQLrAlhxwupS+PtmPqbkNC943Ae+KLLZpRBUoLSAZqM/C1K+i0hwWKHCQblGD9qxw8wsDBI9CZK1H37FsMM7svw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789947634; c=relaxed/simple;
	bh=aptQn7GcqColMwWztSopeG3k700aIGoz9Rr3BhppA4k=;
	h=To:Subject:From:Message-Id:Date; b=AKI0uhFJjwngMV9LRBlZstYl72zDu7UBkgolLnZvRQMGKZp+ldWA43HTXM5jZ2bKKuadv9GsVZ5uFE3sezLAygd+G24+KXEOnqN8CK3+kc/xvZYrCGdfTMu+6nfyY8ujrtbf3Nrkb0c6YryqdRpcwu7oVKpsgvRLTlmxgOup+cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfk+RxRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfk+RxRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90F3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789947633;
	bh=aptQn7GcqColMwWztSopeG3k700aIGoz9Rr3BhppA4k=;
	h=To:Subject:From:Date:From;
	b=mfk+RxRdv0TAMGxNeMvlzOIc0fLm26lEijTXMYpjRlhUfopJwHwiUnrQ8GQfBnnEX
	 RLGMWnW3/3TWGhdvq58S0VQU6d/n81fRg6g/iOBOFtbRwcWzIGGMjnCp3xbkF6aa38
	 j0rhSqT+e0Qcyv5X8MfvzPGQRiBBpNqE9jZ8w0/ptluzGXLu/Zy3rEFPHoV7HBdkJ1
	 erxHUFXdyTUfB3abI2RDruXnoVnWFQ2z8bnasxUMATgDgMygsm5/0tKrbmfmJpHeGs
	 rhkUbwCpcChebfCIwyJmlAWUQ9Z5ehs4dFYAfSHcfFrzohzeYnk6WchCzKETMM1hQU
	 VaWD+lQhQzV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B0C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994763369.26864.6274044450735702272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8910e77e0eff43f7d44b8b28c6dd0179831a5aaa7eb95f70a11ab2698d54bd
Date: Sun, 20 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789947633
