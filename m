Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C5028DF12
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751523594; cv=none; b=FpuPUOu3wZTHgbJ9po7rDpJSmBCYPn2KSyHSMmROV2bh2/iQghTwM75kA421VIO6tZaq1rnDQCqhWXVoV/BaOpHr5vepb80gEBjNKDJvGV7nmM+gHtBtbSVjFW8eTE6pjYU8YJQ3C9tE9QNbVOhJZI/Y+qWn9FjAIQJjfzl9O2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751523594; c=relaxed/simple;
	bh=uddvn+hr5pzfM0EYHP14ophjlhndsWWeKG1AmPH0upc=;
	h=To:Subject:From:Message-Id:Date; b=sp5mIB+p0eZp/t90Dj3dEo5udJ5ZuZL9MmpaoignfaQw9cAZyGnnGXCpjcJ20rqgsz4G0DW8WTlUvAb9NZo2RQgVTga+Wnwu3SuwdT2QJRivpy0CVKUK54AALW1xjyUmWsZY+eAj4mWsO2eX4QatzCD7TZI9LPsAhO/tbgqNnOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDKpBtSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDKpBtSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751523593;
	bh=uddvn+hr5pzfM0EYHP14ophjlhndsWWeKG1AmPH0upc=;
	h=To:Subject:From:Date:From;
	b=uDKpBtSGcWqDQWYpMaRxIqtBA9vez3JUqb1F5vRwv9Zv3tiMkyHRV1wOc4vQ79xub
	 VkWNy8fiSuM3hKVvxbLEg98t9rImNccBL0RDukwG0KxvYeopZmwJPwmR3KZwtq8x7T
	 xne8tnzEsJWG4uDObPxaJoGuK34/FY0yFardOhlD2F01XenbIyUnGovgQL/vd4t29H
	 MHvv7UNinaGoXCpUdGPNpwaktlXDCj1ypyf5d6YzgAnabT3ZmTHifZubus1gf1wr/S
	 boPzZyc/MUU0sDLfOIMiMmLlMHOj9+6LsCy965fkcLM95+gGu9qXBCmSIkZBJpnu2+
	 1dfJiPOrq4Vyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EDC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152359357.24806.16321919545739392648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fcafb9a5ac6c7592875b3047fe118aad0ac0ab2d811c78256ebc68996e4ace
Date: Thu, 03 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751523593
