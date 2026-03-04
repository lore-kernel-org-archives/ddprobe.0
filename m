Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED563A6EEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633694; cv=none; b=ixMoy+xKRZeS46gzRiPEX2cwc8YXxbuo+IYQ4rwp78spZssfT/h1ugiZiamg3NWsd/dV8cubOmtIK5BIQyc+5R0E8w7iNBH0LfQ7RsZfBiRLq2OyCEZHtUEl3pVyBENcFLlJbwbmReZIHUFvLYaJRauc+sVudU7H8CX7Y5K4xIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633694; c=relaxed/simple;
	bh=Ps9dXtoEzgsxPd8oEGb+olox8kfd7ICeqPkshTpeUU8=;
	h=To:Subject:From:Message-Id:Date; b=ArsVKwnJcbnvbzsu99sCX6Ce0smHpNwhRJ+cj0OdYk4i/eOIV2jx3q6q3HS4XFkOOpmWK4v9Kt2xogXSDFddhjZSrkoyPg9p3GMA+edrTMU5oOcTuliQm99SYsEzPteRRkMyy9o2FGXOhzbLCygnhiUTAYy3kxo7+ot7UdeFJZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx1xZC+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx1xZC+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772633693;
	bh=Ps9dXtoEzgsxPd8oEGb+olox8kfd7ICeqPkshTpeUU8=;
	h=To:Subject:From:Date:From;
	b=Kx1xZC+TXvR6w+xosabvL7brXR0lyUTDXfVCIu+Ug3siEMGFbHKH3AJfEKsmGgud9
	 OXZh3cWOSLum7dBwOwLBt3j9R14QnHY/yHa4ljUGJrPSNmHVU4HdM4kHo6n3h8b4lb
	 UiClwYnl8UhNai4dp+TeNtqaMSygL32izANjxpuBt5Srnp1geWs5xS16/DFHtZx/22
	 sDDarTW9h13uFIwS4fXNLLREJodSWdWBKcn1Uu4CeoevbpUtQPew/2h8oT/JAlIHb1
	 5i+JQI0RwevhPjD0tsDe1Y/8kqF2McUExxyL78QlRWcnzkLdulnn495LxqLknYdJwf
	 TeIWD/LMC2j0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC2EF8FEA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263369367.10762.16193053247964109162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b6bdcdd28aef80929f42ed3d6920c467ddd0cc50f9a5226423b10a0849b55f
Date: Wed, 04 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772633693
