Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5663A1D08
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770138834; cv=none; b=kokBGaI8HZVG9MeRb/4nVSq9QYmsccm5CZUNg8bqjJSLaP5dVr8jGYtuIba2LvgLXRsERWwqAyEaWOpe1BYIU87pwak3Mv0sO1KpuBwu9ehA8duDilbDvhAmB1635LvJVTZFgcQ8Pdrxyy1i3mvpXpm50CbBQFFKwnQIHUyWHpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770138834; c=relaxed/simple;
	bh=1SxueYqMnm/hFhJAxFTjz2DekgR6LX+OGdbmI1tJD2Y=;
	h=To:Subject:From:Message-Id:Date; b=D0LPo5hFbhQHMky8/4T4svGMQo3OTZXIXB3YBkGgRLEMYgty/LN80SNlqdpTfPIZemIvKNFB4JHkAlvtX/yluAU0ShUu4PrYfqKZlZT8x1FyYH2HYaIsD8c9YiZpL27GM2lrNaFXbzdYw7w0noi6zAcGxhtjyFK3cKk6YxD7mL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8OlHGIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8OlHGIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B3C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770138833;
	bh=1SxueYqMnm/hFhJAxFTjz2DekgR6LX+OGdbmI1tJD2Y=;
	h=To:Subject:From:Date:From;
	b=N8OlHGIQFO6q6ZslsU5ysupLgRJ1Y5s6N0mjBJ9rY48PYS2deoHGDtIoLts9d+Jtb
	 5vaoleYW26j7LPhrr4rnkMF2ti3+cDD7UsHNn9OhLsRV0fme380j9lGUYElXBWU3CF
	 PzTST30X+lOK2pw23mZB+fk19EmFnFt6JJCz3R4QNLCxVcTVLGbzEvezLGLEdsvUVR
	 XFGH7AABgAuvShzdQ0jz8mmeaJcsZ3U48bIoULvJW4j2JNka388juBklQZ6tffqx1w
	 Zrml8lRie0AFtQokHoH0oy+ESLySCDvWKGAH5Fy0Kn8dsjV0T4wOvHw2ifXf27RE8l
	 6Lr5hzkuLcHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0730E8784E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013883364.11816.2013517711625212312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ade70aaf625c6ceba976c71a649adfb5a0a85a6a5486782536eb4ce64a04964
Date: Tue, 03 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770138833
