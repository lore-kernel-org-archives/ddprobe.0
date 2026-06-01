Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C1D36AB4D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780354474; cv=none; b=VF5DRvDrkdAV65VxyxR4nh8/VoWHZCsW2NDhaK/LaM1ICPxK1sF65ze1mIkWVhwtM6EroRLpl9rHdEq0Nxaw8xq/wKG8g+MyIii+j/TPkFN2k0RG/ekineylYqEj9s66rTTUV9r8D4nEtimJAwYs8X4BQaAmR5FE8iLiNvKclW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780354474; c=relaxed/simple;
	bh=0ihHPxW7nQqXEhN+4gXPLxNdW1pk3fdv3mATDyO7k6Y=;
	h=To:Subject:From:Message-Id:Date; b=mmi4i2rhXLAZ+Ve4we/SMXGaDj+wXlXHxwRM2Ahc64S4cUTumxcmJno4bkFhSbU35d7hbR62R1Qx52ce040Q2G7Vw+Sqr+Dc0A7suvqIUpZDNVJeVMrDRknBP6SL/pe0VzXuG/4jUWcSC5Kn8fLGjl9ZYuAft/9slfiZt8pq00w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud9jjEtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud9jjEtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1A3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780354473;
	bh=0ihHPxW7nQqXEhN+4gXPLxNdW1pk3fdv3mATDyO7k6Y=;
	h=To:Subject:From:Date:From;
	b=Ud9jjEtDnEey3aSgnL4tZMoojQOW6DxBtC55dLuJLoTwUn0uHLbEqEK8QSdGfdlPJ
	 34YJXzobE1z0263D8o5ecBdtzYjhQLvpK48dLnga3ClzICjqv524722pF7fmyCWw+d
	 lk9wZtHkqs7zhzGulxMEQfvGmJrzW8f9z9ETxoUxQNST0cjcRTKlCLs/qp43+tG+ta
	 Os1IOR+UkQ+9bn/6Uwqy7FrpPzX1WUCRA7h6+YDmZLkuHFMjfjY7ZlOXMIERoZZMx1
	 m4OqGSSjltE9QbsU/+Ifqo+EcaYy19zYeuq/D+/bq5MMnVZm3Rp2TAzJvKKQGiN9ng
	 kzc0JeFfePWaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1702CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035447369.24736.14238436211653817031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a123433e2368bff7fb9f27a0ffedf2c15921e1b01744d09b82de096b7572b87c
Date: Mon, 01 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780354473
