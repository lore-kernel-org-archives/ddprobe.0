Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EDD13C3F2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728972354; cv=none; b=t1AkI+tO4PGgrUaLMyDPBbBzoU7yduPCitzUQF/9afgjLkSy2l1TKsNuc0EOxYFSGwU4rZi0y/CnOMuGGSBTXuGajhonS0qvCLENk93BTFFUEkVrJd+hGrnQPN3WOBM/VeCo4lqMzz3fMLoCqD1CHPFQMlT3zp/N0cR7wnFBAhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728972354; c=relaxed/simple;
	bh=sTFe1ytUH/BvAM+XEdfUpBIC03DzitapmgJJx7cgCDc=;
	h=To:Subject:From:Message-Id:Date; b=QAl8x/uNVNhvsK5xhaj6jkru0tLNvOa3PIoQrR0A+aaQxdELUYNtrli5OvGiYRZscEpPiT9rcVeg3iaFT/uiBBdBKj59VWPQrmZyNotAj04++sMoVwngEJn2amWIhjcwSJOgv3HLN68/SwHrY+jBuTcFVzTp1spOWS1tEUHScdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2xD3+gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2xD3+gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8354C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728972353;
	bh=sTFe1ytUH/BvAM+XEdfUpBIC03DzitapmgJJx7cgCDc=;
	h=To:Subject:From:Date:From;
	b=V2xD3+gB2c2Gn/o+6GObTDGBpJmDHvJ9CswThTo15kJ87NQEfrXhTr1v+yBEByDV+
	 8sMWfvNXNV5ivxFD0A2I653FZ12lxjtYhFSiicQUugLLXPzXi5m/Jv6qriNKrw0U5B
	 1hMP2sRSc8NNoztg32VhKXElCmNnjccnNK74mno8h9GF3pGxRevMcEfPILkMwcMfxf
	 E9KF2JKxHryzyah7iPu787ClpAwf/6wqJsUMSpfgpvHxf97yr1ZIaAIiWtO6uMu2ce
	 Jk6Ndb+0BrMm4K9vCj9zLTfg7yUhW0MOeIi/DOL0pTqj1fr7SFHU/gOrJOXOZ3tpN3
	 2xAN23hsrTGwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E21CFC268
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897235359.20274.15832549722029164875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fba9d2f8ef46f90c9f424b770cc44d0c16dce58a14c810880d4f7a3fc1fc4e
Date: Tue, 15 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728972353
