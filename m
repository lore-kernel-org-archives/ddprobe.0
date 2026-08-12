Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A10F359A6B
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786549834; cv=none; b=SbcNCyeACaNQuGmuEh8VAc73UL8MhJXrg9/Sopi9hLeOjibWv7uL1fln+ovilS4AzL9To3G+mgWByUVtqdAGSXizxA0pm/0WwIp9yoBUuTpntelhUvOw0Qe+Lm6qNJmd/UCkavt1sBJ4I4Ydkb9Xv/Pg3Q/9cYw1Ke3fQ9OL43c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786549834; c=relaxed/simple;
	bh=EP/PrGCdR6SmnawiffYygh9htutIOLkpaAQyTNx9KTo=;
	h=To:Subject:From:Message-Id:Date; b=So+lZFz9QYFMLvoKihyZurgZs3XC9pgLq52g6r8SMJNTAJhQPXhZyNdfb+maBnsS0koom/wI2AiaTO/IX7rRl1E+aWwJQrO2bvIa8nbfdU8XnjfmqvB4qhNO2i1+77EatWsqtMsCdZsNK5qPv6d1BvLv3+wq3qjODbq/607GTt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXSLmfAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXSLmfAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D734CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786549833;
	bh=EP/PrGCdR6SmnawiffYygh9htutIOLkpaAQyTNx9KTo=;
	h=To:Subject:From:Date:From;
	b=VXSLmfADzg3qbkAP3pB8fNZimrObJk/QzflCB0wO2x4htrjQ6rE6Vi4TxgmBV9yj6
	 TYRRaO4WasRInr9Bepod84RoV/octb0QRmQDW4fHz0Gyub8EZHuCCY8xhROGcvKCeY
	 UGBe9WSfTloE7XATCaL12ZPR7rc+Bj35/hpwpf78p1FNXlF9Lwb3XrOb1IAIsBb86m
	 p6EtbJWJIvD63Bq9MyvbZvvbVB6Pw2yTZHiPCYTN5/grbdDYzUmLVnHPjRmSjcBU1J
	 woGl/KamzdV8yFR64h6Fn6N239MgzlGyIvJqu7pgpk1+JTVLjn+DhUUvRFg+oJvfBY
	 UhcbhPqs1HHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0137C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654983371.28749.15961786466975912151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d510025da4ecf1d450c715102e34a321bc2b341adc1be9c3370247e0a858c62
Date: Wed, 12 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786549833
