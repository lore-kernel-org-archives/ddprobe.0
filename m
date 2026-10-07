Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D1E1A9B46
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791396634; cv=none; b=WgN2Ct756LYVeQKh1CVDQn7LH9udgywX693LxkBjHXoGv3A86KuhrekIZ2IpTrU4FH2+gMBunAkhJlnWNGXh5fMF64NJ0MH6Gy37Uf0MKqbPWRwDB3dzaLxTlhx5zGgEGEK8sx9B7rH5g5n2GDfC38AKLoipjCwxL66iICTj8Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791396634; c=relaxed/simple;
	bh=FLFT2zOcTys4aj9V4DeXnSKg3G4xFlC7p1Q/2PBWs1Q=;
	h=To:Subject:From:Message-Id:Date; b=GUc/Gm4h2B49Dc0H+lO68s7lqhlMtnmppHYN7c+fggns9sFoOb6STX2lXn7+ojS6ENy2Nz9EhpKs/uwpOAFX3BKO47TVpyahTgTz7V/kb4gZb1nhm3oZGiI3a+wLABdtw4KHPll7pfkjjyJrpjTc+B14G4x6fBCVzzKqdRunjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG2ztrWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG2ztrWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791396633;
	bh=FLFT2zOcTys4aj9V4DeXnSKg3G4xFlC7p1Q/2PBWs1Q=;
	h=To:Subject:From:Date:From;
	b=AG2ztrWGXkJtuHbEw8o0IM9NAs8nPDTCjO6uyp8I2mYLwTVPLMo1YdpZxGbmNQYoL
	 4JRObutFppHK7mxeiTmV7gawigy0BKXDJYS7kJzQmXMKCMDW6VPHMEC6TC0gUAh4AV
	 uybC7H0B+oBXd0NCjuSYZA+ttl80XOSkXd7eOIoIxAjmfRmQrCMKlLAQ5MvgWgEk37
	 Xq95GO9eNKZnCDbo7B2QWcvKH/4IabPNOQ54bMvInjnpm+wQPLsPl6uhZPHwD/c/ke
	 sRUeMA4aTipi0l7L0khhMLIWEpmciqoknDJZOvepG1c4HZu/um4VIxt22vBKj+5+At
	 tHa0B0a+vfZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF758CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139663370.3719.17491845748647035190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a30fffd001f3f8f3de93abe361ce9c0f2a635c95e47b4983f0c487c62e1266
Date: Wed, 07 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791396633
