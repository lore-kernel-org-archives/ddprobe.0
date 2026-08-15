Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8B82BFC85
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786795234; cv=none; b=j+hQDcS5TWu1x3E8JrjngpYlGjKnVCE7fGQRsx9WYWvAkOe5bxaxFYH8qsGe9gLZL2IpJn2PnrfYNGTUhhWH2rc9S7ldMK91W06S9guajG2AqH3hqLV2AFAPNVOcJiTkCDyA454rBHYdmv9qHrLv6q/bUsaswGYWi0gs5t1TwaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786795234; c=relaxed/simple;
	bh=FExh1BRtLsDvDgq37HKGIA9yIMxFo1uUX9XpwTFTRdw=;
	h=To:Subject:From:Message-Id:Date; b=FHV1GDZmKcVGwexT1E5C5XA/ZQEVLguf/pxlgMXQb7t9+096zEK6CTFPTzCn/iyMnU8M3UBnkVcfwOMLPrCIQEUvxicNHnFPxDwhIKA/Si4UV/Jmpl6o5+hfDXhE/lvtKwWzGI694aBRxSOnazRi3aXotu9UOYu+rmMMRtiYnQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy/Kmh7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy/Kmh7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB10C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786795233;
	bh=FExh1BRtLsDvDgq37HKGIA9yIMxFo1uUX9XpwTFTRdw=;
	h=To:Subject:From:Date:From;
	b=Jy/Kmh7HFnBsETwn1CVCjYIH0kI6W8oz4PmelyNXaQ/7ufZ7nhtl9w9I1m5XLTlKO
	 mTQWZEaKSj5KdumSMF3jgL0EhK8z+6LuE69pFmqlAYWGtH6N16wRqY6TIQ1L9WokFx
	 OvuVLLrTK22QbGpqlBzOA2jMR25saTZWqX7xGKLrAnCf+l3TiCnYz0G/kCDh2Ad4Uo
	 zfkqJgnApC4SCsot1Mdf5walDvBCo17hDgfacTWW+uMKJo8dhvVVaAlroEGIlKkqjH
	 z3rPfp3jWXtcFVrs8EcHd5u3voPx+VDw38UULFVqJslPmjOgcBxbJUQFzNwMqdgGpb
	 9IKsBstFUuDqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97F3C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679523371.21155.15514686807779027842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee8463a3b473b318f0ab0bef7c6d3da7b8e809c593be5fabe86ecb662dd250d
Date: Sat, 15 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786795233
