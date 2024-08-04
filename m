Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB186A29
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722762954; cv=none; b=NK0MQm1fmAzH5aZ85nJ3w1pUAAlywB8K+Wcg+Ka9taRbkhn9VPMaL2oYH8SnbjDL1NAIyUOu8T5L4Aqlgt32+9GBjF8bQeeHNjrBM33XQ6eGe3ip/nXjmoHy87cxXgMOYiMIgng44lZmdzgxXVZ6B1EScBZfd0cGnFWR+TgKqig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722762954; c=relaxed/simple;
	bh=thA27kERuExUMbs/lNSiRgDCWAZAZeCrl8NZSXpwW4c=;
	h=To:Subject:From:Message-Id:Date; b=dNs4Fh9BDs1RhWjXmfZHOboQT/3/WKPYnntS6RHjXPlylLlxYXI91NhRslirpF3LP2dcF7t/lnRK76Cy2sE8bzP4613dhdYDRLLT1mbajnBmFGNXGLQAubnhNCFeKS+qs3opQl0soLnEJ2lhlOeGYII3ugbmPjIyCfbSTmgfGs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOfKuci/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOfKuci/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DB8C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722762953;
	bh=thA27kERuExUMbs/lNSiRgDCWAZAZeCrl8NZSXpwW4c=;
	h=To:Subject:From:Date:From;
	b=IOfKuci/LOrf9g3ZYu5dK19c4BtlAh7RYXaBL62q1wdh/++tqehdhFe13o2cqM3jl
	 5I+PtfqyJB8OxYNl0LkLepcX1bkLmEu3gaKP1DSslkOWdDAefN5ceCRIBqfZZdR1Dj
	 IniXB4DbowTKpnW7xVW8SY6P7XIzWf1pDIyBEQTwlHfA3OdMe56blbTpylaSJylTtj
	 MXkDrTcktLAP3z9bgq6PnDSpJIRnYscK+EDyJI0GV3LPvBK3GXU/j56f6VOvPOtG9y
	 BRaH83G+r69HNXrzhpsSN4g/3UBtvwV/A2fVVHmyDBP5vTyeAiCqv1Zq3rtYhQZeie
	 CoLIFQDcJYshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AA9C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276295365.9851.6055218592882073783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22005f69c95d0b0d1ff24e4fcae96046e7b10fbd8d486b9866e28bd1f6069074
Date: Sun, 04 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722762953
