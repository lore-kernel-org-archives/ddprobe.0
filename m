Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BDB354AF6
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760862594; cv=none; b=pEOOHznDWIl/a+3sJgXXSjg6i76iImAx0RvbOw34ctEBABMR4XEytiDxiUNWFZmCs+J0eqpNVd93UlalevcXrStfUfJIk0f8IqdC5IBb8vRAUW8FhJbQK5atc1IiggkP4fcu/9qUJIJWYyxXfXmDDBPRkCzICCZkJo6uAW+nq1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760862594; c=relaxed/simple;
	bh=6PrELjIKV6e2DFmqUaL8Fd0zVCHL5YBs9p+oTgTKS1A=;
	h=To:Subject:From:Message-Id:Date; b=qPy7jrlHtQmYhT6dxBnffHf7emwKoCeeDyO+8g/wlfPMpUphxC7RoaVtyHajC6P+qqR7HeVSnw+WqCcwFRy6Hszuy5CreFVrv/2f5IbUn7iTVY0pK2e1tnsWDBIko8p03xR0RYmVijnIKu83MVEg8Cs+DbvjGYkRGu4gXH0jmtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNBPkrh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNBPkrh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFACC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760862593;
	bh=6PrELjIKV6e2DFmqUaL8Fd0zVCHL5YBs9p+oTgTKS1A=;
	h=To:Subject:From:Date:From;
	b=rNBPkrh4jzBkzSAlBFHJ0+MvHNgukTtQKiIuPJ1LWGu2/MMrPt1ks0WS/0jCMdvCK
	 5V8gFFjEV68O62HpQQcuDdswA35ek1TqIB7w91Cw/3x+yefOUsxSVnzrzqMEPoOyLN
	 OL2ZgSBNHS9MEYzV8KwYlshGebJS1ddOVvcgzFvA4mIXbzgxE3u/WBQCpmJ/llyW0M
	 k378mP4/kBO2n2lM134B5jV4ZDclh9k2i4bAhfeUALLjDIVZeyWdhvdXfYaGN8No2G
	 YHcYA0exxZXNvLPgFVQ+B3pigNVg/N+/Wgb4EAUXLO5je2Ud2BjVywDYawrBVeTWCd
	 UTSTRdOfz690g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B1BCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086259359.18743.1547683323168306870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14237b8912de86d1cf0fdd0dada5002bf464aa70dc9c34c96616ba88e7f6d4e
Date: Sun, 19 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760862593
