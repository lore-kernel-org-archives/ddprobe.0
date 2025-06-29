Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29228F9D6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751205594; cv=none; b=cx1AqynGhcDchG9RYsPYVPz9LwoHNpjnqAonsDix3v9CaGxLEzqTgaSBl1Pvo/5zYw0lVs5JdlP0S8S62HHDCT5LilyHghqeWEBJE3zP+0Htr2eetE83qoiFA2R0ApwTmW+TEfy+8IO0HCUOW2LGOFbsWixl2r+7S/2iaMtNqZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751205594; c=relaxed/simple;
	bh=oi8MTXnQJ2jPifvFPVCVZZhH52EAJdXH7hkBMLhPBwQ=;
	h=To:Subject:From:Message-Id:Date; b=LqWbw0t83TgvSEjog99WEMl8+codK+uRam6w93K7DONAq7Wt0s1XYNuJ7FqR/Y3qy+u0MCk8rOPWcESASRA9OV/fYZt7sAutjcn31i08wd5iPyu1QIFkW0WZb3voIPxeylFlL9Jyfw8BOERT86MlfxLQDASrXL1ZYBjzhi9rMuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V348hqJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V348hqJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F650C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751205593;
	bh=oi8MTXnQJ2jPifvFPVCVZZhH52EAJdXH7hkBMLhPBwQ=;
	h=To:Subject:From:Date:From;
	b=V348hqJ/Yb+oIIHxjE6gOgeAAQhlmX91OuNTrmJEoY00WU1yvUIPcBR+jiSHZBV7r
	 Gn12MOEvVfBdbVllhSZyqFgAI1e1l5nqeba/J0UyLfbxgMSpwNvWml+GbtT9VqO29M
	 RZFe5MAKOS9yvm5P0OvQOrPk40/JU1dtZB9cmcs9EhuRqhPW79Ak/w79SPnsveIU+r
	 szyIrG5ipvAzQ/egdHeYFmwwu6+BX37uegEkO5rR14CYWk77BMaSibeyRKCaua7Ag2
	 95wheJdcGcn3VMvnTxhgWJKHRrdXGJBIf0bv/3YugiC1fRsg+2XaOLvKMC4mGHVpDe
	 3d1prQvtobimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A2C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120559357.29653.1307268323333651004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d789c1e33dceaa8f451b6a0ef229a05337107cc0688709f9edb1dd0454d245d0
Date: Sun, 29 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751205593
