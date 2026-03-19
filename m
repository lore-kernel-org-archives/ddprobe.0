Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC58B3B893A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773914693; cv=none; b=cDOY2i8n4WWIe/WXpG2p8zyOFNB4qHncqXkTpBAIY1Zx3RlUGX/PGkmlkubAaa0YIcC00hirlZ1yz2Z53dZTPlj1zGYX+baqYoSXy3IWdD67507Dx2itsikYc/fvlXDzHOPRHpg1MZr/XfnXAvonKZIXXRlJ1Yxt1OfOj5SnX58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773914693; c=relaxed/simple;
	bh=PAkyosIJ39MXBMYib6B6GaAtvLralFkflRFuXhPkTsE=;
	h=To:Subject:From:Message-Id:Date; b=KLDQU5xMsZlC3auCs5zo07xRlP88/Z5iOG8zRAZjICe3lMg7M3G78Op1oNifbeNqq0o7pqj6otNT5GAZkg9SqHj1ypyrAi2vaNBQoz4PsUzQAO9EuR0NQHep1ilqDmDc9nVcxhk6m/tJDV0e+mOC7loLXuqrzPScJy2JrZWEfzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acYbLSWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acYbLSWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D26CC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773914693;
	bh=PAkyosIJ39MXBMYib6B6GaAtvLralFkflRFuXhPkTsE=;
	h=To:Subject:From:Date:From;
	b=acYbLSWsuDfkPJE3d/U9tyeEecvYEruJTzBC+xpiABMFgwXVqrKmbohw26V3VmbvM
	 /OBz/NxFdYLOc2I/7nqsQHbZJjcS+jgREgeGYJ8Wv/le7gTWyvIbsQ6vp75GHZWKz9
	 cQG934LfehdQvWjCXtwXyuj0WgRnbf8FlG7D3ZmeGlX/e2QNe2xfBsAJkRbn7Ytkz/
	 v0w8w9LLh5MTu8J/nbz2YHfTkBgvrgB9rvv1MJ8BeT4ghheGXGgvkkgMOCs6KQ2dXg
	 1HSWJV1+rtDOFS516fpFlcNhkzkeJSlBKyzn7S7A57/LskS4HtjRddDSnAdlkMhTpW
	 fLRihHf4qFWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909691075289
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391469358.2535.1721981949023616947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea43bcd2ed8cadc866ffdf983d396a854c402de194058ae42b562222af3301e
Date: Thu, 19 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773914693
