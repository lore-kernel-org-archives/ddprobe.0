Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F7B3EC699
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785919234; cv=none; b=If3+liPhwxGFoqVSvlLgVmhO2vj9PGX61eGeX5LFcDS1bwzxHTDiUhJd3drmkhUavjCmzuBc3H0xB4jwwckmrGUVAXjCoZqYRbN+txF5MOq/x9yhuElfvIfNyTpTBqrJAVXNtg9G/qrT6KWtr6ctd6JCXXWJct4hGMwqLgalp78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785919234; c=relaxed/simple;
	bh=WomjrOYd3atRTOVx3La/LD1Zh8cKRFbZ0AGhk3JGoO8=;
	h=To:Subject:From:Message-Id:Date; b=au9xcW6vjUR0D2CkvMvlJjEy1VigoL4WN0PEk9jC+0Uq/NECeX54Tdr7aFPgdGAiFE0uuLtJLLFbZm/V+yIDa+Ri7qq5Wth6yJUUMkUVZWm2a7jLSGdGRupG6FOD+8CrZ1ynOiIJZWYvDZFfu7OWeU/un7QututiXCQHS+PFT/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3IrmosW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3IrmosW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D428CC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785919233;
	bh=WomjrOYd3atRTOVx3La/LD1Zh8cKRFbZ0AGhk3JGoO8=;
	h=To:Subject:From:Date:From;
	b=H3IrmosW93wI1TqHycy+9IqmBpJaHqBypNRZYBL7oXNhzHFvTYhV3BgOyMV9m9bE8
	 IQqtfWZK4VymrHSE07Vz9yf+nlML+A+WuO9yLBRg+cVg3MuQudCj6tMhETMFFthATt
	 qW1V/xGcA2puW9e4Aj8VqAotofpmz8iAaOA70OgDX/lozrShoW7gUm9lPvTrgfI3eE
	 dRZuR/X+GasjiZCAtZ5+c1D49McqR1hTV9fO2hFAkHQMyebxXmv1glkdC1lUpgCMGr
	 YrQcNZJHrYhgJ40AmttaiIeOHCTSzOtj7bRuKdMDhCmTLnm8W+SYcS19QqWWHAy/e+
	 zEocZ9RTGErSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D05C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591923371.29976.7816737452242994844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004cc6fa25f637b09e43df49c39cee51b07a798ce90affc33d820c1b33be6d4a
Date: Wed, 05 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785919233
