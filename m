Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E53B16DEA9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718965943; cv=none; b=r/sMqUe5IreY17+RTMMx1oTmEXuiIsxPCC78rJ1dyF0BOJ0/8lOzGCsV3Hqa+NjRtPVjfeD6ANvDQ/3KMd9pJ9XvGeI3P8GvpGmwR5ia3NbnuHrs+b9FfLr4pXcsGc6DNSxZlOHLvwrDPHtP2Wy/0pXMoNHi6D7v6n+lRyUbxS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718965943; c=relaxed/simple;
	bh=Rb4tqnDTcbsJzMUbnE7M8+qN39+SP5VuZkSczhnP1eg=;
	h=To:Subject:From:Message-Id:Date; b=tcgQJyDZ2tlUdC1s7JwIupmZJX+3vREMUx/ecS/jYUlCYzONNFv/cq8ALHe/n4+lx04EPNfVwScBq3WsOITqzpGPSEZ3VCZQ+ip+tnsI0TAK7RR8PMLEaMDxFqazH5QVhIotYzEfyDGP8fY88gqmMVN2YNhb1/fWsqDE0jJ+KZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlQu+BgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlQu+BgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 125D9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718965943;
	bh=Rb4tqnDTcbsJzMUbnE7M8+qN39+SP5VuZkSczhnP1eg=;
	h=To:Subject:From:Date:From;
	b=qlQu+BgISwGZoKM79HEd0EiNuijHydOz7omONONZxE7nuNXh63G9mwqqVcjNUBeC4
	 B8WzzYQzW2+Ra2xVaHUCvGg5uOLZ5PRj/9wU5psuVjqWkratEFM63t4sfbSGpAus7C
	 pYIkbPy8D4TbvVL1TQLiwikTKGUcOpgGNbK/sw6paI5Wgj3D+rQzvS20hgsw/leNsU
	 3I5dy8SaOnK7n9dLgF7HXv4Mby/h2113YSvD+HqYN/B7DOdWQDMnm6jEH8oT5ZX/Nu
	 niHDEl/MHJLwDK44OkWEVuGYTvctOprBhZD56EgpcbUeEJVOXFS7CINl5F0szyzyqp
	 C8FAZ8/wbrvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D13C8C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896594284.6012.6333940309496929636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed32e38b18d10f34080dcb5a1a63a65f44b7d29f06187bda8bd07631e542a0f7
Date: Fri, 21 Jun 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718965942
