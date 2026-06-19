Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894E33A4520
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781879794; cv=none; b=XTnh8+OPwz97wQ9IpmSvN7jVbmss9hZ342X4FHEWk1wJhqCbRRU2AA3/q43pb3dUakgABxyotCM1eza6urtTQ+QgHzgHqksFAeGOr3tAi+CZHqbbTCtV15cJ8PQEpcJFVBy+tsOZehaGgNp7Xqoi1TBL5d3KB7QPjHG87ULiSBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781879794; c=relaxed/simple;
	bh=oGyose+/AYTlqAZ/dh9bOXMa2ShytxZgJrH1CmIfXaY=;
	h=To:Subject:From:Message-Id:Date; b=Wa61QjvrNoyxH1/YwU4OCzYyc/WhvdV254jVkMbOcqswRPUri60yz3CqI3hQGwCMZVFNZ4enEZ8Vrd7Ajxi4lPVeowmiju6uGdjRXajeII//fVOIYopxxZnixHNWFNBxnC2vpE4iIBXgNaalfFm6kkSBXFKnaLQOTKm7U49+Ntc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD/rwBNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD/rwBNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94AEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781879793;
	bh=oGyose+/AYTlqAZ/dh9bOXMa2ShytxZgJrH1CmIfXaY=;
	h=To:Subject:From:Date:From;
	b=LD/rwBNcDcu864232CGrhvh0854efa3qcvNJyhY4qjQpg7IBQk0mb251RpuLPZSax
	 MLU8T9cHFukoiFF0tQ/cIBjh3gekLyl1FRHNE69BOSSSaQZ5bKR7C7d5+zPPdGk6N8
	 wJDr4kzumekc6AESeW/OdxaKJD8/KTFXTfmzNawGci4k1Ai7nDxOLO6fxptYATCXJj
	 0EGcfEmxCO/z99wRP6/Ce2pCozPrsRzMEg2SM8LouqgE4fWTNrlgga2ZUpZvLt8rZ+
	 deyN8OZzuzIIeObvv/o+v7rTOQTSuSZo5HggrQFOXhPJEvVnU0FHemGM6ALWoXcqnU
	 4RT27P7sQQaVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB455CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187979369.12886.2248993857035675942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e925a5e10e12e11e509beb84c95ace80f6dc99f5a91bbca7d527505d64c2129
Date: Fri, 19 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781879793
