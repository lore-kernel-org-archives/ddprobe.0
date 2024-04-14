Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460DF50296
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713102563; cv=none; b=ipg10OyVj5FsSJqg8G3uMJpmQItUtQFmLX8UP3+eLxYDkGT9ag1cRvM21kBC4mkGnkSEiDBilcb5jEpsHcfqNBeYwAa92Rjaq8gxVTWM3xXGVYpu3ayKtQhurkb1Rz3l4yEoxWuJSbr0PXRgTruSwc3SDJDH2baWrG692cqWU+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713102563; c=relaxed/simple;
	bh=lhpeHHZW3lXphOuyauGIub7lKG9RA44QkFtiij4Z1gg=;
	h=To:Subject:From:Message-Id:Date; b=QNybcobyW7SD9xlK3Xlb/KVV7+eNEhWsDwdnYRbvgoheoZC5bxQ72ufCaQQ03SB7SoaWc71pmDv9xjsJombczuN7BU0eBnPCXinMiFzruDiXdVYPa50ytkfJsD9oycsfBKaK7cadBs2UE+LMZetZxqotDVQ9yQn7pFmbqkPH9jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6tnXpZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6tnXpZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2423C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713102562;
	bh=lhpeHHZW3lXphOuyauGIub7lKG9RA44QkFtiij4Z1gg=;
	h=To:Subject:From:Date:From;
	b=Q6tnXpZq5uEmUvsOZMEPRKLLVjfLm0qPIcJsxS1B8Ak593J27k7/Iws4XcpEVXRrI
	 VNU9JkkCSQQaQrAFDhk7iIlUrBEsaWO3yhsHYmWelWTbV0Yqukvl0SUuzeC04cUKLw
	 6tBmTkykvhKGMQnUOyehbNPMZIdNHzwoeGAgV3zdKZj9I/Ao3BwB5uvuwvKNjXo9x2
	 bl8tuNt8fMU8PsCsIBt3966urEwu5xf+64NlDT1K/cT+LiBaJWpzSxyCZEHA1ysKxh
	 b0gpZwyviV/MjQcSnuipLhl/htBmbMc22qVDJsBhOBU5aSmGhKFIaz4QV9donLTlOr
	 yPtJF73RXuY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE109C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310256275.4935.11890972469169146339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e79278a7a1c783a67f6875b6bdc412724620331f8a73241a7ffc774af00b2f
Date: Sun, 14 Apr 2024 13:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713102562
