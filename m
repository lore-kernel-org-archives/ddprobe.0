Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28F01514F7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756043393; cv=none; b=jqmUHGmClz7xP8OKx6HXiou9U3pR4yfiHmAh8It1SyMTUcCXcm73NU3VyHiYSOUPR4NLOCX1/kUKiAWrYnGx4hbYD7fj0TKqAPKlBvcMmBrTwFrz4cIXK/n+c9AFaOD4qKXQTFl/sICzsHQVjsT6NoKpRZ1Jz6qtEYkezBdEFJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756043393; c=relaxed/simple;
	bh=OaRI47JigBJZQf+ERVP65Y3UQ3f832KEya7HuGpj6HQ=;
	h=To:Subject:From:Message-Id:Date; b=sNKHhdxrTolBOshjChTjzwjP9KaO706yBT3s0RTU38ErcSwqwUQLWGVBFTJibL8R2fZQ/qBtTJ8bLXxt5W1s710LqjCxaqlJnUs8sioHLscUCssp9jfp8+pnIKlZw20GUuPSVikgrz5OJB5pZUgF/1KH48BPWixsl0d5jXYKG84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQGFb6ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQGFb6ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1574C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756043393;
	bh=OaRI47JigBJZQf+ERVP65Y3UQ3f832KEya7HuGpj6HQ=;
	h=To:Subject:From:Date:From;
	b=fQGFb6phPzNyLTxHKdAWKd2w6EUMRjqtQjWp472b8Irn39ZWtBizl/vElS6lriEpC
	 0fMro23edsBhVu8oxnr29EGwU6MB2pt1Jp8Di6Y1QN60zzjtirRn3KiL/bFbEgrxsS
	 fwzKGalvBRWh1cZUGMmfh/KVVYYwupSU4in6T3M3/SUyBjyVAuhbI0VMOxFVZzeI9u
	 vStX2p9EtNprKUaTkQpe/Gfkcj/IrDuvvbBIeeQUUpqKyTIhPd4LKYCAa1d9oD2Pv8
	 r2+kwS+ySFINgEEMNEcIj9Zo+Cuef6L7zgeN/pkVKpZ4tFwCwvg8696cmuJEIDk906
	 wbg7dJzoaACIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C5CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604339357.22651.11826706082151150696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87885ca9aeb09d2044126ad773d5279ba7059e7c60754d755cf59e04b88671f
Date: Sun, 24 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756043393
