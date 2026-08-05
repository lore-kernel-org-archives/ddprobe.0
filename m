Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C31453A3D
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785931234; cv=none; b=DIaFSEgasI7DpPJ+3iutLhyUYp5QjWYysjl0kY3Hl/TyD0i9MohadEMgQyODUJRYtcprLmOjxGe2t4zDRI+EaNj0G4g23BVAuGOQ7XMr9h8j5WJ6s6PcQzs16ss8+lDAkw6TfdMpbzrjLl1KJM4clOiCaIgdarbN8HTfLqrJaZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785931234; c=relaxed/simple;
	bh=lF3NOOY5gaF9qxwnRmRKx3+xsHXauBpWDj660hraqDE=;
	h=To:Subject:From:Message-Id:Date; b=BfyI7ztqzx74PAE0D8j9MusE1Fae2msy6zXJIupWHEsm8qx3bFi/2C8yNDivSrW31eUfypingcCGKdPRX2CJdEa+HP968/muT27I0eg2mQJMPHpFG88w82sBN0u3iGi0E9Ih1an9bi7XmJz7aQ/vWS7/OV84zy34VBXgK1oveNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIe9szXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIe9szXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 048AAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785931234;
	bh=lF3NOOY5gaF9qxwnRmRKx3+xsHXauBpWDj660hraqDE=;
	h=To:Subject:From:Date:From;
	b=TIe9szXKSALyVL6WR9P1VkfG54t6i8TsTc0goF6zQUGBA2A1zpevEfMABoBUJtbZL
	 7ARDjNiYMaN7eYGvpQsgfwkwLl+2G6ZHV8u8tbYN3fOxAFwT89Ru8bEcJKZHmRkocj
	 GKZrfETM8BkEp5A5cdBMusPYBGegU/6NC43E+nSM/efuZGPTensjTVQa5BiGaZumlQ
	 QpaX/nEI+sdmdi/KGRiyew6W72QLGWJfkTHPd/Axumw3rfmNdDuySQ9o9TeNwMFT8b
	 fDcMSnJoA2FOfZk54iFqBNqN6dhCW7bXBvHIcL9zSIdsxxKZEGK5KGyuqbalHbQeZb
	 YgNsae9AHhOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD31C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593123379.10509.15177903368752711550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acff2895acbf7640875456392a457fb91132945a02045726fa18c11d3daceda6
Date: Wed, 05 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785931233
