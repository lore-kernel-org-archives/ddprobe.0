Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9586547D935
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778571034; cv=none; b=MgvcoUAjbd7R5Rz2APbvUPGnTtGuPURTI8ncITAbRFJ4hS7QSII8GO5QCzM3HNKKRO3pctcEgDZ/rgA+4iuEeDt9S0R2cuvxtuqht4zAoR6Vny7QKLrdR3FXwiFCSkIK6eqWqv/HvXhE5LxLVQuE0GqgTJNSLTferlVqu+Cifl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778571034; c=relaxed/simple;
	bh=XJ1dgh1kFCVrG/bBkTvo4S2pJ/Ft3dr/VZwpWZuwo7s=;
	h=To:Subject:From:Message-Id:Date; b=NggdG7QID0wepAxcFgHYU8Sq5j/QVYivQMOgTAHDtzdwNXmFQ6tNSCR2x0i9OE6H8kxI/lNupmTIf9v1a6XwK07b65JjIRx1YUBZC44oDWehF1e80T+iJjsTGYdRlWk/G6raf+HK0g2Hz/UOFOj/JPLEP3i21eyv+SfKPtC0z3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKmWgTpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKmWgTpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B627AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778571033;
	bh=XJ1dgh1kFCVrG/bBkTvo4S2pJ/Ft3dr/VZwpWZuwo7s=;
	h=To:Subject:From:Date:From;
	b=IKmWgTpeliBpXWbqqH962LlsT+10sXLvAxD6Ao8j67quY6j8ACsg8NDG6aV2ySzuw
	 NMi/IL+ryw+mHSJtHy/Qkqk4N8AC5ZJmWsCTdxdgO7C/0YIiPnrhp2GxzSoyycuMKE
	 sym9//E723xL3UYczWJ2J1MlQytUFDjH2CHzUj23bLf28EBjHJb5pEVgEpO4chRaWh
	 QhqIgdH37pSKKgP0uKDwT7hK/oEZ4Nb0LwPFxWgbmXCSIcdb1QkNjf5P93notqI7Ps
	 wqIKvWNBqvcsDMQ+ui9oGSHfYYmyvN8skz0KAWJRTgDfzxL2p4nKqKMfQQju8KyJLI
	 PgRAhADHYsHLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F14CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857103368.26861.14545499658239110772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138ee63d811ca20774b55581a85d5d2d65df46b80cd37a0e0063bb058a3fad2d
Date: Tue, 12 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778571033
