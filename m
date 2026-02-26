Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D66F305064
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111094; cv=none; b=GI6C8oBnpl1Gats609a2Q8XLy4q5/ayPwwXnAlWOUrN0a7N8IejLtVyD1xJfPLX8g21b6MHLvG6DCNqdKn7/u/WVZLe0ZDivkNKeiqlLi0+36WqtT4JeETTVkOgQPN6P0dyamJFG1YI00UvtP1IaXcqPbsxq0pQTf1haoTlMudI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111094; c=relaxed/simple;
	bh=sVD528SGGD6HKt5fBTVLeVFmU/pwdR4cM+osjlKDF9o=;
	h=To:Subject:From:Message-Id:Date; b=iVhAhAaK/gFNCgT9RHPUmQEG3oobIKNhO9NvftsBW9ZP/N81RLAyGBZO3mAEw/fdRS3p83F6EDcBC9VjnzfXX6LZzwml8NMMIWxDYdN0a8Aa34MNLAV3ahh7pnSxQiXmhhGGEguFOjYzPCe3u8wvqeyCZy9N8Z5BWUk10AUbBWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiwuA39f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiwuA39f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E55C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772111093;
	bh=sVD528SGGD6HKt5fBTVLeVFmU/pwdR4cM+osjlKDF9o=;
	h=To:Subject:From:Date:From;
	b=eiwuA39fjJ4pZUZgN+SeRyZhW+s6cysx6KihfLWK4ylkCgbM0aBul7VGNbbvYagv4
	 wLMiLYwmUR/H3rK4LeQi8IpGhSm8LAxHdjo7X2JR5W1+K/R4VUkMFLGeac3ilL9W7p
	 ehPwkY3miiBMutAqf+labtwIphbHMV4uL1e15sQ0xWRy6IsiRSpiOprA69vzKRCKC/
	 w6XsOpauwkt43Nns8GfH8mnB/pKECfB7cAV38hIGikWR6DquvJfSN6sE9OGf0EIvVU
	 Gd8xELhLaEKasq3vyl1Sy6TJ6004ZcyJm9DhHKqL1B7WA1Dk4ybZhb1Q/gP8vtaoI0
	 K2PfWyP7q1FKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5744FCE074
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211109365.406.16768398940325374845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0166ff3ef72153b753b7a10c3c0e849ee0cf8b5d5286eac10a8b6e65a3046e52
Date: Thu, 26 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772111093
