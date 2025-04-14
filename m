Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0544C62
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744613994; cv=none; b=ZGkSxruuK4Qzbg9kze/cnhdMeEoMxSRGWpouk8oBtsF3P94LwjSqRL/9AF6OAFPvY5fFCXWOM1IwnNX6jR++r88wuKueaJ2BQtHroTVscKl2+rOxNWMFC6vnCH9ja+tHytiNS/wewcPmtaUmLC9itJ6sOGbsL/gpZfZ0eeHXDfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744613994; c=relaxed/simple;
	bh=08t3dc09jM9ihV2NmdbeFHbhxOeKtIBC9/Wl6oDNo34=;
	h=To:Subject:From:Message-Id:Date; b=LMQxi+yn4nqh7tRuge8C6yM0zYL/kGlu17HDIlaIxeyUCnvx2uR091uPLL68UJb5xJHHyXt+7IoYlfw9wA6Y7L71/K2zJqbuUSzp7H2Mb3lpVEYc8Z+xtcCkroa5TVwC+6DlguajGjMpkvbqNSODN72wUHlvzULEklfQv0IRzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/4aGWKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/4aGWKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDEC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744613993;
	bh=08t3dc09jM9ihV2NmdbeFHbhxOeKtIBC9/Wl6oDNo34=;
	h=To:Subject:From:Date:From;
	b=g/4aGWKuJXF51fG5+GKti/w6q5KPVB0B16EW3wVMF8Bkb1SODyUIPrAoAlsmmNtVX
	 gVLolAKwo1wIHMgJZE3Yj48+k3gMecTUAuDpxua4w20dF7wq1l3E2omUWL2OAcs1sN
	 xFrtC8otkIKBinIOASX2OWf57hPvM/XKNvfXxQ05lhqqfuxELUBdkkrCRo7f6IKZPt
	 FWLznuBwW0zrMAn5IBGZ9su6DLajHqv2rCnKipI6DAzrBazo0i0qyjojo+xNMBlSJM
	 gKNbWnorNI42ZWZsWIr2/VZfSb2Bg/0jdNYNb6C3OZl4If4/EFGXbFJZ726wsmjJZh
	 NisMQR3HmrMQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B7C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461399359.6463.10729002400773147207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba0979e90f391f88493aa2dc24cfaddc8b969a028bc758893673e8a80fe542d
Date: Mon, 14 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744613993
