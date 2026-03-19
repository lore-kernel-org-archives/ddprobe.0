Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A472D6E66
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773946493; cv=none; b=DSEuXj4fnLwlWSkeS5wPfftlgoA2L3Qwt/xkwd1JLZcFknY2ITksDWcdIbugJN/ACtSV4fKwOlkxDRF2pYLI/6bAqyMw2zL2rB8DYVhMq220Hn/fEOORsK1O8mtLgouse/djz8liP7+3goaM4wcz076p/7Tk9Dl/3qxdf3zYOrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773946493; c=relaxed/simple;
	bh=k+34cqg3ud29yqBt0jVyHhdW7NMlxdyfw2VRvR6BNnE=;
	h=To:Subject:From:Message-Id:Date; b=KndkjhkFtTVC4O4x+nUg72H2CjzpUnT97j1s0UhdXrsZ6BsRpz6t/DghsaEHerzL+Bdm2u8KqfKgynx2kXXKRZuchn+ge4jC65iZJvmzD2X6ZaRd65E3EUAE2MjwqvVYkYJevEZxgH0+V2mtVzCKV0SxLy2BFn/57cguGqZPnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGiMWXTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGiMWXTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD267C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773946493;
	bh=k+34cqg3ud29yqBt0jVyHhdW7NMlxdyfw2VRvR6BNnE=;
	h=To:Subject:From:Date:From;
	b=kGiMWXTeZdCypKZzePlHyPejAqOE+STjanfzhT3PoUWRqWVJj2P7rd+lkpglWTbKh
	 hqhm3pfGuFXcsrA5utxdhm4VE7KcjTyeTbrh5kjQN+Y7qjnWZYvmBlt2sZSZpfthaw
	 jCm7z/1YKnbJwBuLHaSmVy6GxXuaU6wFE+9Do3fe7g+JYTU07RgX/wr9lVoWMLLNxW
	 avCRCRSyqe0tr0rOTe+28iSFpfAIEDdaF/7W0y7QdDhNsk/kKwo66AzOuh5eWTT2+G
	 4m6pMqEaMSZLCTuASxJDbCv3sIE6VkeEg9VkjMVaPajmvP9XJpdRofkTUMXMVwV/ki
	 Z+H1cF0SdLF2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4E4109190B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394649363.7533.10840093565888210815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5da6d9bfa64e5ddafb97fe13d4786b10787b41943f0fcc351f1e48c920e361
Date: Thu, 19 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773946493
