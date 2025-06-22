Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDDA1DED7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594794; cv=none; b=AfvgsyBZvvJHwbonSrBuGLbKtk/qOhnSmPJl1We8n9K0YyQK9y6BhGpTEUDAt8W5bOFFUFrv54mgXEYHzaCy3vBjz9GwRAtrxdM8faHzyDaH3zunYzKuAyGqWsW6N/LbeNXbnXHitEHKtlzFbPpUvwlP56cqS2q7uAr90TrEblk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594794; c=relaxed/simple;
	bh=A/wIqdnnwr0c2tZqxle2UlcSLL/oaeDPdHpdSTzw0JU=;
	h=To:Subject:From:Message-Id:Date; b=uGcBnsLH2qHlFvmZURSvLmfoo7DPSyZ//s701eb/ZcsvJhyBmU4YR+MqT3nmgkS9RuJerNhngZzkDGqAGI4BlTn+Bkeub98NxiwkLxqLXoeCXdsP72x9/1/7/y9JyxRCONhx+mwErCbqOjIfy+kBeBwfktZuFtJUEmn61UEFKHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye4sDnq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye4sDnq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5897C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594793;
	bh=A/wIqdnnwr0c2tZqxle2UlcSLL/oaeDPdHpdSTzw0JU=;
	h=To:Subject:From:Date:From;
	b=Ye4sDnq/w4tdy7yq9eyZjj9cHr8tXQeSPMwKhG4AFxD67z7UsJeUkrcglYZhbF5Cw
	 d6AaXpn2OocOuXEy6a2OKGrmDTGbtNaUsdyhUHl0faoEgex9JluKfB1POSRZtZJya0
	 ZsV9ryD1VUZ/0bcQ20mbACvx+7nMddK5KCUk33H9OXT9LWcyz8U8QoZxJp7Ymvhsa7
	 ApOUgxguTqgCt7g4VHAzvNIGIWUe3n9Gof86i2Frdhhe4JgWPtUZlSof9YtIVZA5O/
	 k5nfawvyxLWP9jI4P4sak7reYr0QB2Pgfbc2J2HeTXObs1Ae6AyzoxLKpfmLB8u2ET
	 pJoYDXhX3L6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930EDC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059479358.27109.18099640546940247682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4255e5f9181ec7142d932db4895713cb977af9224955a7294c81a69edf176987
Date: Sun, 22 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750594793
