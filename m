Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE3F80B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754022594; cv=none; b=CZ0uv93FWRjUGo5eVG1vfyv1BsMy0pt+IqVaGr7FblGDKAfXxnIt2X665BLNm8bVcX8uvt9yG3X4NChZl2C1Qw1r+U+8/1xwzNOIM7XeQ26XEGCyolB3WeUIaQs/tqbHBdfmRl6mPfBos3VVq19/FFKKQK2oZd9VTC27qMeWFH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754022594; c=relaxed/simple;
	bh=1vZaLP6DgFSEPt/UDM2TAV5Slgl5104POVfNYoLvFLA=;
	h=To:Subject:From:Message-Id:Date; b=FdGkY0SC8A0E/ZXRkqx3pdX2MJiFWTO5F8Wx9tHGPHK8ZSSKmMWN9xaL376niOSxdBvQIhWjVcSsz35F8FqZpen6pS5xQ6upeNqB1WRrHtYziZpvK8dClLpXNWlovm10uySNfSGMjVAMu2ZdTgbXGmPjlIchDSRkGUABiImwBkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i32Ec91f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i32Ec91f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBA8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754022593;
	bh=1vZaLP6DgFSEPt/UDM2TAV5Slgl5104POVfNYoLvFLA=;
	h=To:Subject:From:Date:From;
	b=i32Ec91fO7yqpQmMOJ4p5YhT8JlwHI/wNrmmoc1clVp29gl76pQa4sasNl8w58ugb
	 Hw0Cp9So0UNf9opV/JfbBEhmb0+8QWpWfhTVpy0A9ogCb0K2EpR61ij+JyawTbGEtX
	 zljsyWKuSpfoZjx1L5JoQ8qfdQkf7103c0iZu8BOWmg6ghQJiikYgA5KUkSgTynTJY
	 uYb3QSM4iPq7q2Gw9or32e7aR4RaOwS/cOJjn+5FNooLVxTo/VvKfukJprsGba3MFW
	 /j2UC04GopyMLziKCM7n4m7LjMTpgIpwbl/pT9oU/tWxrD573F7bnDvHyoBlry1J45
	 CceMWnaKd7diw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B342C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402259360.29179.13686342205488742820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6a25ab369a4f531a4d52b651cfb237051d2bfb9a30ec1791135857316f4c4a
Date: Fri, 01 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754022593
