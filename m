Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFE317C6D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713923423; cv=none; b=T1nCEdn7PW1jr2Q1s72kYY5xLmxtAM1TKq1tl4gDU7iGiCXBVcjuTsBPKLAchvDdmytTM0iB3R9J3Abo+Jt7uOn37wcuEJn/E9oARMCaGeLg2wSRhL6XsiOr3pKqqsq7fbNtGAzFL0rI18OpwEs0dhgk7HulDztUtCbevfSNR7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713923423; c=relaxed/simple;
	bh=vjJfi9WXbZbU+/iHpq+kIeZ022DLvXU+7IqBaEbLwlk=;
	h=To:Subject:From:Message-Id:Date; b=V5GopocdwtljUVSu97VfN21yXThkIFQBGcxDqhS44aqKHN+5uTaxwUSmG3oUB4R0r7dDUp98AQ/eTLSgL/BURQfBLS72zayf8uPEJgOGoidBp0xMmjbOLoJaD5P3oPkXtqVvVfbOOll+Qd6CLsxnPn4zKWFlfwQpK5KFMfmwz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl7kIa6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl7kIa6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E293DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713923422;
	bh=vjJfi9WXbZbU+/iHpq+kIeZ022DLvXU+7IqBaEbLwlk=;
	h=To:Subject:From:Date:From;
	b=Yl7kIa6t2IFPRd+55sqo7sF7lOl2DDmQIfvImoBKwOJ6fWtjMWrWxrxu5ICdmH5gf
	 xMn6f4QemsRFAYneFp0Dd/n0FssPY6lGljhSpgiugmM6jVYRzVYfZsxq0lP+Ftp4LY
	 ySpwlOkKsdHyXMqGgnDydPwjQWYQc6myPVRZ+/bB/p4n/qZLuQ8vgCy4nSCjP/pYxz
	 KFIv+uDoDIHbLz9qzSurrm0ALE8Drmf7Y57oLHfQnF4WgrtaPgbaURcHGHwj5kHuAL
	 JZ5qUONB2ceN5qx0iKEcNR1L+ytWuMfBi4sTGJCEthDMOrCb3LhiflhxOVsmooK7Vp
	 YlsyXtIh53P2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8389C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392342278.19590.875068002388139461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57155cd634f8dd6b14fcfde1181447a76cf7aad5fb91a7cdebf7e55dfb7579d
Date: Wed, 24 Apr 2024 01:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713923422
