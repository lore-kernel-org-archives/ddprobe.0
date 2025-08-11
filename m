Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F51B394F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754876394; cv=none; b=I2QqW2tlpH8K3JrjYNMk31JsorrJRMH42Hdg72hrIq6xMPFCFJBX7rjOoVwBVcj974bR1DNxblPUNOyqwP8rXOhteLALuDhxYUma1vjQduyPvAwa+jYucbvUsQBd9Wwd64sr8MWNNwcTF5jMo9C8qP9ekOim7xMgdubQ8ODmTwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754876394; c=relaxed/simple;
	bh=YPTckeJqNAsqmhQwZ6FFVRD9zpPivny6xFGpH7dSwkU=;
	h=To:Subject:From:Message-Id:Date; b=IZedADIeVlzk30ByTw72Nv8RQeKUYWTi0+VOAC14nAraJUbfO6JZTkkJnPPVJC8DZCEfc1w3Isa2z70lFoVCRS4at239gEuTONsr13nKiTYUItLqINlGzsfzS33Y6vfzgT0N33aASMuVaGIuS7QSuIXM+vVdybtSEoomJehKxLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg+ZcLgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg+ZcLgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E57C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754876393;
	bh=YPTckeJqNAsqmhQwZ6FFVRD9zpPivny6xFGpH7dSwkU=;
	h=To:Subject:From:Date:From;
	b=pg+ZcLgGE4+Y26qY6F4CIxtPa1AtCNMgbBJYfyONuXv6nG+w/B9E1PhOcIGSG5QMj
	 tVuUzGPcfD2ddcyoO5AESQRCdpUvHiA02jJgTvLw0BXiYVTh1zuOxIHs6Z9sutH9QR
	 MPQBMsodsLyur1uJdkxsHvFz1hZtYnN4+Lnac0j3LtMvl3bSm6Ewn2Aa2v2ouUMhTV
	 PaafaAEPGFd0R43p8/2S2eggi4dZlGTu/BNqga0IAf2SguD65szY4moFRRdaa58Bi7
	 3Cg2geDgqpt10YlzQSx8dxksY5xVt3E5pHbrZlYfObN4nRbL/NQUjPtTaTy/3vn96f
	 xQ/MNTirbHz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E8C87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487639357.25652.10181678148049103287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceff3589c60cc6d6b6275f685599b33f6e1f23cc676715d1c0220c1b2299aa51
Date: Mon, 11 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754876393
