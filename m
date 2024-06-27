Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518E819885B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719501863; cv=none; b=qNMg2jZ0dUyzETRuO83BZKrg5NofUqlhKpgR/noHUPmRXHjF6fSe5Gu6+FHN3oLvMfkd8RTHb8NALUoWfEravlMUpSPJOpVqet0JELLLsRnBOxZyla316OAH1J7l284l8qwJo77jqcRkMqpluQVrznJhIF78uqozUbluhfWofww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719501863; c=relaxed/simple;
	bh=v5GoaP0bE64PjdVuSVEI8wMgIPP01xqNzFQZns/ZLNo=;
	h=To:Subject:From:Message-Id:Date; b=h3IUj2M7MQx92tCHLGfksO06jJDKCihpUFyxSBf5HwADIt6tmX2PPnPL74b1mCMbTjekEYYCvsdob/bo2dOwEdjl/VM40gLQ7LUlUIxu0rylEQcWOq32tZNq63TgFU3V2PuI7Ug8pMzpn7rPmLgK7mlfjuRCUqGMI+UTjrwp2Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mn1IbrZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mn1IbrZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D25C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719501862;
	bh=v5GoaP0bE64PjdVuSVEI8wMgIPP01xqNzFQZns/ZLNo=;
	h=To:Subject:From:Date:From;
	b=Mn1IbrZXCFqa03vETQ7DVJmHYWd/VwH98oWBkM3voESBKbeei8wlajP93lTl6smSy
	 wUbuJ9ZEfZWImIY+NeKrvous7K0Dik5xPJD5LBCJSjJXBPVWwvNYWhYWlR1I0ghwlD
	 def0JjiokOug38L/JPLTxPSMURI9Iyd+2Z6zDTWBcw9YbrFOlj8PSV329QSDmhHzVq
	 j95PnhuXgFb4E3DBXK9iLhvrLWSnZOyR8lkrOQcut5Ayaj4BdFzS9HOAFNo/k30k/B
	 /mC3nOcYI1kLUAZBeEU97OnVzXL95ufuFSFE3/sblpSejvr2pBHHojGGcyamfDHt9C
	 wT4ermeAHZdTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E40C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950186277.5159.2444734432966433232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ba3e9706c749892b2e201bd5b2430e684455f7a95126ae94ca50ac12130da3
Date: Thu, 27 Jun 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719501862
