Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C6579CD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737683154; cv=none; b=fbnZmrkIlAtFuy1VullWxsssIT+y5P3cZbYh4hbjVqbp0Vs0VOggsVUYkm0BkrLbMbtYJqa41wkgptwYy96UeUxIwAPay9RIkgsafkGrG61DZrDGHS+0Bl8HJU7VexuVO7VfxLlQdS4E3xoqWtBUgkpfx1QWm+3UL1Uzn/lKFyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737683154; c=relaxed/simple;
	bh=PNP1u8MA1OVcrdgDqakXCCldCAKP92P3WffRuIFF8nI=;
	h=To:Subject:From:Message-Id:Date; b=ErGQNLzRApcS/DBo+wV6jEvGSnYUNUveC04HIEDPVN3q3tUcLTyvzhipM3E+vKZNY1Qt9BFzZ7Z5LPqxtGzbhmdKtWyYz0rlRHWkuhD0SD61JOmv49E2qUmoL2kDKPokr+1nZ7aURZNVvLU5MhmZZLes1icCjU3j3PDh5s4hbeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+V6sXTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+V6sXTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF53C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737683153;
	bh=PNP1u8MA1OVcrdgDqakXCCldCAKP92P3WffRuIFF8nI=;
	h=To:Subject:From:Date:From;
	b=h+V6sXTgOSB1tcmHsAF73rOBKcvqPN3jiJVDNyuvw8Gh5vn/O7CXumwAhEpqIBF1d
	 3FKCgYkPVn94nINmxVP69sofnPPrvlOW/vxxjRmpYMaoW4JBuwLNXv8enjkDVsIOiE
	 hBNm0rKiNmRO42ioqGViOe+prg1Huy3omeoL2ldpwIjDodlmExiGsLujS/NN83X/3B
	 GQWsKtRxpqbN8/w5Nrv2enJIqAXWkUf1TaWj4ktKfiW+QoFgJcH1FXDKi8m2B7UNVW
	 Ac6AuuMOBLxW+CBhl3BYGRGUSpbEGqnS8Sw23TcgdQ6c7xv/6vHvqd/ciwXuQ/uWx0
	 4TRcxXtQbRq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B4DC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768315365.20749.17267361073394205502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e852d19a9249e652d9748f915e4f6038f3e505a487fe3abb2f2df10908d60b
Date: Fri, 24 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737683153
