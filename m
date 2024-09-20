Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D3E25776
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726826154; cv=none; b=hXLdDKv7grLixHa9BTBwDDGTJ7Oqj1gY1a9QDWiI2p77YoDaL2WA1frfUsXa7BrVRUM8qXC//oTUKDcTHAFCyR3j3sbVZ+mgv53cYeEYZ/MjDVHWnRPYL5M7TtsunmKDqlRq4klm6JhBmsx1ccsK6bVZRD2F3zbgyHs9kiFFlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726826154; c=relaxed/simple;
	bh=GPIVSgltejn3oSdXZFe28f0LrYsW6Amq2+NlacuzVJY=;
	h=To:Subject:From:Message-Id:Date; b=R4+h/bZMZo6WR79V43HaJVyV1uKHGNnR73h+yivJhyHrokTWoTYY4QaKGm/C9QOA2jUyjOWF6dTdejjR/NdQWH67rn1xzAIB6ky/HAOXYSPVoNz4NjNVT7PeYNvlHkNjxk/Y9nFgAyl8kkUHfPXI66m1aVGDPXBMwAENINhOKe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb3XuNfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb3XuNfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB8C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726826153;
	bh=GPIVSgltejn3oSdXZFe28f0LrYsW6Amq2+NlacuzVJY=;
	h=To:Subject:From:Date:From;
	b=Cb3XuNfei/CGK9PAjSUf9cfObSnlE5hAF/07OPMqODRwnifdFlqBnamK/GxcL/erR
	 x85nbOuphG/N6httt/rma91rgIBkqtnmqwlon3NGRI9e1NmmNy5ZM+2+w81ow+aHLz
	 bLyhuUiuoBwUMSXVwZ9zcTGbDkfb5BnIbgwrOrvMj1yTvILp2AbTp/qaaUki7IUjD8
	 +YK1yHOqiFIgB3ohvyQKvPSS5CeYpOq2GA6EU6k3Byhri0cqQzeKcYXhGsDu4jwj5c
	 eRLIv9NWmBvxpJc1TZQT8TTZmdS3awK9o42jdsxL2KJy+aEBq0V7W6yng74Lfw382c
	 XgaqFPazf70yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BE4CE8D43
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682615365.20369.13757061964470597366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0365c090082f3df241d84991d59a9c350f82316004f66e8fd51cf7b6317c01
Date: Fri, 20 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726826153
