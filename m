Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F12366
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760876394; cv=none; b=ICfhKVDrzwkZ2+tI93Wu4c2C6v1E8CO0tRc0CEG2hvIKIQTALuv1RUUjzUFHla6jORmKvnN5TdBr+1wI1QpYr2BpfMP2CNhU9t/N79ZiFzO5cFqNcpCW48i/ooD456LuS3BQnQ7KxAbXJP1SnbWUCdmlz6eCTFWoMzUmYn+DvQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760876394; c=relaxed/simple;
	bh=mttCiwT1villoXBqFqlW3YmWUlw9G7kopFGRq+Ks0xc=;
	h=To:Subject:From:Message-Id:Date; b=tpGeyzr7u9A4NLTCzck5b99ZahRdk+8HYhBgYeIm5Z1M4JXFJM+PRYSIORdz9eqPjXCh3WafXJKKyR80em/zKkHJgrcyTDfzvZWMu5ewtOO81HT/ud9rsiv0fkriZEa2hQFxboiqh71oQqadxiBCJsx9iwjDS2CpLA3jTCfNMrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWXjIt63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWXjIt63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760876393;
	bh=mttCiwT1villoXBqFqlW3YmWUlw9G7kopFGRq+Ks0xc=;
	h=To:Subject:From:Date:From;
	b=LWXjIt631u5tFnT7jWmiKQqaKXSvR/v8cdKX4bkSIYYFwCrW/5Wyrssa3sCzQvkYH
	 mAdxxkDNIZ6TClGM7ASz8OUeCOzLlJqvS/0KbJ51KpeHYK843yVCNNi/i8/RbRqrlu
	 +wk0ooRK2FUDr88kZ5FPsq9Yt/6Gub2srlVpx1Ou1NnbaPlZ8HZ6JyLsOOJwNwLMLG
	 HRvaRGNVast4JVr9MxPdaoM9jOyOSkzgBIzexQxhqWETpJThIt8Olj9rRzZ+yTC3ZW
	 tErir+x6kIDWdJFPNmM4uxGY+4W5lffiJcl/tzKNwqE1k+UEibU9uDHfzmsH3JTQYM
	 jLm7PnwiXNTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93711CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087639358.22351.233760047521766915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf8668746792b434971d822d59fad91255713b80d507eb736b79b45690be168
Date: Sun, 19 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760876393
