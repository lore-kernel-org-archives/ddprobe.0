Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2262F22B5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395434; cv=none; b=fkONNz9Y1Xe/pV8O1XHisVl+M0BgLRhUuQx5jH2D7DiErNUoaJsb8LpOZ/Xq9IuVGm6zVf1fTT+Z79cKUpygl6d1vu2WrL6dgBN6bUOEdcEh3tfLmcig/mRg1DrzFPW2/wZjdRvlhj+8e35fa9cnjzz9A9iB4FuXQW9NGBIIBhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395434; c=relaxed/simple;
	bh=FipN+3VI4x9UqihYm0kEnVebrQ1avZtFqbNiVJsLosg=;
	h=To:Subject:From:Message-Id:Date; b=q9DVkwnXjOI1ndrHWK5y/rkR5qDRAg108WjV0Kp1GEPnz5iBXRNlMOoV3et2iAOlJQt0p+DYYFubOACQ4acw57+Uhgkwd4VUZlVdAxPJC2Lv1Cj8t7dBZwIWxIl/ETPqUR+horWkGI9khq/P9AV5VGMBIw5ytsmzwDPYh+8dY2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+D36sEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+D36sEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD26C116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766395433;
	bh=FipN+3VI4x9UqihYm0kEnVebrQ1avZtFqbNiVJsLosg=;
	h=To:Subject:From:Date:From;
	b=k+D36sEgwluKhHcdrsrk3VQehOKlpFpRpCbuy22Q73bFnPOq+2h5x/E3lPkRuDwtB
	 68o47ZEHaUMehZt6kqHj0WtvPXjyoBso0ns9Y6IspwN/rvqy+orvGkw4yX2jJ2iI9U
	 kW3UwWCX87Glsg+OzRYdcgoSq1dciU1Wlr1oZ/HEaNi97JWHuse/HLK9VEjg9ZRM45
	 z3BxIrLxA3uv0RVvgrhaOODXIHkz0D68kPSr6xNI4n7k9GEL3nB+333eGaAQJxrIG5
	 IGTU3lVvy3u52EI8eSxGDjXv8NbUe38VtGAf/FCruE3ZjOIJ7JJnuktrIFMG0yDOpn
	 kCm+lX9i++BdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55ED711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639543357.5528.14172677288480847360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed67b248c9d6198e1a43dd93c487f92bd5b53026da691669eee63998001d3d8a
Date: Mon, 22 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766395433
