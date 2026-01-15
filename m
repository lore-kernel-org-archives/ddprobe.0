Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C51030F811
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768474434; cv=none; b=hInHvyfiG3T+DhfKlEgWTaoT17eb+iIo77ob4r/lvH6HKxp/MZBGlAGbErIIbtrTKiNgkeyRvyZheLAGwMY3z4aga2/bCFWBUay9nQ9lEx+ijwqVjeZN97Fa2s2zXfyJEooi2ef5GM9BkHMtnqJYF1R5w693yX/kyso8yoQCLi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768474434; c=relaxed/simple;
	bh=36xxGNa2tV4ItGlsxq5dked63Y9B813QmuXI+4k/6Qk=;
	h=To:Subject:From:Message-Id:Date; b=eFa4VAxoa0HdNZMclZm8w7OWpMyqu0hS2L9odcnjXiMflcSWFIW3HO8w2ABF4OgPx4NMe7CNcWSQB/HabJVRl2AQOdsgXPbZoi3bupkUX6bs4xksH3Z2T6dLYuBM2R0OIR0CxTLGsAqLbQFJ31uND/8thCx7tbRYX3lXA8WwUYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb/1QeyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb/1QeyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768474433;
	bh=36xxGNa2tV4ItGlsxq5dked63Y9B813QmuXI+4k/6Qk=;
	h=To:Subject:From:Date:From;
	b=Fb/1QeyXxsPL25WI5JVSw4xSveM+Tdtqcuv9JQwec1ktlsN+GbCW292klltLd/BO7
	 gYhx5CCaAJzsr5zTFaAc+QiZJED+/ifrY8NLMbyCrkDoYP85rd/Sun1Br9Xf+DAVD1
	 uJgUpjdZQveCKHuqmNinkFmX/GXj1HONwFfkj3QXIYkWUTek/0wVfFa164oC9tB+5O
	 bL12nD4ixXrfwOdTRmjpCYxFn911Ss3aq5Ox35D/7LAUT9KJxC6Tv7hfFSaLd7UxPL
	 3C6cOnDfUPsl44eEYEnfvhz20nYHhaZFZRgkOXG+ZCFNOWLtwBjkvIx5vHFiYFMBex
	 nTVxpvruAymGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D8D4116C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847443357.16121.1531055866828512264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff647003df6816faccc3f9a8a2b263cd853d7339d098052cda711c3a9597d27
Date: Thu, 15 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768474433
