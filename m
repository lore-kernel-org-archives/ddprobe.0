Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40A304BB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777300654; cv=none; b=uFpUTHRUPaD4cY2pETqU7l/Pc1B4e0OUEXEp96c0Lvm05E3OYNNRmfWxs/NgZRYDnk3yxbOXnP6re5U7RUQd1b7TBQlt3N/YHH4/hJaQBPCt4/NQw9yysZTg0aBDQo0SmvOVCNEdqH1tdm437iCNw3ZfFRPVSnd+iQYjZY0pdTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777300654; c=relaxed/simple;
	bh=6ARD8r4kb32q/saE90ExTMtXZ1a/llm5L4jH2z6usN8=;
	h=To:Subject:From:Message-Id:Date; b=JIYA2CBzK1Xz4pUGibUZ0oQrfphxR9Cew7zGJwESExLwN4C6+vTf+1F0MAWsmrKnGbsurXpqQXYQAEovrWrMYGZqRuwRZvuTcwHmbe5qe4TxztbTJpBFlJlfplGkdDYpDhXHqhgrWf6xqYhY0C/P9BBPDiu6/443DokAY2MhW2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9YJsEj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9YJsEj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C81C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777300653;
	bh=6ARD8r4kb32q/saE90ExTMtXZ1a/llm5L4jH2z6usN8=;
	h=To:Subject:From:Date:From;
	b=M9YJsEj/5aOdqSK12znkqNJ0XAqxPx/Ja9IJT9lasWajh/oilcIJCzY825otS01lr
	 BK4i2qNs8b+bZB1yW+mn9sz/cZWfpl78pqpSpfLy3/7miK+3tF/+GKRwH3R+U/wNpu
	 liQB8OxCuC120P7R0G94byZt1Z4L1murLLpZfnXf5VBk+QtwAXFA2iYVyKy70dtBv6
	 24cWTZLswUktcFKErnQUeJCpyOzbiLckogmo8+cgSCOSPOHkopQuQOhY5ipXot5Sg2
	 70A7gDLOD0Al3uoDll6LirLuzaA7/OwdcB+ruiwpjQvCih/p4cGV9PVRVfkRyAQ91d
	 P4ZNicv0ImxPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F2FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730065368.25910.88603880487001021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dff42c5649279bb19a88f9c689148152507504fb508496c0700d6542b444412
Date: Mon, 27 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777300653
