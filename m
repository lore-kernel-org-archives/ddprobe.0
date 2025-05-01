Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348641E5718
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746072595; cv=none; b=WosvRqznFlnFwZ6ASpJ7bizGXxVHkTf4VqbdfL+fkGBi7PRduv/Ppu7azOMh17DoYy3qX2LPGiXQpLM1FXrOK96+Chlru8wdyWtI2REUnWjxitzSm8cMtiBaaTnEeoeS7JM+qahRsP/N27RoQvozIe4tAifvJe1I20FLip7bQog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746072595; c=relaxed/simple;
	bh=ul1HmlY7l6ZtoeWwq8PQAvJ5gnR/qWEXpmIFomDCB1g=;
	h=To:Subject:From:Message-Id:Date; b=X2hDY5PANHK0gqVPI6Tw9zgb7zINtcVIekP1b68LN4FQyZ2R5XjGKz/vWWSLVj8rmNTuW/r2X5jszik5wOC44T+hx9y/LTUM/Z+4JAfr81Uh7zHOiMqbZ2V9lhy9qwPC4PpAGpVFSPMfFi0367uwFTZGDGkgzZvyoYUIUHRC3A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3yd9wiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3yd9wiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2593C4CEEA
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746072593;
	bh=ul1HmlY7l6ZtoeWwq8PQAvJ5gnR/qWEXpmIFomDCB1g=;
	h=To:Subject:From:Date:From;
	b=s3yd9wiOLJZmqVtdbM7Aek6Wh1ZlGOlIdNLNOdrba7Ybg+gShsVpb1rKqbiVpN4Jz
	 l/+n4jnh1l5XVe8OTGC6T3qjsJ/LYIdK49t2pTiScNuGFcUQLz6xHq6Rp89z56kp8n
	 vcCCwtrub0Rcf8EuFvIpdqolNSGLUZM/FvoCog6uyeNDer3hxGmhJwvcFEY7F5q+4v
	 dfqv9Xe7w+CtC2akaFvElDR1wXd2+D06mLgHvHy9WeYYQE3XyTnbaAp4dc8OeQLRsP
	 rsL3s56xAVowfosbVQ+Ew4obamFoQO63HBBgOrYH/hZLQL4gI8q9y1gKmRSjBTvunR
	 8AivbNNSi0QUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF2C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607259357.25005.8376198662706797200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc32610109afbdf2182c2ec136aba6bf86dae24667bed53a3dc76b739f871bfb
Date: Thu, 01 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746072593
