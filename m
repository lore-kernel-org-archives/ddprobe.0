Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325502FD7C3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771053894; cv=none; b=nyQZj7jg1Z08ddPLazMj6YMlhtyNnC/yitZrPOHCd5qpSgnxTRE7tYRJ1T3drCLfjd/cG7yvh8r+CvRM5RUZ9NayPxyhO1Jylhbqs9Wus1nQiSU3nbUuFGpl9trJaPI7bHjYYBcAGJb70kWcvLM3saBtNhtqy7twXNQjv/IL7KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771053894; c=relaxed/simple;
	bh=oHCEtTX6sINeRZMg3RBC4dMV6hSZriCPF4dMWEY2x1s=;
	h=To:Subject:From:Message-Id:Date; b=OQojHDg318CExzGf1ryZ0j9O01Ki9g2CrH19n0QZhjWKPJaR+lIBvpCGJeDKcthBWGWoAvl+0HN1N6+qy9wIhUFiZL9fGgjGACF+lU0vPnrgYOn2UVb5u/IFo+jIbMF11aKSgJoEmz+XZekMnhGyVpeamBNu2em+m97EqApbmKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIJb/jXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIJb/jXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE00C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771053893;
	bh=oHCEtTX6sINeRZMg3RBC4dMV6hSZriCPF4dMWEY2x1s=;
	h=To:Subject:From:Date:From;
	b=MIJb/jXbvUEMGCT+Dntv9BCeeBfxBuxCgcOof3pSHyMBdFF+QRhrN2Zns/Ws4MV2S
	 mXDHiVzBqXHPLJIBc380Tcz8BEQeFYWY21yBSho9SOWU7CTzTkdEeKNZxQsuMAwsQy
	 Nr9CW0Gr5gG3INYF+V5uahyXCgGSYi7CofUM3d/d9PIwgT5yL1hVInMD6YisyE4g0b
	 gxzZ/cUOqbTQhV928gAtA+TTEpsVutSgGooB37tC4MLmxaVY0lQhUse/OGW0cZuLP9
	 crZmtpJh+kK7Gc9LXvKniRUA8c4xZk+pKOivRpjNpEtJqBq8aZfoCySNtKWslIVZ11
	 LNjvE1Ma0o2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ED0EF99EC
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105389360.13455.16930989692550727573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b921f9ef86b164b34625821a3e31489ce40e0cdb8d3f9b22ef938fb2b089e7
Date: Sat, 14 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771053893
