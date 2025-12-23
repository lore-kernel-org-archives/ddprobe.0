Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2542E15624B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766460234; cv=none; b=G5/bdEHg5xM5Y+keu2pTJGlLJbD8VExG2vx1XsUGyFwDrXKjwNkh9ayxoqnLpP8yGI1zrgt9BozCv6nWPnJz6aQgSIfUuoDs3D31LdufgBf0iV+kgr6KHsUB5vO4zvSNf4kYH1yRDh1YSIEB24Er9eOrdXPw5sSW/wkdVkXIxKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766460234; c=relaxed/simple;
	bh=RGi7XyTQbn95lb0xIkUnF2wWYok2uLqjAsEq24fTC+4=;
	h=To:Subject:From:Message-Id:Date; b=l9xJ6GdjbHtqxS5SvAU6EQeVIfJNw4xWNe3otQDrf2bT5MmakzClUntOnkoHGOV7IiNOdZ+Pzi7Jv4YnMgoHPggLf60AZJ9vZITLT6qSHb9jUH4TYlCs/MmsxqBziWNP8mB7/yBtnei6Y23RjphUw4ORG49gQUweVWdmGBgoNsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmzBqis3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmzBqis3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766460233;
	bh=RGi7XyTQbn95lb0xIkUnF2wWYok2uLqjAsEq24fTC+4=;
	h=To:Subject:From:Date:From;
	b=JmzBqis34+K8nhReWf6CLY6CZQ0QAS0wnOgGJME0b4lSaGb4mN0rG9OhTi/Xeh/UL
	 BoLWCiNv0uSthbFXNPdmhcjzcrKYZrGD+L+L9+S0Wqdzib2jWgFBF1CHWG3jsdaHUo
	 tHnLmPFm5dwB13IFvqqYsX6o8dSuawFBkwR7nmnv6Iz7u60cOmQhQRoKqsk+kmMzVh
	 EXBVfusAni1rqOXHUt95+eVkAzT90/HexQ9NEtzAWwG3PpVoXawgnwOdzUAp+Z9zNe
	 CQFA8pkqSQLjw0fs7C9A7mE3NTlP6GHs2IsTjI7Q+EqWeHChm+XPwwVcHCnl0PvBnY
	 uMCb1w7oEchcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A4E6B26F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646023357.20271.2543942945285978911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3598a4b5aa7cbb717e59fd9d5bb91a2a04b4721d801a70d107a9b249472a12da
Date: Tue, 23 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766460233
