Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D4A7483
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749308994; cv=none; b=hDbsWR6Eatn/S5gyH1XxoFRNfF+wl1rx9Ke8o67vNFowXMTP4ONWwY75oFATJdjuH5uj5IyaV6pm9wOqmcgoaJvw+olqZ6xMvYzxIAiAAlQd4bnfwsKKVv5jYbauQyyR5W5wOW8TEJl3Ssqzp5ttNgZYuKOirzCCAuSltVruzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749308994; c=relaxed/simple;
	bh=kvjhEU0lfWfUfqepU+84/exONB4mHEu3m20NTEmJ4ss=;
	h=To:Subject:From:Message-Id:Date; b=EEiMHehS+evQovwkSNaQFekjc4RrTnz8NVPOOfcB1uammlcRc9nZmHns8/CidG0CPVoYXqeEz4DsUYl1Jieiyx3qlwLamzkA1gDiyzyAEZmcKln9IF0VQacKhNv3dV/R0Dv6XuUyjKUE57IZA8L4fwRa6z0TBUl3UrJ/+XMrR4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDwPCzQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDwPCzQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A916DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749308993;
	bh=kvjhEU0lfWfUfqepU+84/exONB4mHEu3m20NTEmJ4ss=;
	h=To:Subject:From:Date:From;
	b=RDwPCzQltElmw/lcAbX7iGVt/oQHjcLdTzmiUBgav+Od/iHaRRUHYDTdqAHKU0Mim
	 CWPX2Ti9Cqunuz7QLn/hL9dnvnKbSQaiMEzOVe7QY09g0Akd7EQQipTof/nMh08le+
	 RkTude9mLKf2K/cc5T5kTbJt+bT/t/9uVxDibt9s+jASTe51RG0fZfl6ZeT19yZW07
	 lsLrZHbQiFOW6hrO3hn3588B8pUqdSJVWMHnC9pbtNGQ0yqNSDc9rzmW2WjJqF47m3
	 vW/TOvUjBSuv6b47gYk5YmYzRwBGu1UOzjmlg7oi5muPCPNJiKckndbENbB8nixzx5
	 /IqNVJiGnk5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95688C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930899358.15768.6142144282216813313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0519a6558f6407e7a5fb42c38e358a4c3a22a179538cbd36ce19adfed77c9bcd
Date: Sat, 07 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749308993
