Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853DB3FBB6D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784017116; cv=none; b=s8JK2M4jR3nEkC6iVjfheTxQQTy23QWuLlf+kfnlAJxYukI1VpZh18GPcx2b5FJ1qmdXsYagN/rpcPuujsUEDmQqlOigZLpoqkSqoH0EbM51v+I6qTlizFdOT1L8fsVF8BVCOkN0LLZP+2ERLiv/rwmyzFvAXznLzF4rjU2cbQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784017116; c=relaxed/simple;
	bh=bnyGf0P8wE7oOb9YBijg9za795oG/46c4PTTOPDXosE=;
	h=To:Subject:From:Message-Id:Date; b=Fx5to/YhHCN/dqcQYrcldfMxjE9xCUPVssWQfDFIKkWwTUUV0jrEiE79jLZX/F4MHKo0Ok2pgqLuewFZKSoOfj1OUiq0crNMUM9mABKBVbcx27DzP2v9uYzYHHS6NIEqxo488mSHBAKcxHgDhn/sOa9A4mijreLHqV0HSqkbfvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShY+RMBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShY+RMBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1186C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784017113;
	bh=bnyGf0P8wE7oOb9YBijg9za795oG/46c4PTTOPDXosE=;
	h=To:Subject:From:Date:From;
	b=ShY+RMBb4kF/E3JASFBIHm3L2RwkKKwdybbCkv7WLeYKS7VDB13+I3xsikwGtuy3U
	 bA5ZR64Pjtk1RYKxC+Fha/7sf1OIet0KgDuTwsfmDZj3fGsmKVWsNZoICGxBg8JyzM
	 Ki8Q7JL+mf5536ueHGBiJ8vtQxLxIbpWtK2pK5TDQrvvX/EsyWLRxenTWqhrQ68Uen
	 U9lQnNeKL8RdKErH6RY9W1l9zazoSzIX+Vx1heHdVb8+5A6jM4XyhJPiL1t+LLKaOl
	 6+KSwzCl57C/x6rcKAjBifgGt1SJTGJRuYjl4fWVlAosDAajKUQS9jSwWktBUo1NjP
	 tEcxXSaeeUmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B54C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401711368.13112.758922600861802503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6828994cc7effca01ac8a968416b53b0dc983e1a037f599615ed7ca3053305fe
Date: Tue, 14 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784017113
