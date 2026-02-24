Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE2E1386DA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771905294; cv=none; b=jksq7Kc0VlvaVxS+SULuK5fEeiNr2ehWkKwWHL6nDpH2+n+KulvPNgv+BJIMKJx7pXsKNYmFQM8VuJNNdp8VEn2+0P+RGvXB1fRGzYKQ2/7LhO+odoAiPFCq9HbODIB+Nxtce5IMvP+PLC/GlYBGgBZx1g+e/xN6hh2Nhu7/HVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771905294; c=relaxed/simple;
	bh=WraitHhd1Ijh+rVNUmgxlzHDDSOnP1tt1F4ZkLclbpc=;
	h=To:Subject:From:Message-Id:Date; b=GompygIxmyI6Mvxqr5EcC5LyVz0+2d7/PYZMZClzUCfsFMiiN8z1DCEKk88yyB96NpCEh8iqUgNi4enYIEZwp1y0EpTKMTUeymSTfNSUcIwe7hVO1wXSUKbmhUj0vxf86WZctHbn22j3+mbCJPlXleqro59ukAw1k+k32iUesz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7h8fzfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7h8fzfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE7EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771905293;
	bh=WraitHhd1Ijh+rVNUmgxlzHDDSOnP1tt1F4ZkLclbpc=;
	h=To:Subject:From:Date:From;
	b=a7h8fzfMhZaky9NM9eR3AoWl/CH2MjWi/PSQhL1O0W7XTLHI8jv2cF/Dy5ETxr/4/
	 eGc5aV4V73e+UGF4HMCbN0rY/+Bbti+8uW7bXR6aY8y1dAwVuX3RWZmE8Xg8fKA4gZ
	 u7SXMn+xWZIHw0Jsanf0Ie0f14sCKtlbX8tIHR5rbuPq6IHDCDqFwmHDH82RTrqYQs
	 WCWwc7x9toLQG/rec47KZS7MJeLLOAQDnGoZz4GJ3bIv45IipGmhYlSCVabPvGONnX
	 tZcQYa1TrhPf3EJ08vJIts3BxzOowD/re+A9chSxoA7E21SKltvH3u31ySKxOgYKal
	 laEMGoSkbIgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077DEFB7EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190529358.26128.8038275159086760055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e6363289e733a75a1a5a2e86a09b9dc83708695edd975a80ec9717510725ab
Date: Tue, 24 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771905293
