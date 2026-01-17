Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE2F2F39B8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768632834; cv=none; b=qZ1rbXqJYkBtlaK9AMmhys7WfMLHLftYrroCHwKe1nuHCWJLJIkIoGacfhvFsTIQZF9P9LNBabx1gAbYyVauez/ZWyklY4Wa48v7rrZomqdN8DBLbJ28gq0d9zLE002lik+4YphPnHgfg2toMe+dh5riyezhGf0zHk76A7kSiFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768632834; c=relaxed/simple;
	bh=fCGStFWxVoWTVgtVZy7FTc7beOOFPaPmq+kAWKrIcr4=;
	h=To:Subject:From:Message-Id:Date; b=uZKNobqQdjndQZdBS1+j2BXgUs3+cRKuarlKvxrLkK8LhRhtlV4c9e4I8WDoUHGqSrRuFMlZNzYOgd93u0xBMNUTkqOx7z7IAwyCWPmI45jcB0v7Dl0ITPRduVUgdrbrAHVD//Slo+K2sTkaFLHpW8hDPgLKMMXW87/Ppg6rQIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWNKT00M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWNKT00M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768632833;
	bh=fCGStFWxVoWTVgtVZy7FTc7beOOFPaPmq+kAWKrIcr4=;
	h=To:Subject:From:Date:From;
	b=sWNKT00M+8tLf1KKUE9a2L92zf+w5M+/NaGxhOP6ler+h4KbtLKODDdDCC0xriJOG
	 uHiRCgN3hN5pbFpLCvv+L+y3Qn8H402I/Fji7bqEy+WX+ZMkbRN+6aYVqsxgSuvCS9
	 JW2X6FVtov4yv5MOwKS8gGSQVMcWFQmMSSJ6TBV9zBi8xTBKnxac4NnvvAlqbHGnra
	 JRCz6jR5oGrt48Wl1HkjdVWqyDUCEL/qMqzslVKLJ8+OOinGU4jYHXOkYKCZSSt7no
	 eWW3RP5EDRDdGhJiHXZY2WMBRT55nv1LJhD+Q32hFfQHj/kYX2zFuBOyiI+yIM2FkQ
	 2fx90ZH/Xr1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F5C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863283358.21215.10181287482666628244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4391cec9032078bb5585b7fda367b88813409d657b55fa64f60574f3a4b77770
Date: Sat, 17 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768632833
