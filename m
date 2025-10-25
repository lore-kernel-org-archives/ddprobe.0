Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946F2F83BC
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761391794; cv=none; b=frXOsiVtz4ARdgdT5XxbVBcY3juH6fMl7GMQB0NGd7IHqRP6ENzk7HaL1Iq6RN/5Cztekuc5Ml8espHURqalFxj8d76bFkhbGuMU8xem1mBrekQI6zP5TOuXeSjfgnInj25INGl4243iQqzc8DZ6ytbdfItor8+D7TmaG6aW10I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761391794; c=relaxed/simple;
	bh=KKbkiAbNdYU1BUPhg1NTENCV67r+XHuXpoW/YGmZcTU=;
	h=To:Subject:From:Message-Id:Date; b=am4aZYD94U99vesBSp9wBP6pvnuDCFgpwAl/4z5PE0QiXJB7mVqNyHiRRiXzrmbwc5UIsYdEIlmoMA2K+NGLp0NybrB7MHTfg+FlvJ2uOmh9BHtOvYmQv6PnCZ3DIgozh9Aa6XD5XdPqY9bTyqE6vEKwpx69hHvePTU1TLxjkqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m66p/PAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m66p/PAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6365C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761391793;
	bh=KKbkiAbNdYU1BUPhg1NTENCV67r+XHuXpoW/YGmZcTU=;
	h=To:Subject:From:Date:From;
	b=m66p/PAcQ1dPuGG6FwyhMETJtMmog8ybPNwBsY+CKGvgcOYagTK5j+amMKwtUFWta
	 V+0QjgubgVGsfbgD1rWT7jqwOW5EkUKSCVZJdC7KqjR2OmyJNRAw/E2g5edPAcTKN0
	 Gx9JBlya4sRCodlGh6xPFA5Ll2L4DzGBn0RKk39vhYX+41TDrHMRjRzUm8BIs2kB/c
	 ObY+BEvThmvaF4P1LDG5ucLUYWHVnKlJAU6zMIOW0vNx0HP/JePNzGub3Ky4m0KItK
	 VdtPLdbunl5Y+rIpKZdWhGv+Rc2MYyCWVQ4uHYyNVUV9qhStuxiNEDM+NzngEwwo+0
	 A1rNJsC4ec5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C17CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139179358.15311.15688752932829855260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a142635423fe2805a852ee9bc60deede1d52cda283bfca968b42222156cdc5c4
Date: Sat, 25 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761391793
