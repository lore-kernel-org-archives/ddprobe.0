Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E42DCC08
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770665034; cv=none; b=VVnU1e/sswUq87kH00HxQo+hsEn/LXTZGrKHJLB/ZVAt8Z2JwBwNKgymGgIyfSz057lqspDDVwDTy9Ti0lUxVj67leqchn6XiEV8mY8ZnTSvgmaqfu88OgJkHIlTcXw+MZF+O/8PVYXSOfSd0hTKPV8Z5Vgnp0+yta1lK5l9tuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770665034; c=relaxed/simple;
	bh=QwWgvdot2CY5ZEN8hB6Nd+CHyJJcx8njJQ9z6OUneUs=;
	h=To:Subject:From:Message-Id:Date; b=SnT+706dfrepiF60DNOYj5WbjPiQImod7XtrIIg6M2ivmpvVDXfgCIrKfjQ/IdmDRlvKRUcIwhLmDtom6omkp04oBT/s+5bPBhLKQzWv9mFA9+T04PIqOZP4clYgLLMrpVfQYHDyEY2T+Xt+718VdhlmIPHayYrRh+zKV3ygZAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEsLTEst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEsLTEst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9385C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770665033;
	bh=QwWgvdot2CY5ZEN8hB6Nd+CHyJJcx8njJQ9z6OUneUs=;
	h=To:Subject:From:Date:From;
	b=pEsLTEsthIvl7lXsRf8QWijthrYfOR6iMzod0HtzY/QWUM7vKCnB0skoNLJTUP97h
	 A7BeIefiQ37kuAsDYRW7g8/6s4BFT1l8Gen4vxMaDzJaEh2YU+bM6SWvuFcbaIpcdo
	 FY7Vls7UIod62V6Ewz6fSKQIkomDCr11WByWWh5uy7gQc5pu3vKZqLpw96T7p3Xb9j
	 1Bze4PQHTlYW25dwIk09WoWN8zJ1VwtsQeUK1A79mEAGB8l9r7lcQSwcAV5SIVUhUG
	 J1xbZ02BWO1HKQgvkrePCxRUflCYJN2eve/MDPSV+5N9TJJH4zxyHOEvLRsfv41QUl
	 fJtuCOoIObcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98817E7E0D9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066503361.14922.5594500512793718703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85178dacdc45b78a25d6a5b9828733829dd540607135a9851e1bbb6e8c4c65c1
Date: Mon, 09 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770665033
