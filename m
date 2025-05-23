Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B20A4120B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748018394; cv=none; b=DQHNt9ihE0ylssEguO1g0xmufqSB4hXhgRdTPdvEz0tYKpCyqlkp8+EinOQNktdSgPWdZuN42VnJGu6wiMkB3bau45L4FhvscnOaYG3JZe1JGdjSsaE5xlsr16y8CqcSabvFlaQZqQH5d6EVj/ngySsS6JcjqsWxWxCi+I1ZwWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748018394; c=relaxed/simple;
	bh=jH24Rytluay7x7OnhJHsj84x5RXHmyyKK3ke9DBkQaE=;
	h=To:Subject:From:Message-Id:Date; b=fadTAI5I0Iksub77xXvzGQERs8sgAdV1fJfgoiVP7cH6/kc1mQeWJ+LT5+zt8CI2Ob+hRfXSqCdQYBD2PyCP972a69emXRZ4MYriRhUbkO94u8B0vJNIr8MWtVUFIZzraTkn61STFOd0Mzk2dQDguIPVhzZNRk6GO8YpIClXjeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR6foEWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR6foEWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E386C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748018393;
	bh=jH24Rytluay7x7OnhJHsj84x5RXHmyyKK3ke9DBkQaE=;
	h=To:Subject:From:Date:From;
	b=hR6foEWYGxbiaY8nh6X9w2XYwk6Df/K/LimmlHHxUQU3A940RutX2G8JFw8g1L9D5
	 GtPPMycHps9mSPtLoyIpirWdePwhfgYXWjCcy1GTURy6biQgIFC7Mq+vraFiKdY9yC
	 PDkenYqSP/cs6bVUhwzVjcqZiC+ch4IBZbT6HarpbaEwWiX+ElLzSE7VGjY6ucmUCH
	 bcSen/tIVq/hssgorR62npmDRJAen6v9pORGc3Oi3RTFv5xT9D16jo3ZLGa3juu9DP
	 XxYVUu9FqCrssK7cUuevBoMhlIa960KlH9sGMUB8/kbctetMylvDVzOaBjJil81P8O
	 avTxmUD8MovVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BAC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801839357.18277.15289752086543387370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4ff446ff4990795bd66d8fdb73a60ad81fec9dcd3ce1ffd9a481d90067fd33
Date: Fri, 23 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748018393
