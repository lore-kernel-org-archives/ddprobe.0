Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5D73AE6EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768941233; cv=none; b=mz0l87mhHPUl4po8BOseCG2WnJAkpU/CLrY8gg+KOh3KkW004SObFqGKoaEF/gu9qi2srdyOtb7P8NiEKfZ3YbA4dRrPri820USxstS+pnkYr8jjmHd4+stoLUP/B7HT39wKzxNz/jqNUKLd4JNcyuFnb5+QKM3widmO6y7325A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768941233; c=relaxed/simple;
	bh=JwpaVkT/YqNNehaz0Rlw9vYyn8Ljt8E4Jg5Pa1pNqAM=;
	h=To:Subject:From:Message-Id:Date; b=OJ3w9zltoL4c6wFWlcFNk4tjs4N1Nn2YkGRpOVXpJ3BNxqvAskgS7oPXtHr6/cG+XlhUpWIUVDU14fNaWyC18gSquy7CtlD1J4r/s8Z2GlQHSQcCEKUjdmFWuXlf4Fbqeik0S+arGbkamCiQdxn90reokXeUVweBhZQp9nxXWP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=io03xDOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="io03xDOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0342C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768941233;
	bh=JwpaVkT/YqNNehaz0Rlw9vYyn8Ljt8E4Jg5Pa1pNqAM=;
	h=To:Subject:From:Date:From;
	b=io03xDOQU1wJCiHUKcOIiWEKXxmIh5387tt6JleWkacmns+rwKt51dJL8/tj0NXch
	 aFX8z+bGQxw7UfHklDFpjacwDHmtqNGh1quQkRnoO/my37TRi+TbNLUhyxKKtTxGPs
	 X+wD4DO/HGrbPmJnxebYMperltjb7c7sWNNRxH8nSg5NYtwqWIRjXKjpbZHTklMp1O
	 Spqo6he/FyeNu9BZeUPktDDH/VxmeKDewWzfqAsTc0pnycJnRAO6LEaJ8DTdzqHYmK
	 hfwFINn6m9Twdjw7adAEDb9Wz6bv/PXNacLNzlrGNt4mkVzLPiZqYwMuO8vONLrJp/
	 acvrSEltfHLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90001D2629E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894123358.27865.16040655360071005097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965121ab793c747336332aac270d4d11371db98826f5db752ab9997d692285af
Date: Tue, 20 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768941233
