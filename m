Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3201549625
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728225354; cv=none; b=tDGlp0H0gCYgxfHqGeAxwUxx3dFDEtirh6m87e/GAvwm3clPVHcAGiiXJRGcgyb1d4+hN0bMnMqQ9Yvvj3JjEP1XRsOA/weRprDfOOF1Q+TNXAXKvjQIXdm7HuQEJIFa4Tcq71vqBsjpH7uzb2hPnKOZF1n2wPRS52cM4MOMI+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728225354; c=relaxed/simple;
	bh=PkvfAt+IFOBuuJqZCm2h6UfUtMXARKn8L8faU2AI6m4=;
	h=To:Subject:From:Message-Id:Date; b=fvcTTBJCOQFfxIu6yaAWcismyfXtdYH8vflVu3vm9UvbKZulcAnoMzxips7frJJVRm7xdePwui2ewiwj0NP2OuZNoEqwmCnFZXhH1LuHostXzNJztdsrLCcMsaISOnOSDvSyt08CytxMX9uVUv+fenMAquzAdz1YO5h964kzNtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stWsfcJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stWsfcJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF7BC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728225353;
	bh=PkvfAt+IFOBuuJqZCm2h6UfUtMXARKn8L8faU2AI6m4=;
	h=To:Subject:From:Date:From;
	b=stWsfcJa9eSN3rPkQGAXhabBTYMqYVGG9sP/NCEpl6veBb69AyO9RdSLe0Neg7sUA
	 5OU05KzLJHkBRUMqR4qKtRwpaVZ8/NBTiYcApIFgvIMyrOZP/UAyRYEFIkFDTfPFzV
	 JMh4fmq/DiY2HjBvfwp3OGNCoYiQn9Ck3AwV6wV3bVrc43MQSKp5dKxQKGtv4tSqkC
	 UlrplEF6+GOVNGZMgLhN9NZF6WQ3gCzGqpDp0Y8bR44e+9DAqAFtaElRe3Ka8wzr7V
	 3q+d3lgrDsjUR4Y9MdwACnjgkVei2yMUor5Ykj/zZTQz+4bjus9D15cOdO4sVrKqxo
	 h8fpiiYFF/tMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666ACFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822535358.19586.14270785491267798692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6610e3350e697b10f42647840bf7a9c409bfb34bbc633c9813b2d665be6f09
Date: Sun, 06 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728225353
