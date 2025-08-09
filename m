Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4F1213E85
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754753394; cv=none; b=AlNTJ39HA9bz2eO8dC8GF+wP79oIwk7migJGi1gsZ5VqOrK5FwLg2rpPwzVFPj4HRhr9dTNRzyrUGZHcg0cOMv+dxd549Wh+GSUwOKYOnLfv9GsGAQpWb9BCc1Y4r8WZRhkRb8ZwutVBGoNVrIlkFIfnu1F9tlLnO94Zh/ZUipQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754753394; c=relaxed/simple;
	bh=F6PADNaU+Xf5RwxkRS/YIOp+MvLMpNp6xMKoVxXjXkA=;
	h=To:Subject:From:Message-Id:Date; b=bKcGKUy3Nug6sO6qqKEN0ff+EuWQDC2Kpl5DigheqslBAxxkcWrh7wuR9fL4jpRycGlY5DjEWPKtq1vTlhCU0EumPXOfi9jRvbaILeb2n5Ksm84UoaADIJl6yY9rYtxXHdYS4jRmLK9LcrjbV/3TmmniI4NAg3c4k9/A/F7URvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYztadfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYztadfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7211C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754753393;
	bh=F6PADNaU+Xf5RwxkRS/YIOp+MvLMpNp6xMKoVxXjXkA=;
	h=To:Subject:From:Date:From;
	b=KYztadfdZy9o+mQTi8UQjoDT9iDHuR00P7/UaIrsrxV+MhL2pALQciBJau0ar522f
	 dM57c13Z6ZoCJaYg4TfYLEFPKu8EvKVRs9gnym5CM0N6R0WNdlVk/9yeG+TPyKvu6Q
	 McD21CfnDgEt7aPvAIZELpD9p0LNVr1PO5+32P3nUT1yX+eK5603YTVaBeDV3x9pHw
	 +Xbm0okb2fKS2WpBDccuRtDm+a/YNP7pRGTk/GHPrTR7NJ6sUKneuv6byDc8Pu8I6p
	 iWkjnz7UquxS1il/jlv35f7n2Jn+PPoY2/r6zrWEpnfBrvCrnX1uHuqAFrGHbUnGvy
	 rBPjZw4sSc4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97375C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475339358.9210.3698082999933862040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31b34af57b62f3c786f6baef24a62355e4684ebbf2efc2f32240bdebda36572
Date: Sat, 09 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754753393
