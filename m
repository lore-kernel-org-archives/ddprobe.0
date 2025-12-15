Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF1E3168F8
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789374; cv=none; b=jNvXM7Js8uYVihfPd93l9S2sA3Zwd4WJxfcdYIbudhkyQ6VYGFj3LZng8VnF8hbfEZBZMZdtjnkAql/tuiij1QwIWvyPT59KsNFp+PIRFaTFxrjKCG2H8IFhb+vkCbIJHz81nlxiShbHZHKoGBsUHb3VJ3FIqi/lA83VwE+l4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789374; c=relaxed/simple;
	bh=oAsgUGppWXJSMstp2vXjt4bzHiA3C5roBUL6EDj6glU=;
	h=To:Subject:From:Message-Id:Date; b=Wxfy0OjyQOp+VthPYeOIDK0uzNWZadObO3Ih6a/IrcZWBmOCTSyFt1J2fyuISHVcb1IiBP7dgIvogfeepSaOV8uxpwlAqEfko8tfv67y6rOFvHB1oOL5XitkIuxsz1Z9IhO/xSrO5SUXM5R2BB0FF6mx8H3NK+Mght+U0f5/wOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z30MDho1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z30MDho1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA266C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765789373;
	bh=oAsgUGppWXJSMstp2vXjt4bzHiA3C5roBUL6EDj6glU=;
	h=To:Subject:From:Date:From;
	b=Z30MDho1IFwW2Yuwn5c8ROC8RsyRVX/AqMsqHs+w11Wm3YuKgaulQY/AcnfGf0ODa
	 gmB7/8UdxtxjwzfZ/VbiawP1pJzQC6XQPEVZXYIaiJibdRlYsS5xqz1F1Y5xMn9qq2
	 FaXYOePBUfpJ/JbEJPah3wF3ausicD35++GJ2GfzcbSccIUpcYb+QgP4gRRrOsPCnD
	 BgVt/aV56XbcikE1k5+iZByndBzi9A6vGkEmnbyVzFa6BT+vVCJNzI3QsWCHBRqxzx
	 fZvVG8bNm7Qz1Am/BoES+QJ4gBjw6SNNF7UKvfaW3uJ1aSHM/iLgTUPQdnw87ie1zY
	 rgxk8LQ0U75Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1C2D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578937363.5647.7776461506953403767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb606e13605db9b537a39d8e38f8be3abcef2e6fa41e151d5899d3237f2fcb93
Date: Mon, 15 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765789373
