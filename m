Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C449168BD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764200574; cv=none; b=ZSqqoRVPlEHs7h8kocgX+m6j0JfPpfGmOuR3GYBe5y8/pEgtZD5ZS/epWC7snraOB2Bp12KZT0xCqUohcVEjbd9qM6x/cSV5fJ6Luk7YzIdE+TADesBdRuHGb3FhEQFfVEiUGpjlA7G3ZFFHX2GUpUw0SE12+ZVGtmAYEcXq+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764200574; c=relaxed/simple;
	bh=Z95sHJUk2KVSIpf4AMdOgcAK9jL3P2ZyVikR+BbbGZ8=;
	h=To:Subject:From:Message-Id:Date; b=q/MtJmXHQZapu+EPyBZHQrQu6WrgAV136VGEG5dmXEnCUTtjyL9PKcqb1WbM6DrGiANFic0phWvpnIbtomltAeWYz2aq3aS0YqvxVdDPF5nPQDbxvcV5z1V0UNvt9OxgV2Gup1kRQ2FrnW6Dg9MP2Nn+hVz8OEkOOdN2zkKpfBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHMOIP6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHMOIP6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764200573;
	bh=Z95sHJUk2KVSIpf4AMdOgcAK9jL3P2ZyVikR+BbbGZ8=;
	h=To:Subject:From:Date:From;
	b=SHMOIP6yPTgJtFtYTDDwrwfmHbcagcKDvlOULBH5oje0/z38pJ6a1+9PKoYJHBEzW
	 rvEk9/WSjfBW6ZhSujDJk1R16/zaNNpkOggg4iB7EqPy3y3cdz6xdH4ZPxfAJXWSNA
	 Nkcc6zygiCPDk+gqWq+5zhq4G+zTO8fUBwqihgjK9c1uVCQ22CCcKxNuiCxYa3sTJM
	 ZDkwsXr0slhkbzzZdyb0KdHfekvUilkE0Micf0dikZrC+gdzvbcx8wlekTxCyIxm5I
	 bqEzFpp9BpWU+KbnzuK2+llbO5m43qVxLxqhlR4231eE4mrM2DK4Z4b1FLxNiyk5L/
	 aon3zWMDvnviA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318BD116E0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420057359.31866.3522492448751903895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372dcc3ff416e9bfb56b7a45df3155dac30e516eafe8f80b0d2c7b69e50d3555
Date: Wed, 26 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764200573
