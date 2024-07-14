Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB9DB65A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720930823; cv=none; b=e2joJYvhGItVjX2bcxjnpAvBk56FoLtXDNgYqmwva4AKco78HWsYqDYKjS4PhDdMYhOzzMp56NC7mUEpqrfDqoNIIXuL6XPpX1UdfybkqnGbaEmzvyiGPMK2Q1dQBMyzY/PU/M0zUW5NL4/85yg2rXA7VECunR9OkxiMFKvIcbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720930823; c=relaxed/simple;
	bh=bnpp0Jl/XJ+1hsAd3YGUHAMDv1T5ccYC3t7een5u8O4=;
	h=To:Subject:From:Message-Id:Date; b=SanMfotZaT171F7ljyah/tpdQDKBCuESclgLiX+Nr0hnsUKQJPOuODkdZDkw2CZmrtKCTG/QcvFzlW77KbmxEUg9T0XuR6npXtisDbSKATb8xkt0LOiN11xkAz/7IJjP9rNQw2d0O48NmK6bWxDeHQ4KHruXqm1xysuG0JA2jZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDX+pj5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDX+pj5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E5AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720930822;
	bh=bnpp0Jl/XJ+1hsAd3YGUHAMDv1T5ccYC3t7een5u8O4=;
	h=To:Subject:From:Date:From;
	b=sDX+pj5B9ffKZ1xTDlRYZv6jNFvkh/su8ajuO19jGuBiitZTZ6IeFF1Jtv9dL/U/X
	 fFlAuVXQy3TKSWz1IrYve+kSA60MNrX7ElMapRnAwBiEUgLm8+5DLZ7reil7Hg7Khb
	 WsS950n74oilJ5A9wJIO2wIVJXp5lI4xnHJjflY7FIFDuuI7ypj/znN3CoCeUwh3cX
	 MnBlnoyLa4OsDTW16H+LgM85I22nfarrNWGuWkc9p+7G8X6AFjCFeFs4x8EZX6Msj1
	 ed9UtUhUyhR9HpLtvaPAV1S8UZpkD5JFcC6ztcbWMdAmcuRDKxtlpslHNLbAHJ3hT4
	 +0R3qAAIS7/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B4CC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093082277.28475.2791042859450718374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc191f3c4661c4f7793ce3af9847008b2f20ff83a32a16073db72c2b21645a0
Date: Sun, 14 Jul 2024 04:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720930822
