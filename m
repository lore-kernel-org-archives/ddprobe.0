Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB27256C88
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767426234; cv=none; b=HPPn2PENR6ypEVFPdRCAqYRP8cn8BioAk+yno4GM4gKrQXkV7c2aiq6Ct2t9FoEr6TTL5yCsleU5T344cCw+oWxQ/b/8ebdeXKnFtEg/h6DU4EDmD3Q2Na55BC8M5XhpCI+39w/3TmLYcf9UhDA8xiYrpbt0Fbi+9+mt4z84a/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767426234; c=relaxed/simple;
	bh=ZVd7Y48eDlNuxxQ8hUTL91+i5kpohnFZANUNZFiJ/ac=;
	h=To:Subject:From:Message-Id:Date; b=dNF1E1ZRw/93wHpKzaBuxJIygjDlvoa3JU51i4d1TY3Ze/2GR1K/oVA3bWHUI2pX80qzSIKTJAncGpJOsuAEpKg1IXiRXZa4pjrDtQ+saMsv1B0L1/H06HIhbDtXEgAdz4yHVADWiJrJVEh+FvJuy4/e5w+oqB58iGfFQNE4HPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F57/ITSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F57/ITSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767426233;
	bh=ZVd7Y48eDlNuxxQ8hUTL91+i5kpohnFZANUNZFiJ/ac=;
	h=To:Subject:From:Date:From;
	b=F57/ITSSIUYs5P9NOE9i6cMHgHBGo8qxBTcWAtH8dfUaNK0kQ7uvdVyNmSpihXlnl
	 kQnFATNy8wZjYWztX+jcdFIE8kHRffsA2xHsbdMrr7CVzoFhnikGWuvacWh2Td5TBD
	 CZeYRZ8vkZ5zkmxJLNNbG2FD/GsHzhp5pGOdrFtWyXq3j9Bf0o6t0rSMUvlI0z7UeW
	 g/ajvRtD30lkLaWlyLSWTAIAw3aoYw4lwfvjXkozc2RI0RhB+QKrv3hjlTDbSYihrl
	 BF1Cy6chi3OHfJuVJuV4/UBM4xE3FL7FfrpRHvvvoSKTlSB4ho7NLC+URQAZofMu0g
	 QIyWAAju1O0pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588BFC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742623358.16775.5442402289342462450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13402a5bab6ec1443d1a1f3346a0559c276632ec8db5b6d92d4153dfe0c27d6
Date: Sat, 03 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767426233
