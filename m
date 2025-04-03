Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F0118DB29
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743722394; cv=none; b=lhXt/Ornmo/dcs0JWyLwKaCa1WPd9OgQSpHgDjaejGhvhivSxR4AfU6YgG7nq3RiYTUE6dgFNQiFsiffhM8RUTTZPC9PiLZaH3ozSAY2fIbGQxLUzChxwSxIuIpD0xUfNZfOF2Wlm/eHKk6kUTTctaQmbaDpgpSaiF3R0HXpkvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743722394; c=relaxed/simple;
	bh=IMl1w2MqJ973Hfx4N161gDz64Bw+735f4RZkiDdRvN8=;
	h=To:Subject:From:Message-Id:Date; b=OYL1kkARbfo3eQy/s6ncL6U8wCHDbGz2cP8vtgMAFFpFaZhTJe85UBStPJYOdvugj/eaqFXfhSbinLnA2gmCav5zWffIzakdG0J8S7NYaV6AfMt3IIdN8Lck0cDbwGuwFTPyQ5hA625Sabyd9PDwuI+5Y6vT4rasEOXiVvlXQUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFnk+ZND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFnk+ZND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A57C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743722393;
	bh=IMl1w2MqJ973Hfx4N161gDz64Bw+735f4RZkiDdRvN8=;
	h=To:Subject:From:Date:From;
	b=EFnk+ZND8G0DNLx152dW/+Dbpa8eo1AN9y6qmHfY8x/OBW1lhR2ocV+bdh88U9O+o
	 hUT7R0dD3b4nFYsF7RUOHpo1K1+Hu3yzAvXo/4blY9WA92TZBPg1vyEusawIV1WDTv
	 749gTpxO0LPPm9xYFTkA+sDWIuI6HgT76PFLZG95zPcP4Qh6S6J+MyIXhi8O3LIvl3
	 66IqKpbkg/IiKhgbvlBrD7Zhc4AnrFpX8hPsWukENF8YKKSiQl44hO3cY94O7sviZk
	 fNKuC49ywTw/HPh0q+6TpRGPF+Xf+s6SCqx16EjgGR4LiWiZHndDUVp5robFnYB0tS
	 aNZbEmqjm+hgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1DC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372239358.23824.13681842300002855699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edfcff55827fcc1827191c2756763c8072aa8ea5c838af01a28383e63b4f642
Date: Thu, 03 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743722393
