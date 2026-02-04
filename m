Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3B2566F7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770170034; cv=none; b=V3yexeanqk2WEbtSJzLSdSKZP6Qah+TeluEcCsIqpM9LAvx65f6eOsXci7PfAC8iWMbap69O9CWnEkv3rTza62/WjKUoX41NJeZPRplZR/aVSLH5M5WkQfWlXWqwubD3Du0wE1Vf5/spCQiRKLUER3CU+Fa0yE5/yQSyLMP+ycw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770170034; c=relaxed/simple;
	bh=WVt+XFuuCik7QbBvyTLcmMQYICht1zOjwJHCrGUtYJc=;
	h=To:Subject:From:Message-Id:Date; b=tjDmxEIFQSiZ5PPuUjYEbI11Cr0s/P10gPWrvrJ5qFGoZD/a6hB8mmvrH8QQ/gMdQDuPHe3rG9KDdw3NUXZrTgiPZjE3sjWT/b8rsPGN2kZ0owJmEI+d8oKR4UbS4ZBRECKBNxZhsVNvZGT/ntmvJq2GPWdM5DYSiWKXuIfqo80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ualNpNrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ualNpNrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA07AC19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770170033;
	bh=WVt+XFuuCik7QbBvyTLcmMQYICht1zOjwJHCrGUtYJc=;
	h=To:Subject:From:Date:From;
	b=ualNpNrgjgXEHpl8PSw8FnCYD1sBbA19IJDD58SUma6+aLyIH3m2AJVrvSZGXjGLK
	 X6MJWrc5IV3tSAb2WzFIQFgUKHDwQJ7RoRX1MjGtuOwL+qb1ndqU46oOv6e+ITElHW
	 tJjseCgA7U9z0AZmcQ3XdazitFz6fSb9lUm+oLV+nyaCUrZrWzMZghgxEEEYML0+8m
	 zwIXk4+8GBSr6ZxoU5Qaio5G9Ny83CTQUVWO3f11AU40a95VFROMZ2TGRmUkNs78JG
	 +wHniQswIzEq2qeRsb47q81cHEF8GM63h7qdp2ym/MeTV5C3/ToVwhWJRJ67Z/GFYl
	 WcWikIzXgh5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C30E8B383
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017003360.29339.16399131335399315973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8beeab43138d57faa4c5e93f3a520a1fdb15149ae2f0ed3bd7b38d748638962
Date: Wed, 04 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770170033
