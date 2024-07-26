Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA57F8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721967954; cv=none; b=H0WH+VWO+XtKks5RE20k2IpiPmxVw2aYEHOjNtGeaUydOLZTeuoB4xXCcBovpL0WvMGsk1ksodKvcqmuEmRozBwIDsnReEKFGEQG7GHAty5YdNA26ncPeby8eDDxph6041srWdZg27Q8oFM9FAP/wYcRKz/GyyCbfp3zw2T4a78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721967954; c=relaxed/simple;
	bh=w9lReNLAAx9u4Lo733q6GvWCKnV3yHZLIXZfoM7cYto=;
	h=To:Subject:From:Message-Id:Date; b=CCuycYvHuVmnEx8oOxcuRHdQA8FiGS9l+o9HqMkEc5o2B30PBqm85iA/W3SOzuP5M2/eB/U3tt+7AiahvAZTVaTioXe+9/tzzur8o1l+9+hi/76vNDe/SfIjUHrinyFMi+BbjMNpVt7Jjsygi9WHFVniHD5G/R6MqzPBGxMyv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngS7jpts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngS7jpts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE02C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721967953;
	bh=w9lReNLAAx9u4Lo733q6GvWCKnV3yHZLIXZfoM7cYto=;
	h=To:Subject:From:Date:From;
	b=ngS7jpts2nPQS6oD8UWWBlIuMDPDlHIAXzzDD6a4hXj9IAEsX0/oVVkFX6/WljrU9
	 RLHI4Q08cPoKCZlkPGBbKb6FedqfvdrDXUbHgy86YvTw2NpN8ALCYMmBxAjfA8Xdtz
	 cpX06rhLBIXgO2jYmInVVNYvHSKWLhetIj/veav2KmRF/TeMLerRCAbH6TmgeL9FfQ
	 7/wqIGAb/e9+LCVrLV1QhL8iKg2OGOXA2a16tIhNnoupOkSmxp1PyX82TXg1j3ADQW
	 d3lCL+bGTJ6uQQ/8w4lyIY5P0axst4gay8MJwEh6+voYm2nL7h122n48RNKtexE+C/
	 dsAHRQo/XVMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3831C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196795362.5625.5486122865349795966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4c8a300665cb3028c1991ff45e0b6c668a28b4f38ba94daff6e333b7720d08
Date: Fri, 26 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721967953
