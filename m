Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153EE3770B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753516794; cv=none; b=oyqs6taitEf8F4mLknLeKZoJ7wmuar1LDKQjGXj/+n+/xiV++lM0woRr5MlOLLmPVeFr79lcJH/sl9THZpPKh5xGfzC/+KwblTSKdeCAdJtq8X5W3ZKKvmPTLEpsIhhIXokAi2ZnPBchX7afD8R9sh1l1YakGFH7jKq4trbrdHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753516794; c=relaxed/simple;
	bh=RIkk8RIOGztQ3brjSlozJnfnVKqvELYaA+KTEJM+qno=;
	h=To:Subject:From:Message-Id:Date; b=Xt547lJ+CskLxv6LwDL9k6aPR0MOkdPq6McMmCJ4QCfzYjUbMbTzGm7f4NunPBKn//LlIUbp42Hhir//U7X2bjtoMHIc/0cZftkb54tKDAaalscDShaxzNiSOOfTmhiR77nyra1VCFr0TXvLW9TSixLovSVcLtsaMi7E64+2Njo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/gUwuag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/gUwuag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3316C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753516793;
	bh=RIkk8RIOGztQ3brjSlozJnfnVKqvELYaA+KTEJM+qno=;
	h=To:Subject:From:Date:From;
	b=Z/gUwuag/MgGKQJf0ZO7wroC1z4epXXCKOvNXp53UPxjQU7cWGLUoaSGjL3Vjdmqd
	 HunFtPPsukXNILCNdgLZxRkAIk54vCBP96PbQQD3We9bf9RME4nTu4KEEQeeE9Vuix
	 oJ2W8Kn4tX88GNcQQC5kXVK4LA3eM+PNoiOGId3mIWZ2/F1yChAy8OfZq8mxxzLR8Y
	 iLVh0nDtGHkAo2oTRReoCjpcnIDxyKyBHHzPksbvQWq43ID+BC9Qy90cnxPiVWC5MV
	 I5uTn9rx2NK02n+SvlDrg4wfkFeOmfNhgH3YuJVXY5lMDtCgLd/Sr0+j49foZ9IA1t
	 F0rjRcCNhMe2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1356C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351679363.27083.5740517748538741754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c090dd9f99376e3fa87d930ee5d56151f41b9cca3b1584b54e043fd087258f
Date: Sat, 26 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753516793
