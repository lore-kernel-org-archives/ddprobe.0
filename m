Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFA51B86E7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721276123; cv=none; b=nCx/3mPvFCBOj2ni7ox+s6agWHfUvoGeCIqPueqy+5fB8qykyARvBiXe1UZ4Q0JjzePvO2ER17looGV4iTw6xbZhzrM35gDX+EwhLqEOYM/MxsXpEOCYXXdCup2RJMajNBLIpFfoSf79/WZGPwQl8np5G5XQ5Tt9y155Z72K7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721276123; c=relaxed/simple;
	bh=yDSkLm/gN3GQVENlcaKjsHWle2egq6Iyyp6Uqn5vsdc=;
	h=To:Subject:From:Message-Id:Date; b=jw/kw7nFOCFc5aQddwarCS8ty9iVeQ0pu7XA1uEFRAanLwmzPQnj2mS/YkkYBz63UpcFFp3LPmqCIT7zrolxODcm6lPZ+68UkAscKSVlNyTJPmC4DbCOxjLYWyeMOn8Q3KzpGTVeLvvLZbawVqLTzOR6FcEqq/auA/gqB3YPLNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUtwLJOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUtwLJOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04BD6C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721276123;
	bh=yDSkLm/gN3GQVENlcaKjsHWle2egq6Iyyp6Uqn5vsdc=;
	h=To:Subject:From:Date:From;
	b=TUtwLJOttbtSa7mqHROe7XYBOyt4bXM8vKg/rTQv1lIEx4M9+lZP2wgrKDj9sqURz
	 Lzcq894FGgCa1IvTbRjE17oVmPbrqEJUh1zyLF3ip2+gj2538WfO+jsox2/EtAyEIz
	 Jg1F4RLmB5oIWQ2/mbw/kzj8WWRt5Dp+S/LwXIhtdcDnaBZj4C28CiYnRjQUnRbcEv
	 tIs2VMssHA8LjHkkoOGiISdBQsPFcMtb8+NUjYVKIqilvodco3jM2IwyxPZEW8Uuu9
	 Msj3iQEQGSJNEyfY+YxRQfvtkO+mQvegFTwkZJ5f9Huf0XU7a+Zr08d/aWRGaA1WIV
	 a+RcNyVz6s+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC528C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127612283.28037.8863941757959796501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2ab5bad44f8e745b5dfa1752cb8170a6c8ae43bec4ea6720d5f08aeae48ad6
Date: Thu, 18 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721276122
