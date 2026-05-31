Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B40233722
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780248274; cv=none; b=KG2SZKFyJcH6nDfAfDQKu7FOQHNSqRFX3Rl6mO/i2pGYpUKHV4xkWojCfBn28yDK2v0baCUf8PPY9vzgQD3mx4b63svBanmKm5Dqm3v9dclHGzIUr5ppzG2flFWMJkyMD3sfK1YE5DBJNEw80lwJvmVb9J4jkoGXikQNtp8izAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780248274; c=relaxed/simple;
	bh=XAP7bV7maqGbTv80TnAgR1ChKyGsOh+D4Sa5fUsZljU=;
	h=To:Subject:From:Message-Id:Date; b=oZ2FuIXamztky5wKI9aUMF4WilJVinJl0hk4FVYdOR6XS5pKa8sD7Xkwco5tFboUP6QuELW2JtZ6UHMMjl8TVqLvobAzl0eI3l3Z6gBT5jnRTkmTyTa2SGSxsTaVvTcVEEtZEUU5WLJ0fpGQVWMJjRZVUM/Q/AGgUn6FdeMMb1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOChqjgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOChqjgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE84EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780248273;
	bh=XAP7bV7maqGbTv80TnAgR1ChKyGsOh+D4Sa5fUsZljU=;
	h=To:Subject:From:Date:From;
	b=XOChqjgScOHSCWMyn9rfx6QF2ZREjRp1UfBQAjuI487XrxonDXPSkmgASqzs6UHDE
	 w4UDnZ6xYZqQTrc4ttEJIvwCGrlnYXIwSGUSWhtEAW+/dvi7Kasf/TXuLGDLV7ZWNY
	 bG1RAnUsEtLyy0MdFokjJWstl7DI8W9U7ycIuV09OswBLtGWFlSh2e6ViwActdYuPa
	 VCMI3NRXiQkzuWccZCg8yDvjy9ZC9GWori1byUAxTS10rY+Hmox9/0HhVH8BNkbO0O
	 GNO87qnJJellrscdZB/b4QMarQKmjuNlA9ikvwXFqfpmP4IevUdiZi0MT+8zHaDyL2
	 tUvMuZO9EtPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B37CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024827368.19081.15691617377263467381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a778f36c4d7257c2407918ce516843017bed00ae7d9faccbef9566fda8da2d1
Date: Sun, 31 May 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780248273
