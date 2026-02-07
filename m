Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275C02D6E4B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770458634; cv=none; b=D/VgSV9jWniv0Zj8LODzUnuVn5bxJ37buuC6k1NOaTeD0z4a1u0J8P60DlxGRWv9k8abiO5YO55UX1VIqqj2ojhOhaiFmfCDvfY5ygGMPWKoesQ04gFoPuF42VaJpLXuSelK360fmxKHdc9l6as1CoNRWxGtbeuQMyv+w4LX8gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770458634; c=relaxed/simple;
	bh=ymncSKRMs4+XFjKHOjhO/M/X8rmJRTw64JeedGugWqA=;
	h=To:Subject:From:Message-Id:Date; b=DnHN+N5xcyGTzr6sk1y1CUkog9H4oRukwaCjdOYlXfSjEtQUfhIJZUGcA8WRGIQeS55NppgZEPDCRa7o15yPYeHWVzI3qJ2Cy59j8g3al6AgkKtWTxsZm2jS2G6V0YZ6zh1r3DV2dyEUAPB4IYICdw8MNjvKIMGPyNPl6Mum+ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCPXgy92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCPXgy92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB03C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770458633;
	bh=ymncSKRMs4+XFjKHOjhO/M/X8rmJRTw64JeedGugWqA=;
	h=To:Subject:From:Date:From;
	b=OCPXgy92c1cHHGeExHjd6oCwbUdVSvceBygy3RKUBbBI41xpgZR2frPue5f+yb+bs
	 At4Ifxx/d6eFDMlN5G5kKAR9ZzExj8sC0f/jcuJ6ROysdCo7TXXhTn8mqZSqlodKaY
	 c10IWk3VCUdreQ84lj2MJEp0qGbThrV9SwPKIYu7Ma/y9oAISUoNO+Wb023iScjcJz
	 b8+O9bijg56imsOi0/rQ36Hry9y0O+QgkpTlrimIJyrNM1WNk9V3dDvXVIXBR9zHCH
	 NJXGJz3s48POLFm2rgq1zJ+4bxSwEifqIXt/wlNfbrV8zMxUBsu/Ekc6SPZgbFSzhz
	 ApFapSffVvyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23DBEE0AC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045863363.2250.10745297820968245759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7a60829ec5b741863280c890079db017df8c9983637d7395a525660b9b238d
Date: Sat, 07 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770458633
