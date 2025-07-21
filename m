Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDE123F422
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753131594; cv=none; b=nHv38WFm1RBBa7agVAi59qylIDxvU7SoUykHgKmjZSDu/sQUQsKxT1TPYnLzyu7z5YNrj6IzMBF1gymTGg7QYayhlQAQnkE/jV8PLX1h1NiKlbUaVUtVam0aOS8hv5cQciQVK5fjaH/2BtFQ7eJrZmGZExDlPRS5pD86LqADsok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753131594; c=relaxed/simple;
	bh=ru1bpBiA2gh4xQRbe4FcDuUxSxRlQOrOVu4IFhqmzsI=;
	h=To:Subject:From:Message-Id:Date; b=nf9ht7noMuB39Gf4c06jzcS+zmNtHWxaHaSU9qUlexTQ2oLH4iPxuHajKsP2/NnQkQjPcYfjdS0/HnYbI1KiOTzD3sQVtmVLkCEX8fpz/mp5Jv0hA2Q54FqcI4O7sEMBy3vk1/a7kUr71i9CKtEftLtF5TmYD6CMGjD12+shk9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQRhj+KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQRhj+KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F112C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753131593;
	bh=ru1bpBiA2gh4xQRbe4FcDuUxSxRlQOrOVu4IFhqmzsI=;
	h=To:Subject:From:Date:From;
	b=nQRhj+KPNv0NLb8egg9fw1TpHR0dw9HzxjTLPsulqYDrUx/aptJDGZUqkGv8Ok2Er
	 J1oznX17BBcTdYcPvz+JRZqNbZes1i2g5bVieV4hOOd3Ik3OlnpV8XBvCGm/wkJYht
	 NzXA2JJCbstQv1UZpWU4tgPEOsqv3REzaqqD01DOdQUG3XKbEef3BZRnlzTk/kmQkn
	 H97o3Ehl+nGRgoUv0Crehly0O4ucf+vJs4/d4UWMCp5HMJyXQw9pUJGASfje+BW08w
	 +6woyvU0Mf/rmmya8nu6QgYgUthJvLYsolFopfkGK7mapdO3vpvFRuVHaTGX8Q/yLA
	 ulAb2NuW5fJHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD04C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313159358.19747.16012133823033274748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bae18f5925b4a33a30935a993f177e19d7c8bd81f74d4ebdc586fcc38fb454
Date: Mon, 21 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753131593
