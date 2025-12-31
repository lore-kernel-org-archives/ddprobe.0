Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3007F27B343
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767198234; cv=none; b=Rh1gAgZD8pfTL1f548oBFjSPsEgBRZZX8Bdn0v7cWSfc/ujLWjttr7tEciAvA0DNTElLJFU3GcFgqpvayGWVWD/+QL0JZuHYJUi9FKdVNVaPVftyfHoPN156qRtr0gqLOHPvtxayiK7LaxAKqJ4POi2GuV0nLTyH3VuLlJuImFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767198234; c=relaxed/simple;
	bh=exX8DF801yem2i6JY3j/xPejvw9YPfe65LvBaKSFeLQ=;
	h=To:Subject:From:Message-Id:Date; b=b7xE8nD11T374R/Ps+C1KZJ70KAZAtZmr86IQv1JZ8f2sIHhzwtAyfGwuXwVEsFO4+Pt24ca9c0Pi5CLPpTiLG1BfIGKCOFdJ8LbpdN0BUYuUvncwao7ZQb9xwfvsaciDoIkKI2/sIlnz9QfrCxnfe/vBRYVm6LjhTc6jHQUSlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxPoe+wN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxPoe+wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A37C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767198233;
	bh=exX8DF801yem2i6JY3j/xPejvw9YPfe65LvBaKSFeLQ=;
	h=To:Subject:From:Date:From;
	b=dxPoe+wNEJaL+kn6LlvjEljMZRFU7LLMf2immrJOJUSV47wMdzsUO0SfPiZYC+iai
	 cX6L/iaJNB+/Vth0t9dSr2iCfi8DIxhzuhFUUp9LAHIemx8Rh6Wm4CiDs7GWq9kjBu
	 68WFg/Yetrlo0aio+rb3NpwIqrg0hXdCcGRRZ+LOU/ZawRrKvYRBjCUX9PAgsV/o6F
	 zbyRoQtri6QL7yK5Omv7fOcbOcTMyvO325rPqldtCXzqHs7yI1bzTStcIkSI+tOtuc
	 jnxdZOZxIPOR+4UHEx0NiRy3nC6DEMzDwstydMScXwXKrDNJuJ0EAq54OMpOF5XRsJ
	 qrCfGn2vjV5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A80EE644C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719823358.6674.5874200282631442379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f7a9c69ef2f661b4d37e44b889e5f06da0ac0f009c761bdf5afe12087c8b6e
Date: Wed, 31 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767198233
