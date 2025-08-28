Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556B30F817
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756382994; cv=none; b=IrW+ceNl+Lq+zg72FNgHOFGTZZGEQZNVDZH64ejss1WBL1R3W/4VAR5pi+K6yaL1qBUqT7xahEHPyLFJWwmbp0p9DrltbIRnPPDV7WXh/iGOnFSsA0U7m2uIhrZIW04AZA1fDNFyiVc5g13WX7iEHDXX5fPh2Rug2D7gx+tvvYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756382994; c=relaxed/simple;
	bh=gfM2b80wmjA6VzEsYGrfYQd6toVH8LqwuOswDIp7Ixk=;
	h=To:Subject:From:Message-Id:Date; b=Xx60svxS3voVR85B48GHItCJCSEcoJghXLMfMGVRhmkJ3JbiH0dhLeQnChS9Owq4dwwWn6+Nr/x4EjHzoOQYS10yg8AqiTZLnBfhVuFt1wwAtq8Xrmx5ZQwSxmSsmNhlcld+E/dfbH3FeAHoIgCiPa/pRDhHyQl98rLOyPRg6YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7Cg/Rxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7Cg/Rxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756382993;
	bh=gfM2b80wmjA6VzEsYGrfYQd6toVH8LqwuOswDIp7Ixk=;
	h=To:Subject:From:Date:From;
	b=f7Cg/Rxce1S9m5iLhwgbSIce3C0jdUBxjyNjBALg8pqzEWZwOL3obOBIAzHdmdiTy
	 YrRTUwCBpKm9ugOPJPdvDn3tz/NJV8BEyTK3HxwtEMRNr6IS25hG6CKw4/WFCaVNQb
	 hwwrmMfQOFZ/JbcgDfz8O+PCPphnXiJ8PcJONG687kZA4gbtcQM/JW/4Bp28pModLx
	 aGc/+0ivjqaEWvJDC3FGmuonOx64W6PcIOxGcmR9SSbQR/T0dLp4N24mbUqoTwc59o
	 TUhLvR/P8K7FetNTERL+OFlMFTMGymEF78J5puuGK0nYkMtqyVvrWGo9wxz33yeXLo
	 dQCaGfBrbaI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638299357.29009.1780359050156541161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b997f9bd9f3c233c1494fafc8d1df5ffa41f9337c1ffe738574804911e140ce
Date: Thu, 28 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756382993
