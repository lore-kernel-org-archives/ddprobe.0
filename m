Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C153408034
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779205234; cv=none; b=IURuL0N98oA2fc/6V4vjFbaTo2Hh2wmrHJ75GWkMr7suu0nNmOZTijcDMEab9lu5ghaw4Tpvj7tG+uhAL7sgM9Mh8VAYlhfl0Db1f1iQrpPQ+1J791yUfrEbcDAZVnV9m3k5vhqn9n4bnGPMjA796SZnBRz75iyYXrRcx7/HAqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779205234; c=relaxed/simple;
	bh=aE/vJwrJWLo60LZpxIboWlRIUSFMwVSVXDLM+934/X4=;
	h=To:Subject:From:Message-Id:Date; b=px9TxWGKY5WkH4Sj//wfzk2LEnYSYLNbEJNEpLAM44x5lGEBBgZsDXraFHRvf3T/7wudrIEYSTb47SzGA29V2n2XpDRrNUvs7lI1rTC7PGL8PxR1vD0wS3yPZWoL/0WUNzCGvS3SeZAA+RDKnkekyT5DbEKRfJy7MS4sfAwlvKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgBg4vMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgBg4vMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB93C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779205233;
	bh=aE/vJwrJWLo60LZpxIboWlRIUSFMwVSVXDLM+934/X4=;
	h=To:Subject:From:Date:From;
	b=XgBg4vMjdSVCrBezQU2eW3pn370w59q8AwrEdUrclfetEOQlGzgSyk87Ihh6RQ516
	 3BGXXsocFhQAId6ZtQONj2y5jQeYNhSnX9uB0P/woRnU0CyZklLaHG02V0NqzD3dpn
	 yoME2EEhidH11OM/One4niCNCefdNSmiPO7KkisZxYsUFALEx8yoC5EtbZmr2K+aVo
	 6CudrRO0javvWMHTVfdBKNis4Yl0NQqH33HL07XhSo53DGF6O7fOEdW+LB4PAAl8oC
	 NELFWRzuzTjdtbeCpnEB+R6thZB0PP59R3mnp0RwXZ+UzmlfEVXYoNTobSXSkdZOaH
	 6QwUDk/+DD9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1CECD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920523369.3255.15811282134865937174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923b4ce7bba3edf1ac0a7362c63675c0eedd9afb10bca5570acda99aed8ce533
Date: Tue, 19 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779205233
