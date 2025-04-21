Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535B74C92
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745264394; cv=none; b=oUhH9aq/ZXZHYWQMLGWYASbFZZF236zMJHlOcgtoKnDETZnEAoC46VX5bNFEb6QsKw6/JALprGFRgo5E/acAmmtizOvXStQb+5fiMKiIYEwW50XGjcDZBo8xmWMZ0FBArb0eeavri6atf7fgtM5AgE8e7rTqjvNtc8x1qbHleYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745264394; c=relaxed/simple;
	bh=KBIU+VZWoTXit7qrtOCE6JYFr8RM1/TSHcmioJ2wUw8=;
	h=To:Subject:From:Message-Id:Date; b=oaVpntXz4LV4adJSqAx1FV8wqWUESlK1jTy8XeA0mOAF1VeOHEF5rO0Aukj7WEGGeiO6DCYwpjejgI7TbQg14Pwe7I/mY5TlDHmznU1mX6U1UNBX7iAMkjjZrtGp1QaMVTLFM/uLhRci8XaOMVa/j35U5iNdIWDzPl6V0PNr/0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBqRWKdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBqRWKdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A46C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745264393;
	bh=KBIU+VZWoTXit7qrtOCE6JYFr8RM1/TSHcmioJ2wUw8=;
	h=To:Subject:From:Date:From;
	b=YBqRWKddrt/AP1EHiRjsupSrc9AmI9JqnZhsLty4SJQMnwSaOMtC5HBuhvzMG4zy0
	 X1sbuKjz1OdeiJCGIZnYxk3xVYy85P61qkZaQ6T27PNS/Pp6svNwbdfplZUrcCO2/T
	 z2HL9y+m8QQNsJbdpZLpTz43oe8mx9E9tUgijnyfndZOn2bTb5ODo3M6dBbxCNiYS1
	 H823HfeLHEW7/0pvdw+ymPOyJAlvHkH5LEUYItKiVXepVltShgGaXvsUmfALigacAT
	 MsvkhHSWsxcNAteqAj9kSAwZrA9hMFpq0AxMIQadPbfv1jCt8go85imcIWCNst5MGR
	 Fv/mGKN3k26Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95239C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526439357.2006.9332678920777850989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0401a22d83d33e288f65a45e47964e24ad8d396d7df20796b3b9db628ee774b4
Date: Mon, 21 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745264393
