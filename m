Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518E5474F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777510654; cv=none; b=mO07Cb7Db0LkbdphWM8fGwtLQ4gWoov+sjX0k5ZXcjKcsYomW6ccDxvpxj3zgu+GFrGZ1ixuanyRCLuDvWQ430q0Sd6G/kCMhcPm6MCX973c5FrI/KGqUN0hCfRl1OTtwaHDEuMJhdVPVh/7C9UVvFbLTMra261g5tTHR++ipuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777510654; c=relaxed/simple;
	bh=qteVOP1SdNZsZUXYDm6mnKZOPfHKQWvQY7Xu6he0cF8=;
	h=To:Subject:From:Message-Id:Date; b=jcO5xqAksWgc6IAq5cf353iY9oSgD9nTrBBrXjYOA9zotoCMW2Dq0IIAYBumSg5AZcxE6iyG9cprgpdobShwM9qjOhx145RJ4DiKMdipQaWyk1PIM7JDNBEusDmmR4Dc6URTilstwbowzTqgNl1TvCckiPl78hBTBzjUiNahuCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3WPWTyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3WPWTyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7943C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777510653;
	bh=qteVOP1SdNZsZUXYDm6mnKZOPfHKQWvQY7Xu6he0cF8=;
	h=To:Subject:From:Date:From;
	b=e3WPWTypuVnIJEK0Yzp4OG/BIki2E7ge0JSTnXAkUO4IHHiAlVTbVFddL7q6iKng5
	 5EXvubn4fSeas1s9ZVT7Q96Zr5JKEJow0icLmOmNJmCO9pz/Kun2CRSvxcE1ALRqNS
	 o+tAn4nKKIVrqqQSuKLMAzKCGgkFqCIl0o4j5tTXdmfWRxjvIYd+WLN4WEBZiXUthD
	 Zho8cB1Oo455YkusGDOgW4HJ+kyse45741wVZy+DG8moidUO1736KOm9+MPTlq3jPo
	 rmsjd7kNhF9ZK9hlGMJmh+d7qf2ab2Ey89hrAx5ynCcaOSISybugvtE0lQL9RhfYdq
	 +h0+IApyoTpmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A20FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751065368.24658.11904301282537792857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7f9ed5c39689d3c90ed426d6d1d2da89b4fdabfa3b46495114dc180ff52d42
Date: Thu, 30 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777510653
