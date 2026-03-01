Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91522C0F6F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772387093; cv=none; b=bOU9WpH6HgSkF1tNP7pUXwEg2glhBUrwSWmS4/3bmPIGOeMJWmH2HnETCEN4BobxDc4mVBPNiDPKI2zjMsA/nEDPnIghvhLcewaSerjYjBZ9KEYSUrY/Vt8sWTOjb5nKQiekVKniIX1b/U8WMCHwzIVYchsIGAyb7ozwNHbGCv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772387093; c=relaxed/simple;
	bh=Y5V1E4Rclch4cFF11gr20Uv1GWyanI72k6PjtzkViW0=;
	h=To:Subject:From:Message-Id:Date; b=oySdQ9C6nV9/gxiGD3b8lopoG+YeyEGoHRh3gdsAxVpNiBVY8+7lyFhd/mDUQCkxw37TxcgYi59BFJB1PwcAHa5YForUfeDD5hzalLYGQ4GoJwNBaoRdwKtszql8k3/6pUXlPJBZef9+cgAzz/CliVYcVWjgSEQHFlcoMAIGMMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzNTtxrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzNTtxrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB548C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772387093;
	bh=Y5V1E4Rclch4cFF11gr20Uv1GWyanI72k6PjtzkViW0=;
	h=To:Subject:From:Date:From;
	b=dzNTtxrFh82EuCvFHJBivKBWLJ4DPXnAvVfjMTF8aSggWLto/ysQ7nWexWMObVhzL
	 CMPhRbctdl3t16E63ePDNYCWSk6I2CCtnnQyfW4xeJcLsb4Oemb+uaFw41tHijCozF
	 wPrQrRLImY84qXEQhtj42kvx6YukSMZUOgz5EZyxrQXTprbFbjFbbOCuFFQAPyJwbL
	 jutnRvaeZz9LZDnj2QN3/pUZDK+hGtzdNs+P7hlkgV2xVS2aN7rylz8bdtYJ2iPDiL
	 ILdlixWar/Mnzejw48GPXfIbCJxQhGe/irR/ZCPnvz4rtrkakE910coqGHWzOjxif8
	 DCCVdb7lPXAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8DFD0070
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238709360.8023.4418931891698712853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9eb4847007b5bf22762434c0fd67d393a3b73f161c246686df37a8f45c123d
Date: Sun, 01 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772387093
