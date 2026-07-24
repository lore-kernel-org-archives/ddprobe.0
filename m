Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429DA389460
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784919034; cv=none; b=R8fNCi58a4O++WWgojikYc9vT0Vp3c3jLIf3Z0Mf0hEsr086Rf+bufXctGwrhe3XBPYUGCDHFEtPAlSO0kthUZTrxg8AiCL9467K/8UzNMKYk2NsxvdKuv1eqLqtID0fR5AUWcIt2h2DnbBQePN32RrTmm906O9RSEJCQT8z+4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784919034; c=relaxed/simple;
	bh=L7RSBsfTL0I5jzDLkJin9BtASuFRBBD0m0aWYmLjnvU=;
	h=To:Subject:From:Message-Id:Date; b=A9mDzfnGTTbKnZX2nT8SF8S6YbOcpuCTxIWouAGwNXVFL3bZfpmkHdltTVphmnOztclQVQ2lD+WwgdyIz2zCxmcjlTUhdZnunVKEltoWgh1TqLu/9mQ8PjpM1r9DVkpoQ2Twav+rie1Xjhde3bKnBNgbQD4Ba9A7ZIfBR8DByhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+GonsDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+GonsDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDCFC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784919033;
	bh=L7RSBsfTL0I5jzDLkJin9BtASuFRBBD0m0aWYmLjnvU=;
	h=To:Subject:From:Date:From;
	b=f+GonsDqBPNHgsMWrmPiAUokoTsXhfGM3T1sD8GbcFsCjXOXCKfwvc+gfF5dVQNen
	 7jCL19j7ytdJCIL84hCGTFhNcxh2P5ikYEllKnLnZYw1MojXXmXQZJupqirYzO1rCJ
	 lSRUcZ5QLUCsTkE/WmUcg4E/ncIdeiEsw7j2KN/SK0FnPFJS6JRu44KvWEUeYn2iTT
	 2Ut+fn+wVWD5mjYm505Msn0TU2gB/LItvBTep/Vwbtc7ifsxevYyMRP93w9dWJrpns
	 JB9yYqceJsiGqL4FykgClcfJMzNKlNnvei2z9Z0vo0DkJKKdljhUu3VwCkMpPc8Elh
	 Nv/6fVPw7vh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9AC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491903368.7375.4504834468946322777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4caf35d33fa2a4ca1e7905197ffe7fe0fe750d5930770b37ab8546045ca54253
Date: Fri, 24 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784919033
