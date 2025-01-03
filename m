Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892433991
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735881954; cv=none; b=NgaSMHuTvJO/2igcUP4tBdxWxIizd6XGwO03AXcCD5RAkZ207CmPPwRd+DXqBe2ZDw4Km1A9I7P3NGQaC8brwm+/pX7A/DcJguvbYLJ4GOy0/NHuVB/z4Vj8duVnGKlA1SR4ERvEyztQ7rxzsT0/e+6RhNWTdu22j3leQInZWwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735881954; c=relaxed/simple;
	bh=wHpoBEYTDM9nFZPElmUaS/hu1DpAbJhJ+XzvffJpB4c=;
	h=To:Subject:From:Message-Id:Date; b=lI5OnauIZdCLiBYXavYrPyeiOLso4pu2VdfqHhc3Gz4j8fBMc/Hz0HKR7zIToy2DRqrK4ce6kGQm/t/Dt0W5ZhCwuButtLIB/HYJ+ak2jhMQIdb7w1AzWLAc2p5J68XFcrAGqgmyX7FypVefVYtF2CM8DOwJRwWCSJsco3/5r40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZIalvrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZIalvrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A589FC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735881953;
	bh=wHpoBEYTDM9nFZPElmUaS/hu1DpAbJhJ+XzvffJpB4c=;
	h=To:Subject:From:Date:From;
	b=AZIalvrzPaJ0IJzPJoKhRSo5HYc+VB27DaSJlM0Fe9WhXHzq10Y7eSAPxk4dsyWtP
	 mupyM+ZD9MHfSxnPIYk1mvxk1POqTkoZwW7GF7qnqdgh5XTuqlDxglkrWnF+JUa6de
	 8PTczli4Vi5K8HxMii8sbqZgIP+jvIlNW0BCLgYFNqEBSWCsG3WNVGU6OOIE9Y8jer
	 jfa9708HinE6BoU+yQnmgbhMasDWVfr86N87712CVcbwFrj222tg7HmTNqFiV5QPpq
	 NOIgQZSLijBydRI7gBZpvK3Hc08rrtig1hgvpihZQwUShBJKS0l1yMTmHdPVo40Hxk
	 ZfkxTnPUAd0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB91E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588195358.19811.15865801921106612573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faba4603aacb6efd7d026b88cf0a0d0dd418f64cbc0b0d0cea2fffa221e1e8d8
Date: Fri, 03 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735881953
