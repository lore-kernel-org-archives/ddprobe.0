Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CBA1B3950
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743001194; cv=none; b=J+xEajv/4yO487m23gbLAc1Xc0ipkSWG92NWvGh7jSxE/GJhSOro0qCd/Z7SabQ1A7b5mB3BRyYs4K5S/lrlRRq1DZ7k0Uo/MptjSTHZVMYh55w8bNs19euNAdf4tLBKDm7C7bpPPnYVyOHrqkJzOzeRwL0PTJI1+2auHqaYwKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743001194; c=relaxed/simple;
	bh=wlmEOAa3H1saPQF2zHDqFkQHPJGSxPSSs51Nmm6yPbQ=;
	h=To:Subject:From:Message-Id:Date; b=dWaK/R0Er31U65oBZoBDc2pzUR79f4PDHm5i55dBZSVLppPbvdje0szJ67zCGubXVmXV0dCkuZoOE+cs6Z3XJuz48tM6JQSLjuBUP17mFdluFs+FmGE4RAS3kmQW1c53IQG8G5GYk5vhZx6+Shpyj37zWOrGjuUl34y6e3smyXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqCQGtOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqCQGtOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC1C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743001193;
	bh=wlmEOAa3H1saPQF2zHDqFkQHPJGSxPSSs51Nmm6yPbQ=;
	h=To:Subject:From:Date:From;
	b=JqCQGtOrJXiAaDcJeT6BSaJUigejDzPKwpQP6eHukQr1zN0a6Knw3hBW9ef20sP8A
	 HPSSTIkwUajhlboXEM7anCcFCVWxzORZ4BWtVkchtvts4UNzZx01+fqqEJtri+Cm9L
	 j3A1ERkUytyRffnGl8J77NJvw7CrB38wEL+c1qEGSoIn3vnOLX3VrR01HCErr8eceD
	 3BjwWYQD/gdnc905fuwRRMw07jCbQUgS3hBKbMwa2N5PWoa7Ly9cljFGU05QgrjEdl
	 y/HzK6JOJMUrFjs2UnIH7ASVfWeOBhteIXMtSqu2p2Qkj17bhfp0Ham0k9U3LiJBte
	 pQH4gfXhToItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA76C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300119362.11394.2062280331800621630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5143ea3661aac6cd539f25812090ff8d889d319d87dd5132f01cd46352a7f19e
Date: Wed, 26 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743001193
