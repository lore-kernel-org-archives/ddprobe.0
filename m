Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F622EB84E
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786513834; cv=none; b=Hj9rB5qXvTvsCiWZtKfaOKZjF+dbhGZgDrmcriJuBoRXOYI+W0fA4x3POaXW48dViwI8++m2+Sbk0qyfqIDzWCte9eQE/tBSJV01EGPYNhKbcaOYrYj/6ZWUSALoC92N0Ush60Dac5PDJONv7093aLf5NYHI7HEP8tnE27sCu/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786513834; c=relaxed/simple;
	bh=Oxk4ZSMhyY4zQ+/rvz0bCUlxTXeXWaqqc4JwotrSD1A=;
	h=To:Subject:From:Message-Id:Date; b=iUqHu+SNZmVPjmUP+vu9yIY0+P3/MV1iVVi/fl7eVvk3PbjdeQ6tqtezsmppo74qkC30H/Mx+2zENrOtbvbHrlVtPz8ekaBjVxAPChGkUIqu+hgyRTe82uRgofy6J0s1od3QWrWBXexuzZsHB8/FVQ+qX6bXqXzMPak9dQHAkok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9ORxscW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9ORxscW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB430C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786513833;
	bh=Oxk4ZSMhyY4zQ+/rvz0bCUlxTXeXWaqqc4JwotrSD1A=;
	h=To:Subject:From:Date:From;
	b=a9ORxscWuO00PeRHPPSyAgDxvLimHbiWgHnpYEVY9u+WaL+m0MAO01THb22c6n42X
	 akcXbrYRvgzPjWKralpBofnOKH4WbGrK39RIkVvXinqmRxRBlaLU63M7v1I3uF3Ql3
	 SwVze1VR4n1XXva8Q9Nh6EkK9RsD1TVb4idd4PTbIzBbY6oEld5jfGfMEpP2mPFqZF
	 wlWNt7LmbYqkx0gqifRI7Yn56itaDLm4XK21FkiuE7ieqd5snujCCzh/Fxh0csGOiY
	 kPfSRGV4JVXKUtNXZmqeEMf1xa1NIUCGWIC8ZPdHDtF0Xl9HyXhOZ1Iq4EO30nFNUb
	 pPI+esHXG0TCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4DC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651383367.32523.10714055322260457266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767b65b952e8f35b95ee2a773b86d078b03969ed98ad0353c62a9c976afac4e7
Date: Wed, 12 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786513833
