Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635A833262A
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790623834; cv=none; b=QAiQfOSnK+2sPFKgRdQ5YqKdtjYWN0vOQ19XB0mu6USrzAGraZQtkU4c2sjhx8JwRdpqx542pGLScWx7QwsLup7IL6kA4rHzoZ7WRU4M46uvlYWAi9OlZtclaWx/4Kr4KQafeZwI9D2OKE7KXusvmmGIVfKBOQ3oMUTkJlG+7C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790623834; c=relaxed/simple;
	bh=eTyc6+Unjw1b+yCZUHPzN4iYgPClD4UT+Ue0YjZaXB0=;
	h=To:Subject:From:Message-Id:Date; b=pvZK8fdSK/S6sCWYyPMGA2tOP50QLtVPYgKs5YHTMox9KUBETf/6ONSjroxXBePIKaM7FRkpZz4GdEOVwNnc27QKVJeRMzSRvXRCTPikHcgqVd6IA2kX+EDTxboqrbPvR5H/kB+hY08S46LEHtmIDF843RFjrHt3XSoBSo2rVvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLsgkOWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLsgkOWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D9C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790623833;
	bh=eTyc6+Unjw1b+yCZUHPzN4iYgPClD4UT+Ue0YjZaXB0=;
	h=To:Subject:From:Date:From;
	b=DLsgkOWoOz5Hca5WHTkXvfK/3hqd/SGwdgymLMtW1j4p2avwSGaMXXjoVq5Nc//cT
	 mqosQGFWj9teeAEZMB7wwuStA4dtWqDB4oJ1fBn+g6lBjkh+aMSlNmhrI2FvzPg3WV
	 0E8gNp1Z4944IL7rqw2+VBZRwh4FtJZOWuq2gYul4ceOlnXvUqwCW3OYHZ2wEOOq8I
	 vfU92WW9dVCJS+dRIlt4OkiFlxUHNtsOdkpOmObxEJJ6tDjba3rCFqYBfzC5t2PNeI
	 YFQ+beOKfnXWrKWGZ+X5rlWBJRgjVak9z7yfkT8BTK4UJdWbxOu1NuGFs7nGhvnFRH
	 yoiiQiapHczSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2CCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062383368.9733.12458677452530456005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3257a45c6a6b40f6cc2e4c8de268fabe695ef6896a95af7a97d3f74e769f913
Date: Mon, 28 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790623833
