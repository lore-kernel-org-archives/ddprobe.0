Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A5231CB4
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728785754; cv=none; b=PkVfChnmcIm8ASXLAkySICiGV+tj5DxVTZaiAIMJVIrskuMZyF7aI8gDrcVf6SpMYtdgYGVUk3oP8ndRpStuyNGIX+fXoEpAVWFx/7iFXLaG/2ZwUw1QCGX3p7zs8x6JGN57SdYgDKYhg2fO6Cqq8u0s5cqhmMvOh3l8Jnk4/MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728785754; c=relaxed/simple;
	bh=dqIgFIYXqx8hnfoBLcakuYHhCNa9EdHBFDfuRd5sXEI=;
	h=To:Subject:From:Message-Id:Date; b=WJLnZMIKPRci42mVmHSrSEkbB6Mp9iQyzdEcLUDbsKN4EJYWdTYerRz9HBuDbLjIFh+RnscvlhdiNEcpKqiHPQpsBjHqukMnZRgpnE9nwjk+8W9sfEaSBIJqOHy0aFB80pq5NPXumWky3pvhuPCyIkHhb7HByDjqbAKhKgPSiN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzsIiOTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzsIiOTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC151C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728785753;
	bh=dqIgFIYXqx8hnfoBLcakuYHhCNa9EdHBFDfuRd5sXEI=;
	h=To:Subject:From:Date:From;
	b=XzsIiOTud6nGHSirJdFMx7L3UD+fR70FeYcrlCqdXnD7U1MVxA3dqhuWL1fpQK9CM
	 JQCCB4sMXuYlEvmkgOUhxuPK0ktM45oogc09PhrNSRKi+2u/rsiHKx+EHN+XHJXH+C
	 MmBD05CVInsdyhwFn+1P0dF3w2DB6e+riISRWDXuYuCiEygogrknC8iMk01JBpQIRw
	 CQ8NVcxFJKzwCRt5kVb/pmEadbwoyhnwS6OuumzTUTm9mw+1jEx9qZl0TC2fOP14cw
	 2fJQ+G7yzGTBD7vXYzyDRmoWxEPQm7bHNn3b5/lIcbJx8F5z5ngdE0pPUFlZYg/J6P
	 wGfiEgnM/6VrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44C9CF258F
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878575364.14055.9526770843612703379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dcf76b289061b19844df743cbcaeaa8b8e94d9dac5c6692b8a70741cfff061
Date: Sun, 13 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728785753
