Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9F155A52
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737404154; cv=none; b=bRMubJ595RrRwqSg2bmQ14E4dWN8/jEPdpPmWtRn3hvIY9w8OyCqARX5sIczPvkx0kMMaasTdm189kUzD3q1Og8tzuCyPHjalrW/riAzpBfNcbWB9i0lZ3fQUMx0l9OqIcACBE+0RCPVEgQZ9cKohj0pVjPSOEYaBnR1x4UPYLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737404154; c=relaxed/simple;
	bh=Xk4AoWz/KAZ1eCAtzwi3SJxrBtjJjsStGf64oTrYJE0=;
	h=To:Subject:From:Message-Id:Date; b=kTwjRT+Cmrx1Ff1EGaTqSsuH2VUAyLhgMJqlcystnQKbQUxZzMazO9f5Njl2YH+9KbzOOCt677xd+LF5zN4JdRLcNSON58LiirE8IBo+3TGnrzX9f615/9z0f8tNj9zNYVUSHlOL2pWJnyeWhndF78IftEuztRUUv8F8Ub6XO10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzGOEM2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzGOEM2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8071C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737404153;
	bh=Xk4AoWz/KAZ1eCAtzwi3SJxrBtjJjsStGf64oTrYJE0=;
	h=To:Subject:From:Date:From;
	b=ZzGOEM2AFxR2Zyjys1Qm1e7MYXf/4qh+IvHCzqviBe1qBrwW6zN1Zyq9Af5+Nyb4C
	 9sjz1nPRt2yj9W/XsJ/qmXsOANWeH2EHQqStmuvEXJLfIBgJeSxQieo3LUcWnS562G
	 frFjbgeCe0v2Oi8QBj/8xyCMRcTKQYtRsGN8OIAvma6V5yVjjRAwwqyHWdrLIDe5NZ
	 fiRoBa7hO75RSOP/I8C8u0VauRd3V/6vyR6apGnxl7DhSLbKw/K64Dr2oF/ilPf+sn
	 YsYj0pRHgofYHyhasD871E6q62367K7J4rcxbOFu/AWvkG7UC6xm9UtYVZJ5jw/TQk
	 AmUrP3oUVe+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90483C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740415358.29104.7240183510550130614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b840e58a8ba92c65f2aa8ff1d758fc94982221327a491691466830e1859846
Date: Mon, 20 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737404153
