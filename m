Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34351231C88
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728842154; cv=none; b=ZHW4BNSqHExzzJAGQ1HbQf17uQhWRxdstANskdpaS/ZaQnS3UaCnj+iuCPaxTGgRIPYmNWrI0k4va6U3OeghgUHviZV2wUHQOrEboL2rBxY8Y0T6S6xfyQYYMaQj9nsg/tx8sObjtXkjqPVYfClx/XksEE1+r3qqgb0RLeR89ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728842154; c=relaxed/simple;
	bh=InSjuXcsxeWubdnsGkfvmDQMPvKpv3iODUV01DRX3nk=;
	h=To:Subject:From:Message-Id:Date; b=ADWtwghE0Nysdvvnvd2h7q4UD/GiCSazziz303pA/fBrqlPnl969mrh1zZxju+9N000sUKE/nRFxQYLdczsqA2GMbd9vcEJHBTSnw+t9yBOA2KKnnvgjPyp2161LLtHyrfGf8PDw6tFumeD4jAaTADoh48eepmu1FnhIzlgXqEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcHuc2zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcHuc2zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728842153;
	bh=InSjuXcsxeWubdnsGkfvmDQMPvKpv3iODUV01DRX3nk=;
	h=To:Subject:From:Date:From;
	b=ZcHuc2zlkBGcwM0eQMWnSG4RHZSRgV5aMBjB46Ianwaht1iqFKIjT0b2uahLRCL1Q
	 W+50rMRCV4NF9X60OeRT8+5cwEij06BPK7Wf1POWr3qeCjupL5uySOv9g6XeGlSl0J
	 eXYK+yosAZDcKqxtaF9DCnRLy1/VzWSzNP+X8pHbrRg636DW6cmV33q7wHsNz9OF1W
	 Kdg8+DLhaiFlDAh9RijaOtAYxayzsQznBoLYK4xa5vG4yQfXNVY/8zIPMYTrUgox1R
	 2s9V2aj7HwJmk+/oD/8WKQZ15HRUt04xbxNURAU60WTa8BOp3/DtoX+nd8o0DfL8J4
	 Li8emxyS69iOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B19CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172884215359.28999.6005020030894404711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dbaa4f07860b64109afcfeaa31e8270fa4f120dd5077f81f92b3eb7eb6806f
Date: Sun, 13 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728842153
