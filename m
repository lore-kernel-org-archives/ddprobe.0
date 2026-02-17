Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D7929B8D3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771359894; cv=none; b=hROwZAlESA+KloLZx3BXXcTbeUicpu8LmG0NN7RLZfB68RsTs9dY/DKkfjwYSq65TnTtS5458rGAD1M51dPTujFkvtTTXorOmmyB9kd02g7J1Qw9WLQWSH0nPU/d8Yyb8KXBqlObyVFs4MlCKJgj0EwAoOOfWdcgvDaU6ydUxhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771359894; c=relaxed/simple;
	bh=79B5db55bpKw79OE8arfhpDijwIvgnHkiP3CpLv7VpI=;
	h=To:Subject:From:Message-Id:Date; b=u8T3/zeHCKGHNuCxopcDs1m0qsAATcEosVobpcy18g6Wo3RPl++lrcgJSh/q0ohhOS/oM+Ugb5igv8kgnkXKovI1BNmvPQ9IcdRZkai2ZE4VQVmhqX8tWFEihWz656aTjsHpmQKhsrx4t2pE7VYHmILhuPfO+vTAmYKxxuxgYtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYACa7pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYACa7pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F47C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771359893;
	bh=79B5db55bpKw79OE8arfhpDijwIvgnHkiP3CpLv7VpI=;
	h=To:Subject:From:Date:From;
	b=rYACa7pk7xdDQVtAx10c+hWYVPfhXh6HK54WTyFMYCfTm/1WLKcwkZuMvPJo0TbfK
	 GrfNpBdY28viyBRc1j1m9l2RKoEoMDQbH70APXj6nUv5vDkuI5Mx4wWOluwoksavKP
	 0p4B78yf6RwLpw6ZWudi8mbxE4BFKVE6FaqdxY2XYAGAfC8mPHHpGBZKW8eEfUj3mb
	 AboMlB4QAeuCgu0q4lp9o6CrPfT0oup7+h3tb22+bAaPwSc+WsZjVA7nb9dVQ28otR
	 niMiqAlSrC9zyRu7Hk9TQu4Gi4EKKlKpMur+Gdck2YI5RMFHouApLgxKfGuLjq5tE7
	 dD4ytMk778ISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638BE9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135989358.28631.5632170032551293614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196c9a28dc4bdf63718f5f04ecc88d88717d6becb65261238721f0d72b7ba69b
Date: Tue, 17 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771359893
