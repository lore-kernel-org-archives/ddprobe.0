Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502E21507C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749005994; cv=none; b=lH3RXgLZJIz6PgOiCgCY6WVq/i03jHGib5Q6vEQE5tkgYQaa1mWXWUP7fMytAEbTtjNtk6LxO/2ZhcRrPGbdTB00DifAOUhTu+CIaP6uZQcqTh0EBGalYIgLAaM0lQJEAOXzY5iZsw44nLFnHe/GuJYfbqcB+w4ioKB525o31ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749005994; c=relaxed/simple;
	bh=rA8M2GzFnzourHUbVjzx3FSsFkGWDT+C4FaXFiDYXeA=;
	h=To:Subject:From:Message-Id:Date; b=op9SUkmXY2jZTZ//udhxTRmkfA8iz5nJjwwJ5un0LhFEKLuawOwmB+4tfijxVrz4zM5avWfkayxxS2y9k5SC3NXBUh1w6uwdMeQHE/LpxOuT792NeInz+sTbPGOOIWJlWjmxcW8RZejhtHp0wIR7Z750QZPAE/wXiOsGmg+9rhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnbYbwdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnbYbwdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EABBC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749005993;
	bh=rA8M2GzFnzourHUbVjzx3FSsFkGWDT+C4FaXFiDYXeA=;
	h=To:Subject:From:Date:From;
	b=ZnbYbwdqs+NxVB6rKv1f18ixuj/t0hmQnegcKg98aDXXghpgoVYuHn1JybpzrEJLR
	 fmcs0AEtOLjDKPMUQkr+9vNN6go+FnTg7cZ87GPxlbLLV6f7mOtgpXDPlR45wsU5bh
	 pBkXZG1KBYCiZSNGs0q/01yBNcYyr2pFB7pXiT6UjN0dVH4yIgNkvI9rhsPijPVnM0
	 ql4R8nQxIDo/IANQ9Fa03gLdqJ5IsXd7OH3e128gslGLhMsYQBFndORoW3Tv6QnJC8
	 IkWJgkXjdVPgmChhuT+PD7pZIGUcqUcyAp/yoVwXqgN02eQu6CutU6+Wb7TIlC9NF3
	 ivqjk3XDlAvpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035DC5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900599358.21303.12037261669362449695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fa61977988dc006432f81a5533a49a02835da52765917cbdab8f05e93c6adc
Date: Wed, 04 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749005993
