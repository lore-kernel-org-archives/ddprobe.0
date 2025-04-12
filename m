Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5127A18E050
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744489194; cv=none; b=Eh+1ajqpUxgzKEpn1HdRkIxLDo//JDPcy5vW1jXcVJ1VTGD/g+IHlAQQQu17KLqUx4X816FDPNVj0jq8pcgf49ZmHEvyI58zhNzALYhd96X5CAcUNorxBk7z1RiyA2rPg+npa86zrfXcb/575csGmFWpxgscuINFIiNxzyaA9Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744489194; c=relaxed/simple;
	bh=R2Afa1oMq0kNmNVttlZJnu4RSQ05KU/poOnLYWdEY6w=;
	h=To:Subject:From:Message-Id:Date; b=fQOwEZ/26eg1SH7MQ/l8zHrxAker2kUtizLaDkXNLlinALiuhnzIjP1CPytdbRUnde+0FxZK2wxXtuRyFiWKqk3puJ/iR3pfGnZUSlaqDWqZblQkl/uiS4i4arnkFCcEfiecsYrJMbHsIvVmN4hcABnios0V1QlWv/zNoylAwE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtEJcswJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtEJcswJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB21C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744489193;
	bh=R2Afa1oMq0kNmNVttlZJnu4RSQ05KU/poOnLYWdEY6w=;
	h=To:Subject:From:Date:From;
	b=TtEJcswJpou2UHTxRDf+WBDkSyQzoBUHSJJFkv6rk/a2L+NQ5BvgmuVTOiAnvoGa8
	 krMgkAQGka5GtZcXKVyh0ajsXi9Cl3yqSTMFBDp+aogQwqFXezIHj6nkQfTw21oUlR
	 8czGbDNsQJkZ8FGkXKXCsLsrwuzpfkpdptPaZE1VXcwGCUpCzt7AXrYdmTTV+740cH
	 V2Hh5Xv72ey+MPt3kiVAVd0nqmFmznXuazNkRJkvGxda+VaNZfgEDpB2di5U/RZgmV
	 P5aUs/o808neEIPuToA1JZmLt/lJFM6Vl6KXU0ATvwz03l+4jtxZ80z/biS3DXjD2f
	 AOGrvrXR46/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6FC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448919363.3467.5505696145654178548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ffec8a43179ad57d005d92f27c70ed9dbcb99a06acf5013201ff7f19086cf4
Date: Sat, 12 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744489193
