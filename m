Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15AE28370
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712791697; cv=none; b=sWkqG75kneeduuThf08hSL8fBwb+vlE8gCBsLYtbe/eoPH22U1v8kb5R+qgJSJRt1HTORkBsIcgjZqVFLosNtQqsunsK+/3Yy/QusCWzC8adeyqB+a+hTv3CsxXR4+xiKeRnYPmT6TPoGVNOwgDV6kmYDqnkec8hOEtKZi+4lGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712791697; c=relaxed/simple;
	bh=zmw8LiUzodED/gfjNHKmEOw+AFNmEitLiaWY+zCO8rE=;
	h=To:Subject:From:Message-Id:Date; b=g18Sk+9Ck9qrTw1Xj442Iw1TYzzhXJ9yuDpB0/FxcPm8KsHNdMhzu1B+H33PY748RXEuA+gdfihbbG8n7dlzdQDn2n+Bi8rkFeOQ5XPMjgnYEZtlF+LmAVVVy1GXalDNJHTyHfaNVxBQPZDPNiUSZK57LrWp4zsTD/uBa1JA5tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oa2kVMyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oa2kVMyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D024C43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712791696;
	bh=zmw8LiUzodED/gfjNHKmEOw+AFNmEitLiaWY+zCO8rE=;
	h=To:Subject:From:Date:From;
	b=Oa2kVMyZHIm7QwpkAJr/Kpa+K1vHIKo4SmwkOr3fB2NGdE4o08OwuzXlNpUDVD4TH
	 rPr7C5PqnAQJn4wORTubuB7OuW4UD+6/LkKpRA1M/Np6Mpw5lpy60ZA961+3HbjS5S
	 KEva7eQne/1lqkRuCzf57K8OoaAh6T/H+G0R7x7s3rOJezKFbDrtmreoHyPKfkcTfw
	 6ItWWo2DlqtuwmOpMw2DgQyub29M4o9u8eRs2T5XvIT2KMR21nhD+AITMzH8v5gZnn
	 KRZp+kJpohVdRqRuid8GhpTqfVa3IA1zHq3i+w1CDGXTHmq7K+XElokxFufhl69yXD
	 MxZgfB4NSwT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CA05CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279169650.25417.14310734631194396376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07b8919f091b986068439c2e984e21023f602899f3fe84151739712119fd03f
Date: Wed, 10 Apr 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712791696
