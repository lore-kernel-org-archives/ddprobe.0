Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D7431E85B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787781034; cv=none; b=R4cXLmBA6lPXLlVZNqEZ3M9YHPa1tF54C3cCI4hBHgPpjYUTxUutYEFX8smn6nzgEZdBRG8EW8SOWjxAVO8tJGWCs3byVvW1o1aZ8hcMGfckhgp7QfJx+swe+ivbdjPPllOLjWYy41yAdMMs5htqWv1TyDAKnn04YNkz5bcjS8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787781034; c=relaxed/simple;
	bh=E7OdDtvxRfO5jZUDPNja1lEtCtI5Lg8zNtwXujyOIkA=;
	h=To:Subject:From:Message-Id:Date; b=jD4K9989lEk7nAGYF2Eo8TsVyfd9vgZQC18iAUiP6F4+W2eufZaM3BnDgXTc/93nUbj1VKio7OvcpmoajuIYa54dVkuSsrQz2kNEgh6aAn2neIWah1nbfmmPhv0s3EthkqW10x1hn5yODzQ0MY0YxOr94SVAJLfUUA3e0KCJlWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BClwGA7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BClwGA7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBB6C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787781033;
	bh=E7OdDtvxRfO5jZUDPNja1lEtCtI5Lg8zNtwXujyOIkA=;
	h=To:Subject:From:Date:From;
	b=BClwGA7/AW/H7Wr6BR0f1z2Z//xj+veG5CPr7OtvE/i4ajKqGZaqE04ZQUflC9eJR
	 SmAPdJTtNeyovwNv87ikm9ide+Y6pSL2Hb7pKBOLoklPQUtc5miZ6z2CCRDSOKo8qG
	 XyyDWNvClD/HP/Z4wFX5oa9GZIS0KoTvyMoVgGsC3cjepniCsgx6zpQKxzRtSD/nXM
	 tvFgLZkk9z2rgFMEqL7w9WG2IajweTsG10jwR0Fk7+YeQpgxmbA/rM74tb1K9e134V
	 xw0szlYpmjGCpUP2gV/223fbrDVnCYZGbMwBAYYd/QwAp85I0lQmjvxraDrtmTD8/E
	 4BD/55SD7+PAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB181C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778103369.11653.3571899599585001979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4716d5ac5f9c3be5fb1a7754acc2593f4be4fba408e663f0654f076df3366e73
Date: Wed, 26 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787781033
