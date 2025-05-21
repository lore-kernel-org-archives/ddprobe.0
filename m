Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5DB15C140
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747838394; cv=none; b=LsoYqkZGBk2YhFQr+VatWQPPxdXIqO/tmGjZ6OR9TDHncDX1JXSjzsRMgPbeFpGtegp//w0/nyWVq0oTwV4badD6ROnYQt2U1t0iPAiKdUIMmRYbUIOXBeWGiU9RWe5HpP+z+mg6q5p7YwkUvzSwiMaW6sou6yzl9LPyY5hvziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747838394; c=relaxed/simple;
	bh=nXGWDusTmUq1TQJMSF0HLadARk3QirbMFGwtut/KWO8=;
	h=To:Subject:From:Message-Id:Date; b=QNTT+ve6UAXxbko5Uz+qS8A7y398ecMF5HP35v6T7i5DLdMYbQ4mH8tN0kPIvk2CNlmCC9dqynhp1i6+o6Z7w0BOP9hlONAcqH5o2C1+cas5okvpYn903/o0RFnPH5N09sPWSw+RJzpUUwJCqkJC8sXpvYVAvjNmQ+ZLnky1NMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mz7lURhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mz7lURhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747838393;
	bh=nXGWDusTmUq1TQJMSF0HLadARk3QirbMFGwtut/KWO8=;
	h=To:Subject:From:Date:From;
	b=mz7lURhHCmDa2AJ7LdIytk7HEROHRdU1ZOftj5AplebwPtkvXaDbSpInWaFo9HLa/
	 skQtuyE43dBnCe5iY5qwMnMQnxFp2VLANLmXRXfxFKLwLmzhxRF7IX1KdE+t+mcZcf
	 Vk5BY4Nj+IXT7Ivy4O8JG2wITRUAgWF3r0uLKLjoW8h9uOWedMzVimuReiZSIxtDzP
	 osfhOmWgjBVB4wf2zWLKSXEDAHzM2zrWLrX4BFzZ4t6EGeMcx4VHB13rlMzf781EeW
	 7xJP+KrAyrzDAkUJ4lszJzkfOkxdkqeOl05ifJp1BQ5w/gZHZAZRf2mf6eBdZny40m
	 AbBVAIAja7L+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B26C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783839358.32123.8717087252225281416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206f2ac66f0db977f236db4f7daad524e93dabcd4be293e5356555c6581954e5
Date: Wed, 21 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747838393
