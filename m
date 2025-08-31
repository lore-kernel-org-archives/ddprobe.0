Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17E33D8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756666194; cv=none; b=dh60VcNyWN8LIlT6XlbtGHwaKUxqUnWiEQ2JaouPFIwa635YqGJblHcmXqdef/HQeRMQX8zmlEkmAXfutQHComAVnXu1SCUs8JXMN3aBPCtPg41w021VOuNE0GtYP8HJCFF/o3UGyQ20zAnPrO6YOgmnrE+/4Ut5EN6bxfTfKRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756666194; c=relaxed/simple;
	bh=E2jQrZe2N/BMVDmhhs8NiUYRCDKQj0BcACpd2RA6nco=;
	h=To:Subject:From:Message-Id:Date; b=uAyzqDFllhsemWx/oOnyES7G6KPAU63w/ZQjsn8Sq2JdIDTzoBr0dM8Xj0jN6pKwwxxpDrHQx29QSgrVr2LACcnIqxvetHCCfIYSvOG3EcSXmVLo9Z9QED4td+VKNQRyiGubXFex6VKbohSKOOncQjATYLHBqF1EPm7HWnN+7YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn/KaLY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn/KaLY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CFC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756666193;
	bh=E2jQrZe2N/BMVDmhhs8NiUYRCDKQj0BcACpd2RA6nco=;
	h=To:Subject:From:Date:From;
	b=dn/KaLY1Mfbjui77A898Fx8M/QOrIuwWDYIdecwhS3aNiXJHEOnq+K9VTF5f+tDTR
	 53pQ6FVIgFKOidaO5KoQbptWDan8E3asslV6WjTlBZs5tlgR1rUltmnScFENVAlHKP
	 508KZul33JxC5ydLRb2DXDR3EWAiE8YfGltB25apQJ069HXeKHW8Cj45RFJPQhAvQT
	 HD3FGNChEY7U1nmcRFIcY/S4aD89IlzWSl4T4T2avYblM8qAoJBAcmXPt8McjtqokM
	 HiGYvPe2uNmgsVlFMkuybAqLXgt1yyivlrHiwKsPwTWnRF3iXCrnJIpLc80bT2J0Nn
	 mN8epDGKkJMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF7CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666619357.15098.10212739557403676208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf37d2a9f2ec08ede85c43dbaf83fdb88107f79643c04cc947178fd12b95f63
Date: Sun, 31 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756666193
