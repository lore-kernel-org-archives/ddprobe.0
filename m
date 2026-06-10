Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CD40D57C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109994; cv=none; b=lFiTPyct28mXMJZNPe9IgZesEc9GldjUdo6GzNd+OrpTsMb++VOUZqML2ogAVdTV8aP0WFinfCBDE90+uxJJgX3M3Vkdo4QQM6A6eOWqpER6R1Yyme+Nw3vrT/a++W1XCa8qjhnuLUYN3bjQUoQ1li0ybp9Nm6SZI4bw5OSlzh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109994; c=relaxed/simple;
	bh=lT1TzxdPgr2s1aleyuRhxFhxjRcFGZLAVz8++VZQ4mQ=;
	h=To:Subject:From:Message-Id:Date; b=G3HFHIhMHZiNFuEbKpAOZ1UzQe7dSzlx5ySDhIA6Xh8+i8IbXugEKH5DrNx3e5+eyfFC8ViObB3o2YwgiRx7l+weT1749TzSrLg68AVPuMJK+YgT/Pv6VlghUhDakkc1gNvkA0mhAy5dp07YZfYDTXmkTbckSoG+iN4omYgVnoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+eE7pFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+eE7pFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CECC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781109993;
	bh=lT1TzxdPgr2s1aleyuRhxFhxjRcFGZLAVz8++VZQ4mQ=;
	h=To:Subject:From:Date:From;
	b=P+eE7pFVWzaqbG9Pm33jj2c4lNcMpGMYFtkL4KnE+leg4HM4iVFzwNH4aKpdE8Trg
	 weTcYrrNj34y9hz6pyd247hG8Oxfx5cQh/fYaNjPkulz/3jK7B2mhFjZPhY6WqJnp6
	 F/IcA249f2FRoCBGCb3Nh4RBHDww6EqiPpipC4dLRxRXyupLl0E8TwIs9qggcgSsyw
	 MkjE2fYHpAuAbDgnbBeMNj5gV9TOvak6znS/uL7pMTn9QtsteHbAa5EKxRg8aZCKw6
	 c5HF8WfjThCnGo17AUjfwMt49xQIADwalJC6+3Pv6G9DGAfEsADdanfgzSK6tEz2zf
	 C9+S2WvKFtl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD882CD98C6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110999369.4802.4086818924927432038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e514ee5f67d7eae6e1c65d2589f6c26e58b31d1203e0ab6b8c6f24b85cb05d
Date: Wed, 10 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781109993
