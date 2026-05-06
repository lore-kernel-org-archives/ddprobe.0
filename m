Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E73081A2
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778049454; cv=none; b=e9LYjbjoBmS8s9MhfEQF7+ZbqI+Qr+DMVKb1TS9FY5fEZNIYTYUsRbP2akfyCuMVHf3is7ugDMP5fq2bajrT2my+e3hRtcL7rsF2ELFcUWvdFXCu7p9wbmGd2ThS7fVCh5sseLjy9wgw/Dooh1ihRwJHzguHDQ4g1+oEGarSeBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778049454; c=relaxed/simple;
	bh=FGLW0NVVl482A6aQx+rtts8XO5lewtN/KUO+QXuv268=;
	h=To:Subject:From:Message-Id:Date; b=pmU2O4cZa2YPfV0KCHv0QVgmWT0omqs76CaadZx1tX97l7HsUuMbo921HhGhH6TMMrpXpBD8SRlz+ii4MMME/0KjTCOivQyzWu2AShVJGQywKOAPQSuhdQQYf32fd+IFbrjoKO8v/Oo/k+oI3e2P97fy2WevQOv89G6JF5mCSR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWPTHXgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWPTHXgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA16FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778049453;
	bh=FGLW0NVVl482A6aQx+rtts8XO5lewtN/KUO+QXuv268=;
	h=To:Subject:From:Date:From;
	b=UWPTHXgDmZal2PHTeOATkJXFk5EZKlR+ak+Any2qMmgfBySFuqkik7tIS+2X00reY
	 ewIw/hBP24cV3WWsfy7x9cBfecp4Wv8IOsH2z/bjB7wI0ZHSTnIhYCgWdG+MV/BONO
	 GliykuAS+Rtq2k9rtcpnw++4qs8S1ZrSEqizwsVN/F6W9Ox5+Zsmyy/L+FDkyu/Qqb
	 iXERJZCyGpv7g1OIvAiXlqayJjGTKfyShJDW98R4mmMavHcCW/s70jDbNFNiw9qBXa
	 ssYhmCa3fwnLQlg5hvAHz9Ks1ZjIUwYN2zctw9jIRXXsRSG35kYJ6wU0Yhj9kDpv8q
	 tiLePcCBPZBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB84CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804945369.20825.12831874308216649866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10efb344b5fd0c9c10b384602e708cce1490ae3f000c23b94f9d0c460e2b6419
Date: Wed, 06 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778049453
