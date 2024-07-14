Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760E853389
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720975223; cv=none; b=ZaLYAM+4AJirtX0zm2CpPi8LCYWgXn9dRTywTtWK6SoOW0piW7+D+hRQ3Gx6vz+V/Uv+WcdILJGB6hodFauBnb7dX9rL29+Q25sJH5i4gwarYSti3DUV48lxf0el5gIlnJHV05/4BitKu+cNhkNi4DXX78M1obU2RIEEfi/KJIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720975223; c=relaxed/simple;
	bh=POCJdRqCjh3VA4LCc4xgbetWXAkTPiqR5jMyNYcpZV8=;
	h=To:Subject:From:Message-Id:Date; b=NuofZY5Wnw4DMsAP+H6XMkEpA4zPGXY2PJ9+1wUesSoLgY/JUt163+eKf6GwFuqCXiljmti4ipwpdPbPPSDUk03CmjkuM+o47+JfY0ac7DUSJgjKcx65/k4rTnBT8q7TtmYr06ysGoPnJSQwnt1dGXoAzzc0CPFJqywPmb9Q2zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeMDVmVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeMDVmVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62BDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720975222;
	bh=POCJdRqCjh3VA4LCc4xgbetWXAkTPiqR5jMyNYcpZV8=;
	h=To:Subject:From:Date:From;
	b=FeMDVmVAyf56ZcsMz6d9YKMDw9X5iWFweuB6OswDJ9PXOF66lMuyRb0XRXoBdNZad
	 4ZSBqys00f4ZYbisLRtLzdKszJZitz/4DwpppTWgtAsafWlHbav58mrZG7W536jNDD
	 dPG3o3NhWrk9Jzvg+xkhoCgD6PuxnLbQULgupjoRbGVj+dJ9JWaahhOblBRDadTPgd
	 WbE1hi9/JdpKwdrS6WzZxRWxtXpoE+fuPvGCYQTm6x4FGX62LNQKjlXwZhFL3o/+L9
	 XbQxpBJ+SDcZMv+Z4jUAA915xQMQlj6KnM21VJNuQbzB3RmBVdXjQuNEVFXlXoaZsT
	 iYiiIKNuO1GnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5C1C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097522282.12271.12146638327115087527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8fd9f83758dc0f6024717cba6188ae8e0228a7d9f820bf09a0ee5004426dd8
Date: Sun, 14 Jul 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720975222
