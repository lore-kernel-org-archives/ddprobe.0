Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F598611E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743760194; cv=none; b=MkqjlUMVn8V9OG5VyyeQItPSR0rh0HXfP7y6sZ+HCo9ksGGPRwQwikrBZNAaK1cgpZSFrV+4AJm/snBpAcUOuailn6Dc+aeTF9nAyoQWoeZts4fKGti1wUYBQW1jpU3gLYpF2PRD2YnLE8ji5FFuqeAiYM4f/cVnp6iCS2sgQoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743760194; c=relaxed/simple;
	bh=Xn6wdet3Tl75tAgDxkbr9j65b69Sjvx6Gx7oCDO6xws=;
	h=To:Subject:From:Message-Id:Date; b=XWWfyWCHtbyRE1awuSJc7T6hNqIZFxzBUMBeOuT2u246TOYGgATr5mnx0VeqaeaSnij9wEQu4EPxV64r+y0k4jWT4lXMoBY1Yxb7c8jSdNyXpULSC0MTxxxPNdnd5vGKKCUeKiC3rZReE7AsG/ABzedXx8Cc73Nq7uKXH3i1xKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXsLCaO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXsLCaO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89F7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743760193;
	bh=Xn6wdet3Tl75tAgDxkbr9j65b69Sjvx6Gx7oCDO6xws=;
	h=To:Subject:From:Date:From;
	b=oXsLCaO2qwI6ZlaXVG4pyJXo69gno81DUNktKZ9IYyoaynoE4uZk+KwzBWWwTWcp1
	 /3lnYAEvwhM1SHPRWQ+P7JoUkE3byN2nfqWDvM0UX5OV+vRAdoaT0H8kxs9KRkc7Lo
	 xMDq7eRwysgsuZqlb76rO0R2+v5AFeYIHXJe4oVOEqLRGH+dghjmbqvoghyYBFcizG
	 ercQiZg2sW+ovgnWABK5IvzWsOY6grPIbmhrv1xrLvHtIq2dbwkA178DHolYgGeOsb
	 uywXbbM3Q17a1sNoGce0MfGJfeaHivDUzsRi0rADjzDG7mWMOi11U1EnH5+sEIwDzH
	 W+8hT5lZOeFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61DC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376019370.12135.18179190949556389874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053998800b3425deecddff4d5c4011b9a2750b4655246ec93b59ede8b8656d5d
Date: Fri, 04 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743760193
