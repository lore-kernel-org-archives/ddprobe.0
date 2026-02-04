Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E1C3816E9
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770187434; cv=none; b=Y2z/SFaGzv2HodoWon+O/5rB8wTYyoaDeVFNevjmKLgfKVnLJv7yjGVMTxLDKbGODRM3ccCqjzxE10znTeuFQdkDR/LFzfI5ell4GNmVj8fNm2DiKEcWPl0MGmLbSf0Pg1cmVNGeuCOqu+mTJcsZ8tg7Kxr/iZXN5sha3974adQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770187434; c=relaxed/simple;
	bh=r9RLlKtjUGeid4RbfJPXEFkku64hdGfB+sUHGXnG63g=;
	h=To:Subject:From:Message-Id:Date; b=ufEkMoh5jwLU+0JWW1NNT8GV6eZwy1/Mh7/vddLDPW6vBf3Sr4Vam5i0b8F5B7VxpnOjVn9mWjjr6OgLxLmFBBZja5XuaRbjUs1IRvqrPKk1l4Lz8dBX1uFyPI75HPyTY0R10/zY3FYMf0vlf9wkYAs+qlaILYCe9Qcu1M/+F7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCj5Mv/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCj5Mv/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6055C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770187433;
	bh=r9RLlKtjUGeid4RbfJPXEFkku64hdGfB+sUHGXnG63g=;
	h=To:Subject:From:Date:From;
	b=LCj5Mv/m+8DbSVDwIV4dhbsa6j2Tu8BtDG8HvUUeYSzBf72Bi4l8V7GEL87xmOZgQ
	 nX0/x2PMZgnkuQ/dg23e16sF6sewVG69xDj1F7IzP9KR2fJEbh3ONYHeT8qO7K4oYr
	 sXRAeLiTkm/d2dDadI7vTRT8lYqsQzPVKZlgIkzEZYPJcguJOdXP2F/9I1U9TTjczl
	 vwgtYdIpyCVOGh4ORLqOny79/cmDELNACOlef+yjWjO23lAxGQGuS1st3aMQVQuXcE
	 QQZUSgaMAi8ScqSfzS9eAxlz0snYQ0ZQFgNDDXW5fcltLARDRVGhn+ud95RImef3fM
	 WaqfkypuJY6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DBE83041
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018743358.15203.14078394919694770077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d0444698026228447b89ebf477d29ff64f050059b09face26921abd4012ab6
Date: Wed, 04 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770187433
