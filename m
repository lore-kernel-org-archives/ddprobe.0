Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704D63B9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726858554; cv=none; b=Y9N8uu5Xaehj0Jbo25VN2zbUTH8wbF1YJd4miwEZr951eK5IaivPWBtQtxhCkoMHRyaIb6VAEUPMxwl6yRtlAXmAS1AvKPmZvUfqseqMehJrhkCGGBNna5jl0ZozI3M27R40/jPDRF8K4j3ohbZ4eBTjUVxsXh0DpRZBpFBhY6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726858554; c=relaxed/simple;
	bh=uCTDS7RPC5P880v/5NDniPq3kZWDvg1Omf4VUav/0Wc=;
	h=To:Subject:From:Message-Id:Date; b=aHZySiF281PMw7gnQx2qJWyx+aXuyqSYikZ0O8y+fb6nim/TKriDGVH6zds6MtDsvYfFyLf1Gd38WG9TpUMqAK8OuJ8bCl8OCbUsnWlEoKzAa122AIfSiJbxi4NWNnSo7a+n/zFFvqNN4ZgWFzJtqXyryRNg7ZUc0/XgN7m4I+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbI/idFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbI/idFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B93C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726858553;
	bh=uCTDS7RPC5P880v/5NDniPq3kZWDvg1Omf4VUav/0Wc=;
	h=To:Subject:From:Date:From;
	b=AbI/idFzZEu1BUm70sLRlTtL75fz38nDjCxjSa8w/s6kMIe2oFTBcjFxf+Dh0NIRj
	 lW3b9m4xMuymBvQwAYdOtLFdbjOTMwkhGm3ZibtPwH5xGLWuAFuPYbK80dVwXf1T52
	 rdA5PSLD3Y1kiCA3s9KSs6xDMqqkQtXxCDT5m2MWvyTcYuPKWOIicoqTTj/DjalY+i
	 Rq5z/hICelBloEr725x1xxHAArIyJUBc3/U0NN0/KZYRCT1EIuZ6QLO0+1U6tT8deO
	 AO+kysfBliQ0cogD78NXuv4A8Bw1NO2WC4E0M4e3y0UDD6k3cZ5ZxbX07RK4uiv7Zr
	 CXfW0KSYWjpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AD9CF9C5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685855358.13726.16695013691367502044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1eb1a51bf2ce7746e9bb05cbe382789304572a5a10f8cccac8c3de719f7a077
Date: Fri, 20 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726858553
