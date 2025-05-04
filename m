Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2896B4C85
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746400195; cv=none; b=HZ62vDaAUp3AY0KMraZaRFMaym183hyT9sOddQLHpeF72rvvaCXfgT8pg1RZxfNRMDuP79Dn9vMo4xB5johv68mwfPOH2mCrWrVSeTEGmaWHLEJw+lWnaXdYJmwfVofwP392iZM7iXhG7I/dlq0hDDMHBL1fx4qdcxMnjTmuGMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746400195; c=relaxed/simple;
	bh=USMEug/UQpxliC3+SkY+fpUnRuSoJtJuS9Rm1tdeDqk=;
	h=To:Subject:From:Message-Id:Date; b=QIoJeKMouvKOcZnPOw0jMFcspj+iyEiX3iycPndloc6YFpuhcfGVF04VtOJhibKR7JkW1WokN7Dr+3GSqbrnyPRegnw1W38GmG64fWcSKr6/DktLv0EtaW/rR8BVtngSsOvXKGvyDYO8D4elMGrNikJfMYG3MZ73FCFRC/U4z1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So0215Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So0215Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746400194;
	bh=USMEug/UQpxliC3+SkY+fpUnRuSoJtJuS9Rm1tdeDqk=;
	h=To:Subject:From:Date:From;
	b=So0215Sez2TKUfHNyNTHxYqBduuD1Vcn4PAjunBfAEC9DamdHv2tRGJLVwyhxws38
	 4i/3ZKpLJVvfS+KeV3mMQpdnNUh/6j2V/AN47vN3pCUu8/1IWFKkw9uCEuN8Kq9raI
	 zEk+Mshh/3zHL8xGjVBKG7+1itKBdxk5yGwMjf9TBmhzc/rVyYxcx4vj61M1X7B4jg
	 VDshbODuQxWjENE/lIfQUeJb2pEDGXlIDT4g7quXwcnA/GowHSOxc3Xx+mfo1xVc2h
	 0Mn+lB8uD61BteGXgqhVvNcY1epMgcWzfAmPV4alf5yu8fFaks7oRWwo9egCUI1Gc/
	 8HcGZtMh8y5Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F042C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640019357.20055.11435836870958171213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae85615510291740a601069a532b4d3ed390e998e38b795af5b7866b7f6137f
Date: Sun, 04 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746400193
