Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EE13E02D
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753642194; cv=none; b=nSZGn9DuNitX+LDqQwg+1D/I4FBRKrQLawXJRfekMzVAcK7GcdLuKZ0Mth3Sv6lbI0auSghyZbdmG+NiYRy3G6EBeb9dnUX18X4ay6dUtEhl7GWOA4l5yljUIOeeWO2VZp9yVqqHkkxP+4U6Lp9hOsbsB++CJzvmF3vvuUCF++Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753642194; c=relaxed/simple;
	bh=i3SnmX38AmDadOvE/tXpvslNjejNfq39ViqF5nnUDEo=;
	h=To:Subject:From:Message-Id:Date; b=thELwpBJq0Jsqgi8q1EceLQEke4+/ciYM5gvHCdeR+UBXO7I/9aHK4Jiah5U0Ckk5NbFYqRxdoU9tsgnzhc+Oj0UW291egce++kIdNSd+91OsCA0REvOJP2qNCcAC9tR7ZWZt2d/nR9QywYxQ/13EK8lIiEr03sY3KkP+L1PFio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PixRwio6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PixRwio6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4412C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753642193;
	bh=i3SnmX38AmDadOvE/tXpvslNjejNfq39ViqF5nnUDEo=;
	h=To:Subject:From:Date:From;
	b=PixRwio61wy7DWcmPkRi699IUFGljH/oyOqFoH5iCDcdRgNPtYn52XxWl4iGolHy5
	 pUvsMDGZUEKxNwIRox7+BkoSICavVo8zLqj75XR00hwhm2oOTtjympDVNnF+7Oabqo
	 0m3EOdUuiE7D7zmE59/ew1HeB5TL5yWu+EG3cVFgKq+1v1dhH7Rz19pnISLfGt94YM
	 T+HPXZwl1M+Up0/KuNLTXm7h1X2Jp4q0tV0wArAShhG+lWuIUGER54HGGE3uUpqcMl
	 NhGzzsQvL3h6ZscYaVhv6DQEv02uz2tiIew1zt9wGSSiZWzV8eEwfNfe5BpGPxSdRf
	 MHaFBaNT1E3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B7C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364219357.3666.9654778482370158984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d51660f647a8684c68d8daf397c95650a67748e7e366e623150a9cecc6b8dbe
Date: Sun, 27 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753642193
