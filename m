Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B31E5B7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754969994; cv=none; b=SJXSnF7dcRo9hn60GD/rliJ0ZfOr8shpjvi5noC46ha4soPtn8HG9wGjdXtNT5Ol7BpHaMltAG6pDG3dSz59gYCyVe6df4EX2BpA2+wXMl6AHgM9yZRox1sYZv40ZeEMuvdM8cNGqCF6UhiymC14Vq8QbFuBi8F3Snm3cAohjQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754969994; c=relaxed/simple;
	bh=UmnxpvlWA3zDuJrJKrdu0JGj1i6C+/Cahf2h4Mv5X1U=;
	h=To:Subject:From:Message-Id:Date; b=txCz+s8PgaGNzUDtnRS+1+PEZV6av9AzePGtOeva2+snfjUiboyRvNUz2RxKrd990DD3cI69Xk7iTwQt4L4kF/aTRkbSLCVAfXhelqIj/eEoE/4KgVHaAZx7g12Hx6ENtWlPncVZPZD6qbtVxOC2rx9nqbiKkIu3mLCZZTLUqnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk7jjDlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk7jjDlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BEEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754969993;
	bh=UmnxpvlWA3zDuJrJKrdu0JGj1i6C+/Cahf2h4Mv5X1U=;
	h=To:Subject:From:Date:From;
	b=nk7jjDlAaLR8NI9lQQUuipqrO2Hb0+ovSl78l2fzHgps0HiIu0m00tK4caIfiBptW
	 j6STMtBOK+BhCWNOR2ftA0il2TCQstj48lEa8NRXMcx+tYL2qkhldbFPIZGBjCROCY
	 lbq+JIvCPQ6p+RtPgiLopDyf7iyhwCBldExSSICUqcVdO0jJd3GFIaMvsvA8HnWxa3
	 OGltYF5I+4qa7a63dj2cUGdiqxK4afEjWzPTWY52OpjOWlOvD4ZY1J9tDhntwPyTyN
	 na89AJw9IBlbPNDJk73xGme+jndDIaNDu7Fu+yOWTtDC6UqcfYsno8KWW1ti3PxWzX
	 sdCYjfBKBfeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C6CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496999357.3452.9030115176105088625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3a4b36c94cd110daba6690be9fefb3fcaf289f6c60b99bb3937f1291d52d44
Date: Tue, 12 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754969993
