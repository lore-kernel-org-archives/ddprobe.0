Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682EE3C942E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780390474; cv=none; b=fSVzkOCnhAwsnoFWRlXPo85WQvhq76yU7fNx+DJni8dgvuNt1hOEjMvHsRU1EH2JGy0VmXxzdYmtX59VkDkraYXZEBoxRckMBUEgywzwEhzNNnAWinDmzv5zBAS0ZiILdRni/h+7kgnn+qBVxxNrn+Slk65G3MZYR+ziC1KdlO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780390474; c=relaxed/simple;
	bh=LINJP04DIGxk0jZBqIwYBpvHo6pw7b/AqEs1EzykGYk=;
	h=To:Subject:From:Message-Id:Date; b=PXhWiZZm/8HArAHphUeKuAETKx7ANtCD2D+DH1tHgd3cSo46izLNFDrSt1qCCtrO/VhheT22FjJ9f1ahIsoHzPUT+jnkG2uBhaywOb8HmQZFZqOrtkvcXtzXhDG+rS4IQ95jfdJO9mfCJISBgucJ8yJkfRFL2S18fPFMJkhRRV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va2jK+mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va2jK+mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780390473;
	bh=LINJP04DIGxk0jZBqIwYBpvHo6pw7b/AqEs1EzykGYk=;
	h=To:Subject:From:Date:From;
	b=Va2jK+moqiR3nj5/iU5dn8YRGYLNgvvBPJStJsr4J/DGmaKQcGPoUeCu3nswwD30r
	 CUz+OCY6rY9/Acdc+hKJAmLd70kMgYVVWRbW6LSm/gxL0qZh05kOGQjw68J5dWTxjP
	 AX01zKR+c2e4aiAKnXGMovoXGCXmDQrrrkDboyJD8H0hQiZa1GLJnEeGKRGxINkBJA
	 pihCqQuXqo2rexzwyISvu4P41EnAgyfTexq3TquP50/6L8Z3oAIByQZVVqs1ON6+93
	 ZNmBcDV7lbEZC3KQLMuCiafyAiYbPpkEPaks80o9Kpho5ptA+s1IW3JU6TJ6V2CWCy
	 Tf8goSPxpmKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5BC5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039047369.1550.1415063232542401370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9349c8f4a0f7765ffe37915161ee763371a5536c41df0fb20ec6ba960cc859b0
Date: Tue, 02 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780390473
