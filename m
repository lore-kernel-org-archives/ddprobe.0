Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F02412A17F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715200343; cv=none; b=BaqanZpk6wXFlxtU6K78Pjl9deqs2t29cyoH7LQlAqJ52/w17KPjY/OF+7IjZpp0fxp4voF9qmJ0yVPFDrZ0gKz/zJzs5MvXCi/XVtDotwyNa4c2qBXG0lU7IVmxsTbYBnSS1uTVwfZo1Q0W7gwt4ZR/WYpuDB9qibjuH4kBIu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715200343; c=relaxed/simple;
	bh=HhkJD4WPZj9qSjbfm6WAPOiSsU4QFaCcZxsrb/rlm5I=;
	h=To:Subject:From:Message-Id:Date; b=egv88yMZk74rdpvOmueIROZ1C5EVNrIUEo7NubKtwRsp70ywOsMqj31YUpaZ9efQ0QgEBnAktXO2ZFZCvkDghIP0vOQoAFUJB6q/bnORLx2zMIL4nRjok7/s68tL1O9eE4FJ/xmTYnea9I0bJKUXkTsZ2ap+GmSiFztxdVxAMjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqunr+9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqunr+9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50A5C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715200342;
	bh=HhkJD4WPZj9qSjbfm6WAPOiSsU4QFaCcZxsrb/rlm5I=;
	h=To:Subject:From:Date:From;
	b=fqunr+9K0G5PRqc7fsqqlksKPan+SyUBhYA9ZvLfDWM968XEFxOds6+LRkYO5CQO/
	 ggYHY8cT6aCVyNFtfMW5IX/1ecY2BYvh6vKTbY299IlGk1hA1HnyTeBMUnnmU5euuK
	 WTEb4s3xa4Aw1WGF7qXkl3TOi1ZGD6sjBAlXpPSh6VC+8MO9ZHnFqfr2ImzU57IXbX
	 BO28b4BjFgiriNiCosrOq5AvpHOy/g1prh0tuOrpxWBwmyjv4OsvV5aDaPW3DqS/7U
	 gBgeydC6MzOLxt6GkkhmaZzZ1gJJj002O9wVEyOkgMnZeU+tEG9351OikJQ9rtdHPA
	 XenWWtxf7lZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70B3C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520034277.6265.1772592247266935978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0019f44cdf4ea14035ed5a1d333b99b8b17ee4dced366514b116f8c6ddff689
Date: Wed, 08 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715200342
