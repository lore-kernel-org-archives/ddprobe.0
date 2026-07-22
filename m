Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE05C40B6D4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784695714; cv=none; b=WWf+mxswutaL1Mz6hiSYQGP8Nr3CVSKWjp7ri1zimhJnWORP1brUyX6YOlfzQwYQdcAjfUfxiBfnWy/Kqoc9Ws4tZBtvM8Joc2fbIDyDjWAr/G4mP7SUgNc9EMHDDm26ucB0klG6stW3cZXj3I1MlKoDvsuMtqhisiOBEj08wxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784695714; c=relaxed/simple;
	bh=8blGPsVW/AGzZw5YNzoWyVRpqvksWxwuIhysbL4cDNE=;
	h=To:Subject:From:Message-Id:Date; b=rOtp0u2NLhN/9m6aT4k4gNHAqDRX2Vz13kO/wgRt3oY80xN85YvA+Wg1MzSKmrUDGVHIsZRDfj6pyXHzMdLCteh4fZZXzBlxw2dK8Wobp8GD3RVIDLsLTF+7x16ShkVVLB9iZskz0uccP5ObbNtilhTV/0AbL2Au7gXQ8jc0kU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX733htE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX733htE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D9FBC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784695714;
	bh=8blGPsVW/AGzZw5YNzoWyVRpqvksWxwuIhysbL4cDNE=;
	h=To:Subject:From:Date:From;
	b=cX733htEUg1aS16IiOdHWhOAvOO2RuRQQHL9x0nbgGKv1fqaNuHufnWpotMgWEZ3k
	 2vkf+XhHmifFcbtSyuAsClSTLTfr2Z96rba/xAdj/GD9vpQg82yWk7EEE3FTYSJUjj
	 mG/jihCYrc5Rm2iAfMWIgf9bsuNZ0H/qe7YFl/DQrlx4NSzNHFijLg5OVyhRyK7zp2
	 1MX0UmKJUZ24HQUIZkV4UYhNJsash5q97HqneWv1Vrf0c+R8mW73eOblmt0qCwOtiV
	 oKnVJgjb8fR8k5QnW6sRYg3ZQjLJg9X2fVYvA9IRISE6RoKP2405JLMUgugH0HcI+4
	 8y4FaEP4/gctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5DE5C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469571383.13132.9028644591298537681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b5a1047d6e7ab88bfff55309a112512795829f1f1cb9e6001b74f1b2c18401
Date: Wed, 22 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784695713
