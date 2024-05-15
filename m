Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8F757CA1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715784743; cv=none; b=qzbzm5ENE6XKMf+kl8sdbTmC7R2H8hpe9ypoVStoaORGf/wjY9BEQzSxLPp/ADKfdHVntEkj1ygx7HjlNsD+u38igdyrYp+3WEux1jEkabHZL0/T+tpTh4inSg+TWHxt0st/Muq738ahOWVhYxdiN7+u9IMFmU53C0xdBqgJ2BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715784743; c=relaxed/simple;
	bh=NmE76TyhW455y23BNaEyx1YpigD7NW6c3EBq8yV6qHw=;
	h=To:Subject:From:Message-Id:Date; b=Te5KYFF68O/X5+cKkvXdQaqwl3oLWf5aGILz/Ydo6Tz3eqPQn2/skGFnoRBoMvKFRLnX8VrR8/iOHsgyKWcSiJgToiko8HGEMTM4rPPnbtpgDn3ZpXA13Q+SycUbx2aCRZe/GZPxXYkRhe27aiUV0F6LDz6sE2On7pCuPTYkvoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgsJCyzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgsJCyzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06D4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715784743;
	bh=NmE76TyhW455y23BNaEyx1YpigD7NW6c3EBq8yV6qHw=;
	h=To:Subject:From:Date:From;
	b=lgsJCyzdE1z2YA8dsV9/2PGp80NLe4lMoM3MhAkfBbcrT1Ruok1tykYMsZd3JIGKm
	 UEhZ7Xrldmn7YKdVb3G2q/N8k88BqfK/Ri8v25ViQRY1qzDdeVGUUA6a8T6OASyNTQ
	 GkE2X8fEI2DZXgDAJwzOSoNZtNLq11HI2ELUsDTxp9Y+Bd9V/QOGL1KYpwGVwEXk6K
	 6JWzEHSAsBwR2rCQJZFmIVdGW0YwFP60s4Y+MRoBQ3T3VYMV1md/WmEqcXGKtI6Vvn
	 oeAplHc1l/ljUFILzOpS/7nLhlP/Tvgk23DSCZ9/Z74XH1KttZUGFfI5F8AVpH3bVZ
	 Mj3YopQ0MwvCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD12FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578474284.4197.7881328916734003494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ba9c7176db0c3a8560a1574807bee15190c61826e855dab2c34c9a2044d5f4
Date: Wed, 15 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715784742
