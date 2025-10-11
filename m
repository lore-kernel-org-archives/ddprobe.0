Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A14B1EDA03
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760167194; cv=none; b=RYwAV6F70t4dsjIeY6oHXbzMJDwkBEjc/YcSYiGoqzlGIsaCtOAXZ+p27HzDiF4EGcEedgnBFsNR94ld/eaSJBsM75C6/Jui4ZGJW+hj3Nx3NRtt60aE+I1NzqRWP7B4X1G5+6gJiYDa0lsquBQp0H0E1k1Owi7HrUi8p7a6YsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760167194; c=relaxed/simple;
	bh=mnJqDd1HHIqZDI6D17wmadMxrXhSpcC0KyTA2NpK1xs=;
	h=To:Subject:From:Message-Id:Date; b=cBbGk3m5PJc8hPAumeXUxttik35JF7F5avvgG836LbxiMk4o/fHM7NuEwX1mqiLhKR1EXtaUdk1UlG1wdjp3WwSbd536/dgXJn97UeWF2D3y+SbQ6JqFrxt2PstDWhzHHmD7976lRWpDikmDMBnEOqwbEDSWKSsTYv1GT9zxpqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uo8WVRx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uo8WVRx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE3C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760167193;
	bh=mnJqDd1HHIqZDI6D17wmadMxrXhSpcC0KyTA2NpK1xs=;
	h=To:Subject:From:Date:From;
	b=Uo8WVRx9GYW0dn2qAe8vFB1Rn67UTgyqC7U8EVBRC5TyLdwOIDItLr7dm+aEFRLOs
	 K7zHtjmU/7sToF+ymZhtf1L8QZin6q7VvbNOUksgyEQvIN/DUI+8esrGpfcMeZoIH7
	 hFQJ8DSaVqHGFAlHbR26TzDrQtk1ioZr3cMK43INf2g6b2aDAA/z1D20mjmcfnGvjy
	 IRnuJAVINbUT5rtONwL4rLwLyWgmaEZI8mvRy7MSOgZA6R5uToyvCsc0nJwn8bYQRd
	 CRU0zdZmXEsy/dtwqxWm+dWZGyIegHpMGW3A4bm912yl4jzX42CZzjI0lJXm9nQyFx
	 09YOGK/N40L6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C77CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016719357.1371.538323258935445828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6296472817ff0269c350e754dfee6232def570287ee0400b1b0e2ff00f01e7
Date: Sat, 11 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760167193
