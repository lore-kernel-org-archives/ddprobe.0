Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A85D137E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719021143; cv=none; b=QDSdH9jBxJrkdFzhZtFHKAdx51LXABxVOQ0Wq+HLGeuwyNq7NZiGW2xTzIoXx7IlZBGXewib4I2m8LWcYB/ODNNsX+xOwFlL/BvsYDuoT7vjlzIcwByfekMllIMrpVHbv1+j9P0OYwdDRD1H0SGC/hArT6yyR7qv9bGixqWjD2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719021143; c=relaxed/simple;
	bh=/dOnikCpPUV9DdXL2+AbPWDnWOdrzNG7mUGUs+okZr0=;
	h=To:Subject:From:Message-Id:Date; b=Hfpa9omAZx2xRABfUMKx5sJxqbZ9ZPjFhyqZ9RK/xeqtcC2ikd5O/sBgZLN4/zafkeTF/eZ+UVn/UBcd0Kp7zkLjg+L29hA79qu2/nopTM8v9vHXiGhCRb+O4TzoMjaDThUSh8tauoBeTbUgTnZcDXFnxajENhn9NqV8T7tory0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q018L0rK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q018L0rK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E48BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719021143;
	bh=/dOnikCpPUV9DdXL2+AbPWDnWOdrzNG7mUGUs+okZr0=;
	h=To:Subject:From:Date:From;
	b=Q018L0rKiSoDz/68eWt5i9qVjWHAm0CADck+Co+Pd/qUeW+XXOWq97J1sNREnxoYC
	 Be3Jm1g+ZJ+CjnN2YGcfbn+hdo3ZQNRbktB9U+j1ZbRNv9nw4oR7fvLeOpgDwHlkb3
	 9zk47eQAuOtVz5REzGBdZoYEAZevBlVBlqk/UGwmDBtuv0jvV7/lyWe9XimDf1XgpU
	 Lr0pD+c2lSeRiX9hyTWHuU4GKCNGRXxKo9BqWMgEZgrsgKSeBPafPJl6XA01BeIdSd
	 JDweXa7EvngzwW/tWlyKN30W+6vV/9D+Th+NHQ76RkemuRiZ7U6Kx8on56Pj1Um3cQ
	 j00w1fWlO838Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA82C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902114286.4697.11806767085279308042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cddd4f063378b1c8a6e63be07b49f1453c1acd937fdcef1f984226ea24be03
Date: Sat, 22 Jun 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719021142
