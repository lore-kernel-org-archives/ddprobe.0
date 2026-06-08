Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A6F34F498
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780893874; cv=none; b=Vg69ZOZaNA8zuE0hCDBk4Yf3zNklnkDA5tP1jm1TCv4LLkiU/VGVRvUrgYaGmdUo4SPmMPJJqOLT3UNJtqgANX000jj/kRPyuU94CftZ0GKoiY5zD7S4BmW/gYkBGhH/5zi8aLdtHXH+rVvodCZT139V27dcX3bJRsFOV4q2HYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780893874; c=relaxed/simple;
	bh=XQZTSPkMCeN+jL8jNZlBU4TrUud69hmpsea/Ar0EF8Y=;
	h=To:Subject:From:Message-Id:Date; b=usrv9jKFPB8t+NK60J1i5hG2KNZz1ywzWAa1TY26l+5dobRxpixOOkHm7kmd0mMC3MTLWs7jzWbwTAcJJM2kSTV7ohu8r+OcESC0cHZL8hWq78H+zYAy/hdk5zKWDKmC5EL+aSRMq0y7DzwSK57sq/zWai6u5aGzHuvGZxUBzwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2kHOKVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2kHOKVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F2C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780893873;
	bh=XQZTSPkMCeN+jL8jNZlBU4TrUud69hmpsea/Ar0EF8Y=;
	h=To:Subject:From:Date:From;
	b=G2kHOKVH37uyeLMIBh8XMu2oycQaVpB5WDpwtZafXv+0DESvkqA8rYsaKz6MOXRPr
	 gm8XnSBSVji16QFYlC9e87RWhIPg3mtzOtGEOsAA904MPoqsPTo6JhlKgQg8EJ+FS2
	 7qCDfzAItj68knwAdn36kTYy+ouT4ynj0xsVs7XWbF5WryEZcj0fPB6SK3B+8DLiJe
	 btwh9Z00RGVNLb4DuzKq2JsOTFTmf7K8V+YgskY9R3QACe1F5Hr32a669SedV/urKt
	 zliGkkZPQ9pTw3KtBkDCDVWbTD+yIQuge0zpY3BKJ54kofpPOBZMzU+Gxk0XAWg3GQ
	 jn4YqCY9P4XlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16EDCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089387369.17117.16186325638862873264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391f51de9794380f3e404629c9679459b2a45c14bc0e4bfaafbaa126799519d2
Date: Mon, 08 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780893873
