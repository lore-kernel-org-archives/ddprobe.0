Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9319FA86
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726768554; cv=none; b=p9hHSaxDDQX4y4FhIOro4aICf1G5dDDwqIiHZnZ1DhXRr+ZZz07UvzNzmsIuidchqX5UuSl1Myo+NUFf8vlzS76LNDA2zzs1b7GA1PgAFvU7yyUSPqs7vsydPtau3g5X3ZUq5U+zXgm5m7MEjZ6sMbWahUbpYfsq+yylYPQgFLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726768554; c=relaxed/simple;
	bh=qyiBqC1uofZtsmrgQcDIb188+EVGaIaIQcJGERNHE9s=;
	h=To:Subject:From:Message-Id:Date; b=OSCXNWlu12YULmke1CNwbAL/805H7MeBRVW27YVnSns+HvgOgqRuZnBKFaH6yG4jKKRKsQJGF+KuHtDPBNQgFzdSGFKXJwTQodoOisk0HOb/AdX6oiuOXBCKHErLRAUSFOiHDZokCUH3ePi6Jy5EJYR0NWi8z3pLoesJWtGeVP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1H6SZyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1H6SZyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13D9C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726768553;
	bh=qyiBqC1uofZtsmrgQcDIb188+EVGaIaIQcJGERNHE9s=;
	h=To:Subject:From:Date:From;
	b=c1H6SZyu6nZVFAcakZKB6x5oksL1kim3WFuUsn88WNcltSeH1jt8YMu2ZF0IijHrR
	 3Sr2Kf++xBCD/yQlbNZ+fMCT5nihVuDKCG1ofGwYikac1Np09dDbfPwGJdWyLm3vJb
	 e0Inm0PhckH3YClPZCp1jWj+AO8ehhqNP3SqRA+nwNAzqrjQd1SOSAi7ERcn4W7CzJ
	 ByPtzaXb327/ZcB29F0k8o+YHLtYcHwt+psFSORPcErCOVKgVpzvtti5+MHIziO9yZ
	 t715p+WKXoPRe8IE0mhWUrULNuVvxAujqt7YxzVRok3q6CQGXC/N7kWeV6s9M7s30k
	 9EoG31tLZ8ILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C92ECF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676855362.22304.17443675621651859575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6367bca5636e15ef897b85f88108bb0d2f28de6d6d0862e2c78ea96349aee60b
Date: Thu, 19 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726768553
