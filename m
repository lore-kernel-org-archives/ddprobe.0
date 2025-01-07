Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1532D208D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736273154; cv=none; b=fh5Zct2/P7ShIP3Fb3TxGCSBy8fD+2H+5vNyn9y4p0HHIQNnGzluHytYIChuZ58QR6gn18XvedSHD1dSO/sHD5/JShDMXreoIZ+A40UBAkdRV/1MXSIu2c3KWwLPRyFtoy+/4gIXEQn91NZgq8Uwa1RXbJUkVwy4Xp9DXIgCdGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736273154; c=relaxed/simple;
	bh=58qanoysHK88+RalWvBrMB9WyVO7SpcdkwJSL932ApA=;
	h=To:Subject:From:Message-Id:Date; b=mgU/obNmHMrFZFMnMmxmnMggS6uKDPI+hAehn9k0D7deyUI9rqBlgNhutfxzxMB0dPTiULRDqsnhdrfrFrqnKZlDPdEiN8yjfmR8T+DzUhSmf9SllwkwVD0uIP1wxgW0ab3mZQm8ohIxdcBSed1+/w7eE0tvehviDQZJIL/Weks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcsE64qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcsE64qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736273153;
	bh=58qanoysHK88+RalWvBrMB9WyVO7SpcdkwJSL932ApA=;
	h=To:Subject:From:Date:From;
	b=pcsE64qJ/TzUX8FnTvU6TOSlubyJF2RoHn5+J4N3Ft0T31JSygrfFxFTfIJVgTk3L
	 51t7KyhKuyNiOFyO3vAy9rbfhaeR2VaMJL/vsd1RPIwAWWSi2qxcarOadCRFZMnBvf
	 1+65ll/X0XUQj0Jh/v8yxA8xuJYRshI59lGrd7sJqgnfIs0Ji3ukEC4oXOInXBdlW3
	 L/EAp/FDq9hJDqdM6oubG4bznpGope9RECGg7ODWmSDspu1UR7sG2ui7OVx7kapsNe
	 cm0jFuAFGZty/6jvTlwvyHVd2og08qaAGKL+VuJkFySWCX7orKMp9RZK2z1CAxry1v
	 HFZeB3u9dJCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EDE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627315358.3338.2968336097421178169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ff2f5b534d979595f6e2bea4eaff8b931c38d307a668d09834e11b908a6e9b
Date: Tue, 07 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736273153
