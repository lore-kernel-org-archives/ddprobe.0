Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA7DDD2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757763594; cv=none; b=GHONN/a+LMRgQ3AlRevqD34MdE+1kHeRcipwi2CO3HKZxXibUSYNxSAWzEeAOffa7z4gmPUIGSPYVWPhmmXH4dMXD62YR5TwCk9L6BmGBGoNy6g89zutEx9+3VMJSowvStGeoU15AyWafufmeYJd6PgToYaKVFJ8uZ9gxQ5rmWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757763594; c=relaxed/simple;
	bh=Ne1H0asE4J1pkTb2COqM286iwt2X+va4dU8pI0g12F4=;
	h=To:Subject:From:Message-Id:Date; b=PMZBCEV5HOVSQ6RJoBZ2xxvoh+clmaMYIMUS0ruZ51yBb8+p4+yo+98044I+ZuPoUyVQpAlf28p3c+KVqGUT3xQK7wgoO90EkZBtiWoHTM0zqk3BL7G5yfr3fM0Gw0UNwjCX5Me+T4geUc5A9t2TZFHD6eQdGl6nOxwNiCshvCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+iZagw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+iZagw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC594C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757763593;
	bh=Ne1H0asE4J1pkTb2COqM286iwt2X+va4dU8pI0g12F4=;
	h=To:Subject:From:Date:From;
	b=B+iZagw/lpQ+6qeEInn37S6YIxze1zDsVd0n9GZmb2nq+1UpNIji6pxyiq8NB9Fr0
	 8tX78w1GEN5I0geGycyZPZToSc4jatPykgfB8Rj3SXQP7Hn+P+iS6NpA36ol08ccHD
	 UNRXK7dLcKT32mbc1m+13ratWbG5/0LfYqFc5unn4cghcFkZZicw7OE4d0Jsj2hzQv
	 1pBxo54pGHF9DDDHB6NZi2oMBinTztkdmMIjFCdP67c1SOfgpnwFaI9hgybqsfvmTG
	 Ngsp0KCr+5CNbn9Lz70Jot4imS9a1BtACkDnB/JMeUn7qmx/2q5e/darli2Pfe8Am9
	 nB4+XXhUsaztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91667CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776359358.27218.18276233221002129004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bac83f962f2ae77ad973ad85f52c5f8a11603064791e791493aed78e3edf92a
Date: Sat, 13 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757763593
