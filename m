Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9F2E975E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781665594; cv=none; b=Bc5Y3Q+/bUb4FwT4hGQCwcsBA1psQ7zcsMjHVbxRI2cPi6RAaia6UJSFfVLZJY4GQCwDJk+JSoEF8LSBf1ArmaKNT6nspf5xuQxE8h0xQHs49pWTO79Ka7W0CncmIjwv7lXrz9ZINyl7rARJ/nWEsyFtkxVzD+9ohQLKqEsMlKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781665594; c=relaxed/simple;
	bh=pa+fzH61Yvt4EwspxZ+pLHN7rw5xU+c/6Kke8dL5zDI=;
	h=To:Subject:From:Message-Id:Date; b=P4SbX49aX2heh+B6qWhrt7Ek1/ZlExcv1Z54awJBwtlXYeCkk+TosxnvleP8TWRyl7pTSPnt1U56u89saykg4322xxVxLbHzo1RKaZVVfgWdhM7f7+dC/fWxGiffSy/Z+bBOwEwv47NDtl4M2WB1B1gMyGrTXZxmD91x/U4JShs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvuR/Wst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvuR/Wst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9516C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781665593;
	bh=pa+fzH61Yvt4EwspxZ+pLHN7rw5xU+c/6Kke8dL5zDI=;
	h=To:Subject:From:Date:From;
	b=bvuR/Wstbn5ROypNX7cPbCl6jq7a8OLl1l5zlsxjsHNljuIvsQAEzCjM1i0aYMCDJ
	 YWaGO8L4fFQAAn4+P193I6jyYU6s5pIjoCipA7qIox04KtcE9R+sTjOWRLqh3LycNg
	 p3q+fH3XkoIichGPFhAsRSYC+cBygnw5t0vVZbmy9vcO8XHT6HpJpwbLBkGp04xEJx
	 rR67eJnba8Q+7r4eUrtOsX5oUTrvZQBKkQ4oTXS8Uw464/90GdsqCJlVB874/vjyrg
	 IJ2CYlywA3Wuv7kY7qF+ddT8hmk7wZZ2bWhDNtBnumGjKLZjekXqwIsxfdnmIybBD7
	 OLCSzidfpqGFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD900CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166559370.20588.17225384410654139732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb75ba7328d8a24034def8723a93e0a1bff59fdfe2245c60fa5000a0a334df7
Date: Wed, 17 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781665593
