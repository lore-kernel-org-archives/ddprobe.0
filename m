Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3559E28E8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732669554; cv=none; b=XX2eRTUIpcxgsMDPC+Qa57oiFYATBYmKZEDqJy9nfkX2UziaGwSolb/9JV57fMutXZDxhwl6LUoBzZwxi/9acQmtKA2+N+I2iSdGEfmoOAT1NEIM5qENhStJBPkdUG6s5B50bc6GAuDighIpYZc37MDvqyoBiAuglf3u8tO0TVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732669554; c=relaxed/simple;
	bh=TBtShBdAtHf6u/7YpSOvree9WbHC0tSJHPaSqxwOIz8=;
	h=To:Subject:From:Message-Id:Date; b=Xrevpi+0BIeKs0xnksN7H1YNIbQPXGZxcPiWs1n/mjZk+e6nsLwogT1elgMt6QFh7eyYtvUrLyGdx5DkW1EgxgnmF3unLk4qGYuF4Hm5Mr+R1KOXm8q4vMX/jOo/qwk9r0muVwr9fkDqZMinXsIIEKvcKdaKBQC8PHLL/UMMpJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RT5XuFnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RT5XuFnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF068C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732669553;
	bh=TBtShBdAtHf6u/7YpSOvree9WbHC0tSJHPaSqxwOIz8=;
	h=To:Subject:From:Date:From;
	b=RT5XuFnCO1wZvls8laLteMvSNSOjjFMT5W0HpJqYa4ic8ScqIheB3Nz3DjORR1k4p
	 K2VHsM7WCQvWrKvEtVM5GU8J5NxtOzU9VqJmvst1YdNaL3hUEoRXAbHkmzQXr/saa4
	 520vhOR2Smm9//5ZIMbf1L1oNazRnf6OiWXYEhfpYatNjoUD9Yt0ihVcwrYMtA8ahp
	 /tcpTAy/UaqNVfqe6+E1tA76cw2HbvSqlI5njXsDjqHE5CbWKUOMW/UM3O/Rc/Zgub
	 ZM1CGrZzbKIn6KCAGJy+LKoaok5nwZivKIpj3ynG+sRLtLJvXflKCpW8BIt3Dem4aL
	 1nhfu3pIqvFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB88D66BA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266955359.11451.10039940586883874188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004ef5aba061e6c41428137799b8e0ccd19610ef3e28f64e53ec4904fa501278
Date: Wed, 27 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732669553
