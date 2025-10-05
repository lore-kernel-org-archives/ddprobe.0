Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB226ADD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759685996; cv=none; b=qOK7NlyEkvX9f6vIYfpF98xo8WH+UvnQ8ilSDU5KhGmFSue/T7zwOL1VPhvikiwprxC+E97zoO7k95MMftV80Q84IeubKub3LhW/uP07s6s6b+FNoJbPc5dou7E0dJSsfzrWY7d23cDvRDvWyDih36uEA9mjHGp7RThdLbdK2q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759685996; c=relaxed/simple;
	bh=tTHsaK6wcoAPxcYLrx87lAoEbH2RPHYpilxM+Q5TTkg=;
	h=To:Subject:From:Message-Id:Date; b=UzeeY9mdn08L+MwhDZxRkAEkgxqxmCiShQznT1rXOFkz7dP7XzW9VnaUPPc7Te2azNfkS2GEfOd0kPGlV/cqzQibW2rRjyMPitt+DuJIYK2HVHvSWVjN2ZolgHc9kqXwpLGxrcdWUaFnvTHVAZHXLSrRHUUGkahxhxgmSzoRsX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsPCYxxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsPCYxxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DACC4CEFE
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759685993;
	bh=tTHsaK6wcoAPxcYLrx87lAoEbH2RPHYpilxM+Q5TTkg=;
	h=To:Subject:From:Date:From;
	b=qsPCYxxuUiVR9Hbd5ntOTvtkTzNM69VuXDtggZ3zS3IPiUw9v/9bseJ3s/RW3S6jv
	 SOSebSmoD0dA6to8XurrmNmEtx0ixGTeDOzAceLG8tGdWLekyKtOnLtKfwiC9mMYGd
	 X/Cy/6rjUOhm0TMcThERBt4Zkz7bWyWScFHrZxmhi1SzBKTHgcKIJMF+7j7M6TWCFo
	 p0Rs1cNgekUxivMwImcXlc4j2sRs+LCtj+0q/1mKEYCgiPYH3uXcpUPBzE2fSEAqYz
	 TFgt1LNYRpYLFSXD7EtNf9qRW7GWaxYWCwC0SO5O2xGiHYxOry18PvjwAt0CdBJpHz
	 8l1FdSlv0/RdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BACCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968599358.27665.18232404139925209111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994bda2e5abe1ec408183a5404ba629bd4100f0fbf564091146282983affe261
Date: Sun, 05 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759685993
