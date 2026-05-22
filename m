Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27343406267
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779466354; cv=none; b=lQvYr7tCRS99Y2kwc1p1ul/mxtsdGfgBjviCROYfrWRYUVitkFa1PrBxV69h+vKZTxiiFKYtQulbr3VZFkHYA/5IG96waO9v35UqrXSaocMh7eGW6R8nmXRLzLe2iHWbjSNCmpusss6SfTSlPrnkqOM1kCh4NwII6heSjwZgHmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779466354; c=relaxed/simple;
	bh=Mbr8i+toyizWr7iqawqF4790bm188wjepKzy3m+SJq4=;
	h=To:Subject:From:Message-Id:Date; b=Pc3IbAcwGU02/qOJxp+VICI57ZxMikjPuzfGP5KsZ1dOtidE3J/Sc035nQRCwHG1lxXTU3KD8rNyxTRU7bKAKdg+1SIYpZDA5C9zel0CyaewQ6w1c/+IwhK56d+y7BHRp25coisXoj9b3mLSBOIt6qQaTP7OjU1Xci9RSzxXWvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzyC0gSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzyC0gSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D8DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779466353;
	bh=Mbr8i+toyizWr7iqawqF4790bm188wjepKzy3m+SJq4=;
	h=To:Subject:From:Date:From;
	b=CzyC0gSmQHmwLrnG0gutlBu4LAphNIaMEafuXEEqU5e0qH1TwY9CTuzPMyDq4mFs1
	 HgrFAT28ikRwyRrjMCh756VjLkAnxCTIxLiaQ+7SrdyRsqUfVeLCwbw0bnFyJDU1zT
	 2DK4EuVssi+omxhBMC++P3tVlQzQOqqfroD4zlKIUBv6Kq0wW1szJtFXmIMLIBYILE
	 KrFXVq9hW5bF3lSqfc1dwQOWlEWCHTlfZfmtb9cwmQ+VN/UV23e4YLs7NQ+fh8CUq6
	 gn4X/qJzbiuDsyV+h28t14jzx2DYjbtTxILDrsNpMWPrpKB9NEWnrtV2WlVNwE6aaI
	 VI5yCzUv+PUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A978ACD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946635368.28277.1726664808742918268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85622f7e76fc56c7cc2cef4f94c59fd353e9804f18dd65f29828f0ace186f341
Date: Fri, 22 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779466353
