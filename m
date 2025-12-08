Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F37217F31
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765235574; cv=none; b=t3JLMaqZlO8FNo7WxcheTMl+KsYWn2Q9l7iyYbwCAVndWaP9AD8GHqzvz8EEmgR8h+p4N4I7XKdflkEOU37oSsZJtCYrYdTx//g3m002hfj5UQKrk/11FdkNzAEVHhMdVyUJC2ffTkm0OWiHqmEwjGYreZDWlZBxSOnrAwHkxsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765235574; c=relaxed/simple;
	bh=fiVKJW3xnYcGnQBcSHP8H664EZ02oEsf65+1yX7HpYA=;
	h=To:Subject:From:Message-Id:Date; b=ll0sBo4dZcJFgMMwb2pG/Qtb5W2dyCapNP44HQBSc7K5TxpvhOySv8nQga78r5f0PiplVvJbUnAPSssZrGYL4Y9C/6BN3bUwnbH5Mqwz4WeW3142DHSPT+CYv6M45Jnb0Ys/1ukNf71NtULrPxecaJcHeoEhTEzWHLe2e8rvV/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fxt6KNQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fxt6KNQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC48C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765235573;
	bh=fiVKJW3xnYcGnQBcSHP8H664EZ02oEsf65+1yX7HpYA=;
	h=To:Subject:From:Date:From;
	b=Fxt6KNQEQSNMzWOzs36/GP6af/j4d9KVu4FJ85aU0uW/jIz2G3ZMfUz6ho8x2ewpp
	 rV6msztP4g4qeFFbR4z7zjx17KKkaOxCsOCAaDUrxNJZnHOJXJz213A2WDtsozmZs3
	 +T2lTr7ez0lwHt1d1lrHSWwmS18j1+Lob6C/8rYsnO31apHZrU37tS+cfkF+9koGIu
	 iaspgmm9qmUxuVAhTaf2n3tazMiQhaaAc1CoPr2iZAmLamwexTJXhIbW/TbkhIyUyf
	 gZyYkibrlMhHmOuPgK+DS1n811tFWHiQPq+pjfd3xJAaJf25WXVqvpD3dr5fPLhUut
	 iC79cGFW9giTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D5AD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523557359.12102.7024692420919861468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b6b2c69935a155f1075dbba80c286b8e1bae381b42ad7089bc4b72937f9f39
Date: Mon, 08 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765235573
