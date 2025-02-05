Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B888634A
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738773354; cv=none; b=uU7+MvwDhGMgFvXeMzauUCFL8qa6XTGZ/7A57A7nYwRT/batO6CiTDlU2lm47ZSVqnu2vX5mQ4rdIei4lxYi3KVbJWNh84Br6tLaDJRXX8SG2yvZXdwJqzLp5JQWKRHPZQdGv/i2wyGfDNeBxivg9V88n3nyMQfFKveaAlXPX1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738773354; c=relaxed/simple;
	bh=1TWHfMRVkKDY+5niXZlWVbTI7DH1FdruLtnaTlUG+U8=;
	h=To:Subject:From:Message-Id:Date; b=nmUPkvVHLit1la0Rn+XXAhHN0iV2Ltmfcei+fvRQC1OgM+tyiiUegyAm7ixs5uo34Yvpd62D5GteRdXyjaebqlRasjcGdwBh76FxaMmX3KcIPQN7VamSg9kQoKoxoKk/eSQVcavX+IN1m/Jn1f5565yO7X4Dt3yMOxA0/bE9CRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL7IN4Mk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL7IN4Mk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E97C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738773353;
	bh=1TWHfMRVkKDY+5niXZlWVbTI7DH1FdruLtnaTlUG+U8=;
	h=To:Subject:From:Date:From;
	b=DL7IN4MkgqU9SoX2gHhwvn/n989brn+a8pOZtenLqwgy9s4YEE6C/hkwaT73UVSPa
	 gVrFqF8Mfs1PX0ccNtdhBz+CG0GTNEvDMJmpngVj7MAKx/hsoJlEYqdsA/5zbD2sYt
	 jDz3JQ36S1USvDTQkuR4lFGXVASlK/Hesniu3MjJfYTI9ImropfKnQSOva2Kz1Jfq1
	 XXolxRQgwYkKUh+HLQCF39hZzKVLX9g8HVCDP+8x93XwRksuzEQ5u3ufvco9s3YW8B
	 qBV7/khd8kjbecHrc4UzJrQdp4Hs4YMdemFE2BR/Z5VVpkimooR6HgSgMU4R57bHmb
	 0i8TAvHpWk/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ECFC02198
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877335360.32000.1101311399610763265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f668c2df85aa91ba2167b19d9bac892249acbb6e69c45404a97bcdf9f16c618
Date: Wed, 05 Feb 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738773353
