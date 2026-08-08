Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE142D7393
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786184434; cv=none; b=C7hNUILpFoAo9KpPLO4nlOQoE1Kf7Uz1CfcPAcoJ3WHvJCZbXX41TgDYQsL/KpTMxWejry3YVYv1Mk738d6zfVVwnc8I508dExToM3CN3NCWmT+Hq7R4jagW8I5KOogppoBHaL1aC4LAdxwf9hygdUGujgLvybHMOnlkZaKH7eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786184434; c=relaxed/simple;
	bh=/GcmKkI9Mcjv+TCy4JHR12gX23b7mY9Xd2QmkNew8YU=;
	h=To:Subject:From:Message-Id:Date; b=Dohf9tM0zhiHY4H2absLR0dccSJbCqyA8qrL7mh9UXBVpnEVe/Tm0VL+sMKOydzbLKU1//pxQ1HqovL3GW41a2In0U3nBQrAE5creLUMiJbZyYIioSgrohGXDh0uifQnoqfgRu2fOuNGuejTzddxv92WPjwZVosNJkM2CK3+JJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOSx+QUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOSx+QUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23C9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786184433;
	bh=/GcmKkI9Mcjv+TCy4JHR12gX23b7mY9Xd2QmkNew8YU=;
	h=To:Subject:From:Date:From;
	b=qOSx+QUItRAXJx3CG4zUnv67Q5ArgMjyo51BbAbmAJWF5jeOuTDS94KH4SdChenyv
	 dZ7gAnQu6lVoTjRCFsdmdi+1q+e4IHRvPj0chgQ1ltj7dEa2kzucG0qwp6pGQwa4KV
	 co3N71yQZPEs4a2N881GE0kxpMX7oMF0+j6RiZb3C33aZfsz21/Ah9PA1tRNnmJmlz
	 KL0NlEOYugp6mNoFGaMumcwa/zCwk1W0ptXozhbwbAoPc7f1AvKcc0R0Um8MNDaj+X
	 jqkUQxTbav0mnCE1yoeFnyH2RLxkEuOqxwV2KtJxSvjo47IbcgBE62Rh046FhLYeJr
	 56tURLXSUbTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B42C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618443369.2850.1052217905858070985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0a5b1b92610692481f5a92c8bdd966d835591eb1feb2da4b99ea22a440426f
Date: Sat, 08 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786184433
