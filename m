Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2734E23D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724463954; cv=none; b=dD86eFSKlRq9TKvcyjda5Bm3tdwvYa2Tb53c+Obov3+LYxHkwS/NSQ1Rc2s+0D5b2aLwA2zk6PO5+7asb/YGDbZj6BsTiBH3ha65ffb0B0JdnucTQKl8GCkZxKTPC6Ow+6P/tfJNizdt3atDLTBSjefw2erY2DRiklmRUBuyo9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724463954; c=relaxed/simple;
	bh=d1c6RQ5rdUtln0a2rkW8v6wh2B4OQ2X4Ym50qIz4JME=;
	h=To:Subject:From:Message-Id:Date; b=OnGBHmVO6pcOLkafaeG6bzqHjxFOo75UO/1TkqQ7q5xBP2hFryRIFIxBWiBSg7Luxy+yC8+l381ys1UmbvdZg4ZKAGwZ7qVWR7rYYGOZVxIKMHA33SmCOGsq9wWpqGR1JW1iLcKijjZ00OC44/QaPXJkjtt3ZUqGFFqNP59lavg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrnISjp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrnISjp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD03C32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724463953;
	bh=d1c6RQ5rdUtln0a2rkW8v6wh2B4OQ2X4Ym50qIz4JME=;
	h=To:Subject:From:Date:From;
	b=BrnISjp+tWUU4Hnf8nkwsDxJDQw1Ytf/yMRw4GCGX27Ax0CEbeC94FyotGc/A9xR5
	 2PFbiPufy4e5bd6EKLjyZzAvZfZ7+T/hErVNyXD9fWnsRfiGZIKGo5upKQyvT47YSc
	 LLQdr+Gw4iHQZBL4xAsmyDWef2Vmn21NdeQaGGz3ybGVStgm5dgmAkOrJ0GxC9zRIP
	 ztTQGJdHIxLhLMCZUHgn2lwm51yE5tImib6jVAQadljakfcC4N07cWI/g++ctepL9x
	 NF8qJwweHtrh0BOQ/LjDKxiOjdVWxscSi08Y3LNJRhbqh88wGtHifkDSuCW4Pa8WIW
	 KOV4chWpgpkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CB7C5321D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446395361.19783.4744223553433585211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb758053e02e6e218596679f6df12949158a27e4baba28508de658430c079b6
Date: Sat, 24 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724463953
