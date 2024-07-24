Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5B91CD1B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721843154; cv=none; b=etnzVe5I71C9JDx9OMAP6ts8pURaATafxYiLXDwoKuoJYnTlRsewel8ONwvYc1gM+SnglcDrdMWMW/mJJ7kx5dRbbdWhZ1041avPxQT3W05V0TwmlfJvVMTZa1cqjhaXKqRYiItvtYVPyygpZcn6YLpFkOwykr9hQ/QrRK65ANo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721843154; c=relaxed/simple;
	bh=/JHizCVhp9EqFXQ8DcaR9HS6TUhcbolsQ/XYx+JUWJA=;
	h=To:Subject:From:Message-Id:Date; b=BdsH0H7HIXX99MYoAmWAjYrWLYxdXUKdnTg+XY9afmM/A5aMctQgnpCJSHwjGRfxH5uk9VlOk8f0OlWb3SQ789J64Ao75E7g1D2mXTQeBifNeH2km712ePNRa4GboRoFaRzvVoA9f8uG50q3eua4ovP3bzjYMHyuN4vcwpVzzVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5YK2n9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5YK2n9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC274C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721843153;
	bh=/JHizCVhp9EqFXQ8DcaR9HS6TUhcbolsQ/XYx+JUWJA=;
	h=To:Subject:From:Date:From;
	b=j5YK2n9A8KZBsbhgTdk2btasG/K6mXGlX+AfKGypvO71wRqHBczi67z8K0eC3Q+6g
	 8GhKGEY3yZmdmVxv2Dgb14kZ/yhmdzZu6v2VzJrxjpIztPUvY4P4SNAjAkc2eB/uha
	 aekk6tKKX/Ph5VkrbMlCHDKbWn/WwdQtXJZLpEC9sk09DfTDNCr6ikqqSqI2A84UVo
	 +I3ZA/NsTf8y01HRVXTAJaP8qa0yyFTxzGChomHjDHI8dfS48VA1DXXsXx3Fn9AWQy
	 xIWjvYaOO4rBlPRStwe+UXOeBS7pn6sx6mvdRMC3nx4aF7KE7l0m0csxQqrhGwmeyK
	 pf0cmSATISaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C8C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184315358.17630.266137079744769073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d3e4e602167c921cb631909e1332e88d5fd8eba305bfce68d4d05574260a15
Date: Wed, 24 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721843153
