Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33517C148
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726800954; cv=none; b=BbeCqnhPHaxKNheFKF2vVkh3yT8B2Gsd2BBjxhHR+HAXr8oy0y6J/tlCaeDjlbPAmWr2ILc80ZptrDyUY/ZXB2oWqIAblzgkVsoZN4RG6CG0k7RhgRSatrjyzudtSJUCn/rP0HqPHW2NrYcQ+uVt4UI+lPp8RbABSEn+e521GIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726800954; c=relaxed/simple;
	bh=Te9GkZE/UI0pIgTy0OHsxYLUQyKh8TbmCmkGYlilEmg=;
	h=To:Subject:From:Message-Id:Date; b=YiOCAgdzk+EcLGD/L3mgdndOo8tnGZDaWPPDwji4q2aEJwynvWsfBXeZCfywpDNseorNSR5as/bEsVW/IQXhWBqcP0WsEca/CbHq+3gM+WxMlbyf3r7oifbzw3ZlUk2x6EJgUAqjSZBTAeW21o4CcfKKpXYd7eelHBHOU/L2OXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh0sUe2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh0sUe2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6CC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726800953;
	bh=Te9GkZE/UI0pIgTy0OHsxYLUQyKh8TbmCmkGYlilEmg=;
	h=To:Subject:From:Date:From;
	b=fh0sUe2bchrH6mFGv30AAT48ZZi3EhJE/QGT5/i56LGeDASucfmCRw78DtBFTh0YV
	 +BbZ+m9IlONlxR2JViP3PgXNa2wOnFxByRUVGIjzbeeBxdcMONkJEXRLLlLlLJu1Hg
	 PvR1XAvKR5+GD/gUqqNR58UDxZq4/Sikf+h23xSA+s+zAT6BXnjx6xyYCs4bKUyrnh
	 hp92ooaF3TUzldPrYsEuXzjmBVvAoNDPzzuiu9Ry3LADg/m4PFPGxE255JjoWMN6wy
	 rJpkmRDiSU9AsrBbv3QkYM6rVHyeMvbpW3rKy3dPCZwCOQ164nlUgXYawImCza8pZL
	 OxjNBKayTx3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96760CF3964
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680095358.12864.15042930987920507981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8f7ced0bbf6f3bd9edaf2d57039b1acea53874d9b7d8eb7a1f463f85490517
Date: Fri, 20 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726800953
