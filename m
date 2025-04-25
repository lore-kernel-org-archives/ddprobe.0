Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BF62701AE
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745550594; cv=none; b=bVIJoqy6JJLR9F3A+DUKHxIzMlAzoXzVHE7MKECRy05qLOHliktrrmwxG23JXeZVGfd0ZMdhdKTiUOx1nt0iDHz1zZRL90PK7xXA8n0SIEX9mKNDlA1H9Skkuie3OLbyo7elfe9FyNGo7PrWXp0TQ7kQF0HHqN9JQfBkTVzHfxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745550594; c=relaxed/simple;
	bh=TVyEOYE/FZs2m5AUW4dyxkFiHebAA8zKt1WCX9z8CmY=;
	h=To:Subject:From:Message-Id:Date; b=MHpfpqhinF8hmZ+J35vuQ8tdACo8+ym03fgULLUC3hAkCp83reAhqP2VLD8DSao/eaUlTvep2j94OdIrQW0y/3uCKMgDPKtF8Q5I6Cq+itrxbE2FZ6GDDHPpKw9n9dca8y9Lc3DrCXcx1HYIbDEVj31EdGCqq2ihs/dqEhOdGg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+J5ldmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+J5ldmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7686C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745550593;
	bh=TVyEOYE/FZs2m5AUW4dyxkFiHebAA8zKt1WCX9z8CmY=;
	h=To:Subject:From:Date:From;
	b=W+J5ldmhJAgHbfgM414mw8qf/tilEYKi6JEoxknm2qar9CcNDGlVQpVKV6JhH9M9F
	 tW6ODNejgRXGE1GkWYGKu38k5DvYxTizEG1YyFQeU1bV5ryBBYsrxOa+9hkyMa0lGc
	 ffV2pdzg3e554R8ZsUr58tZwEDActMYbsnGrPvGNz5YXqJ75wjWB8NAmX1LMqhLxte
	 MvivWlohz5m5M10juKVWxaNREUSohrZ1h8pafBi5eArn6Cxhq1x1aMahuI9gQR+RVb
	 aKmrLmJJxb1Pv96opF6s0aEbZNy2Ekcfnx1KiLT3LYyj5qiL/5OdhSXRZS+EaXe1sn
	 21SF5hdLPAdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470BC369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555059357.16322.5660136076358807797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d6d94dfd7d8d0e6b30bef8c0800699979d7246c70bdab47ac8c13fec0e0dc5
Date: Fri, 25 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745550593
