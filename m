Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAED62EBDEF
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752759593; cv=none; b=q/h+YAF6wXEoT5W+8qP2LVVXdWMFuePqqq14bAmLSlxLjRr1rjJQzUDVxSvVe7hUyA4paBk2k2aqC393Qr/rkzFqefELzs8M/VPQOCSQnS4ZiQ+c3FMRXuE99gQX0AgipekCifJ47WsupVi+sv1uzN7Qq09lfd0GmUmgPc9i+xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752759593; c=relaxed/simple;
	bh=yh94WHrv/FRzDj0kZVbFrIE5ZMZD6cAkiOHpJHYG3jY=;
	h=To:Subject:From:Message-Id:Date; b=Np1VuEM8imu73pIzOk2ndOovrYCHsTHa/7IoFMcyP/eVesIPDzHt04+pcvUjpMBVxIO6DbSPznkPtXwnQN3vzGScWYqmn9v12JfXYMEWKnfKasBmWv4sxTs8JgqNUnkTKwXRJ9MdPtCNNsmG+MzW2iBz+MWlsJZ2QxBwb11fp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6XFDa8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6XFDa8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752759593;
	bh=yh94WHrv/FRzDj0kZVbFrIE5ZMZD6cAkiOHpJHYG3jY=;
	h=To:Subject:From:Date:From;
	b=P6XFDa8O1mYVwkYSx7m52LSJkrkv5tXBguH6gLPlfFk/AgS1TML3sJPTvXcH1+jqz
	 cAkjYFFvlqbYpfO3KQZuSNQMGZni1PuHCcQUnrUPg6L/uGytJsD1lk/oh+v8eWPMDz
	 aPBEQpzKrDD4C71n4/SEcxq+HA8wcY3IRBaD7poctRjaGxLHwksJHkUsOVphEhz389
	 3fuOZS/ifmkeeVGCFNNgWoJ3GsCYZlBh2gbHq+gj34VCccjX8uuBybnLif6Q/rIpg9
	 7/lqZ/G245QsvgNpPLKOia6leeOyzm8GAH8UwBS44/E5u2ZKMULPfpDdZrqTP7zASL
	 ZZVabD3x8PiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3AC83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275959358.2673.7140188011487228256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca412a951b87d9b3b404005309a6b6db815054001a0aa16c910fcde60d06192e
Date: Thu, 17 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752759593
