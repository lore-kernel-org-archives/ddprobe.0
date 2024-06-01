Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5815D4C8C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717219463; cv=none; b=mxH7YPr5Z9mI0b/2ilfB9IejZlRl5TpAKbYWfSKeXsq3u4EFZu0F840DcsWX1FQ5fPq97IN6OBNjj+7ByaI2He6GkPtPISvY8IxNaFipuqn8wfW9fhwFyAf7JvyHaAXR83N5hk2CGlHymjqn11ErrdQza/QBzMMebsh+DvU46R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717219463; c=relaxed/simple;
	bh=SaSROlUOpvUjRmA4llh8QVFnQUrGthIKhcfkYsCWQFE=;
	h=To:Subject:From:Message-Id:Date; b=YrbCbnMY/ne61W4DLHP6bNcSzZdFBJVs+fAst0mWIxzEtJNLOA8UKOjDiJ81PRk0bIduSYf003932HZOoSzxW7PO1Slzf/ExZPgmsHviEc1/4scRNVbTsgs4DryaTGFxOgB9xh63AqBCZnQVVgLEADXHeIL3UyCOfL9CpPy4lEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQdL1MEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQdL1MEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DE3EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717219463;
	bh=SaSROlUOpvUjRmA4llh8QVFnQUrGthIKhcfkYsCWQFE=;
	h=To:Subject:From:Date:From;
	b=sQdL1MEeVDGSD2oqPX0a56YLO2R88d5X8lv/Di32o74Q0kSAnE0VBjL8gep8vAIf8
	 lIQodUAzJnQqX1kogS6/ZB6jeesgok/UkkE9zzGY4jx0u7LkVwdXq+xqzEuvNqCDZj
	 +sjJPilUT7iG4wy5KKhljMov7GHq6T4pmtceCXLWBGDCCJSCK6oaNVhfygqT45l1x9
	 ondtKopPKijOF3AliU2B47U3YBKLIJkPD73wrC/ixE2W2rHO93TtDo5XoEitY3c3JL
	 CwgCShgVvLf915DMkpy/QOEe9E694l1YM3V1YZYqJ4EI7zxtQe5e8h8tBc1TrfOzFR
	 +geyw312+5P4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B2CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721946282.557.5815564645526847831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc4487dd35177530882331d3d4703216fd6bff1a7003367ef75f0a784e9c3a2
Date: Sat, 01 Jun 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717219462
