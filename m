Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8917A2E6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750570194; cv=none; b=uHOu+rdMIm3nIJfd4T32CTwKF/lX6Ukm/ZzUYglAG2FrAfgE1OldLrPe8okX/Af2e/JgwXvDgt8BYjteUq3JdkzCxl8q1wLQqXHTkwSDS0D5TudP0ls/TIWjfb2luhica3D3Okc8febPNEhm0rSXFFZrUymabCIIZVyescIoaZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750570194; c=relaxed/simple;
	bh=wXSf+xPg3dIAvLc0u/68K/vi7ayHY9Sg1qlhEeqERfc=;
	h=To:Subject:From:Message-Id:Date; b=duHqbPB/F1lTqgA+6b3XBTY5fj86ISRaMxKijQxCDsAZJex2Ka5FYJ8d8RFfw7C03MGRYOCfwAYNylWa2k9TC3a7wcO5gV1Zw5sNkgYfShlpa+gz3Ma011pLvYrSRrCqCMn1StykrU9gGCYZDbX/VdPwGslqNWkzY6T8NYvDjWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDfqxHyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDfqxHyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750570193;
	bh=wXSf+xPg3dIAvLc0u/68K/vi7ayHY9Sg1qlhEeqERfc=;
	h=To:Subject:From:Date:From;
	b=NDfqxHyvuD3EwF74f3mNi5m+kAPIoTKyseoHGJC3HkASFbpKELvjIw44sQ/wnnTQM
	 YvkxzZ6zXZr5ACPZFeQWmfYyOjYB8NsRhMJW3NV/Vkl15In01UzUJikD/K2ckai/6q
	 eKZIqzGd89DhIBrbmGUTJJCtvYB4TQNV4OLO3zv4KGkw18jFXstXOLihJaBz7VXjIl
	 0JyrLdvct7vTCJzu6MJoW3g96p0eP6/SmBBmN4hFmRyfhW4iPkDP2B1t849sR2jYzd
	 tfbsG47US7gZ5QCNlr0t59X0kJLGkmT/nlIgLD55p/hfrI10wKeejGN3JYFH7OKO1a
	 bzS7HUjB8R4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C3C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057019358.13239.5567812191104805498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c18112fff0783dbce33c82733fe2aabd703380434ed5984d65437e31897981f
Date: Sun, 22 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750570193
