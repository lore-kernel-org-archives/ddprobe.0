Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF5614B963
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718057303; cv=none; b=kSBtR1m/4dWuuge72euep8hanlSiMFROmjOWx7zPBUwRt0v9yd6eQFPiTEwvgTkBT62ROLFBHO0GV7W3GjSmCNp9lVd5Hw/DWV2UIM6bXnOOiuS5y2Fj/huLHJAmSZxbgPt0w1eRJz2U64gIK9cuKvODgBvV4kRGYd2+OvJoBdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718057303; c=relaxed/simple;
	bh=LBG4dmgJ0DJ7F3l0ZmAzUEBZmRMhgjo2wV4kUs4PEB8=;
	h=To:Subject:From:Message-Id:Date; b=TXKPlpzUJHV48m2XuLzF1lHag3b2gxvXcsjQaxWVKjCKMmU/rdJWy+iAuDBbsIgY3RR5IePpGcG1kVtoZpfvi6HqQr78/nvwLY6+pf01bRb/8PkOBXH5vQvS0IMgY6igWj8ieeJbY43E1DMxTfwAXWLoy2hgKnsPrW1Y5zmXD+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+cHQf0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+cHQf0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D552DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718057302;
	bh=LBG4dmgJ0DJ7F3l0ZmAzUEBZmRMhgjo2wV4kUs4PEB8=;
	h=To:Subject:From:Date:From;
	b=Y+cHQf0wwZwtknyot/QDs+i09gNwKKUySU+ASS9lZ0Kw1aTzHo2PS3p5kXJRsjhkA
	 F/jou5pjhghGd7BHSLeu0APfMbCUkBtTqsRtdnRVgBzHGLnfiFH53QBPK0uLSlOxK+
	 yOMFTylywH/84jTNd7ADMxr/2+rHtJO3JzX1ZSAVJNsZX4BBj0CFYHaJca0+lrZJ3E
	 /b/ELYZVbKb9+RNaujmrFWK8lwMCnnQxd0pJPQ03kxUHqd92S11mNoxm4kWmTul6+J
	 T5UGGn+g6xmIT/q+pnG8i+ZE7BTDda6HnKk5TVk2Kt4yvdGr6L3pwPtuE5Q/UVbIcV
	 8PjX/PCCTxIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF54C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 22:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805730277.12278.16941328654864348780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf95036539fe1ff30188eb68939d811f462f241d097478a7adccd574c8ea5d2
Date: Mon, 10 Jun 2024 22:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718057302
