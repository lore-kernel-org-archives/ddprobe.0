Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F91E5B99
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741762134; cv=none; b=Fz2ByowaRtgVWogLCfdrr7gfuqqdJSbTjYx3UNkRTMc16N/oiOR4VEQgrLvY2+MdJY3Bmt2C2FqaCThUpsx2W8HeKlwyT2X5Hv9OuWHNYVewRQlQrk4MSZiiuqaWTsirrZGrFsiPmtRlF603dpMZZ1KmlLuc6ZN+BI1pQxsCeUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741762134; c=relaxed/simple;
	bh=ZgaLYiSXFvXsh2W0hZPMkSMUqK6goItzIlVZxmGXl5g=;
	h=To:Subject:From:Message-Id:Date; b=dkAtdCCeTJMNEQHs0S5s2gfkWWjec0OUKUI3knL2rn44SBmH/zg9Uvp3ZfqjDJiEA3lD70NEL96MQiJhFVlvS+D06KzrG5rUT0l6OnXLokIarRFL0I9mr+NNJh2WVJRzPT1WDVaIeW0x2SX8nO8SER7b+no4YOiPM/Vzo9rfVn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvPAUbqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvPAUbqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC089C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741762133;
	bh=ZgaLYiSXFvXsh2W0hZPMkSMUqK6goItzIlVZxmGXl5g=;
	h=To:Subject:From:Date:From;
	b=tvPAUbqHY4e60wb6ltovjWuAWeJ1sOKV2vGeb/lKzPDeSC/VmVrz5cQodszDZz9NG
	 EVhRM+bh7EY9e+C7guMn7hfdKpF4gij+cG/EYJMMYS3bRUrCg6W/dA6UiYf2Sedu4G
	 dflGOmF0zAFHQslc3QpOQAoeagt27I34gqs73+jr9Z58t3W/o1A3glClJconxv5OWy
	 Qhl1hhLQ3jrgbPj2SyR/BdhSbfxYp/ou8prBufuBT89UWR7ru72lCPdVKTVUgW3Cye
	 FK6lafhaLLtrafMvJUmrE74FmfLW3OsC+/2awy3xt6eb9Edl+7b3fRV3EEMwph5cyy
	 ocC9+Px8KoW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5CC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176213360.19948.16191761762319219871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eba7fb1c3c64513eb515526e3fa2191657edc89ea78bdc8aaced54e029bf8f
Date: Wed, 12 Mar 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741762133
