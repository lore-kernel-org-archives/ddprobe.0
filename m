Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1246C2AD2F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752042594; cv=none; b=NtBXm0j1wHb2uYxRVf5Plr/OqwTE0QQUrSrONVLTndp2M09Q/blVd56pbVWiohZivfhcfglp8LkZP/1pT4Yuc6SJgZg3XkTYUbIOMyBTB3SBWQHsMECLv3hsN4T3TXA2RZO40wF5+pePMfYgGJ4Jwv3OeOy6/ffET9r/0/GimnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752042594; c=relaxed/simple;
	bh=JgFM7J+f0nOaPS03OPkGYPs2zgyGh/qoJ9paHDuPZ70=;
	h=To:Subject:From:Message-Id:Date; b=W7UbUnlZ4+ENwwWJtqBhH84lGbABjb6hiY5cElQwX2W65MQ9QCjMQigcqcWtQNvgA5xB+XXtlVAsMffTiMVVr2hsqNe/54pe8DAapjgePnVWmZwA6Jc3R2KtUTg9dLYB8KCNKrXEv9CTwJkD5sgbEFNHHW6s1T23Iiph9Rnd/yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTsm9xh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTsm9xh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752042593;
	bh=JgFM7J+f0nOaPS03OPkGYPs2zgyGh/qoJ9paHDuPZ70=;
	h=To:Subject:From:Date:From;
	b=fTsm9xh5MK5moY7vEAYvcWLIHacZHHa66uHVXYgIJNORRoIR1BVP0fUq7iTuR9wmp
	 aCUz5kKn0ewp54FUvu38Tdc3PfoGKbWH1gzwQFa5Z4d+iC0f8Wk9ai+I+Irhj4RYKq
	 Ak0+7a8UCYgewboRztFymtd1bVjjshsFFTwpjMfMX9ijTrjCRA0WYQ78fN8S5NcLnf
	 svkSEqVWHGYZk6B9meOyLJwrE43A4TiuwGaZGamdJp3c1ma/y8+lnfKafE8VjfsEOv
	 j+DpNNCedzYhbVJbhC4/rXgCZ1vCYLlOuZMLIwoxy39HMfgWUP2T9O7Aa6RV35F5fS
	 RPSOId7BgIAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BDC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204259358.18084.14255242442041920748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a26be83495a26dfa06df2f520f452c8cbb24abf900e8696bc709bef3e3f7305
Date: Wed, 09 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752042593
