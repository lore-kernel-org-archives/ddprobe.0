Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5633F46F4BE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785936034; cv=none; b=Jl3a25pJqGP2VUP19qT+C2Vp7sht0OMPlSfcAiTNp1hmLcTfbAnADDHjkjYvbElWKEMpkITUD+qkx+VTANcosrIh1uSHaF5DRodSeeuTtdw0px/B/WE6drNIJasN/jFtpP00ZkbguM+jGiGflNMH+fpNgsEWoiLBbbWWsvhgbgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785936034; c=relaxed/simple;
	bh=kvAXMcPrqK4LXXie4o/zcN+hbz7QlFktYK589ke4OLU=;
	h=To:Subject:From:Message-Id:Date; b=V+UJaPTH5JCo52iKxBe5tIwGtrf+qyOCgFH2yw1/1PuByQMxafbMDiGtg9+8PdK0dIzW0pWuHBKMTb4HpZxwSrGReM6zQ3BbVq0kXzx++2sPIJeEziUt/Br3gKZ69Z8GTrtSXaY92+tm+Ds8b4y57M57LssWc66iK5QZy6BIoBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeAIGPni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeAIGPni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67E9C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785936033;
	bh=kvAXMcPrqK4LXXie4o/zcN+hbz7QlFktYK589ke4OLU=;
	h=To:Subject:From:Date:From;
	b=QeAIGPniMUj5pJp8CdX19uO7DsNRoWkkoPS0H0nGrRhmO1t/m2YPWBziXGZe1IbC6
	 ySIOJDqvd5JMczJgdM9vPK+fQvgXI/nDWgZQmNANNDen8JYrtxt4EBxJnN5547PZCd
	 SItRto6AwNd+4MRG9UBiFgDpyP0t9JSYZf+5ZSitcSgrIDA4qQytiQMWkyh0KRRQEj
	 EnKx4jiUvpr8AgiOOVQM6WHYWkHRQwi0RKF8UYGaU/TGFB9IBakujC4kAUAaoTjR57
	 g/n1fn0HM9GLgzIkhqzqNCL0j5wb7Sac1dJyUN+0entnAi4NyyLtJjEimyrhghvDem
	 4qgJly2cQVJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D43C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593603371.1047.9719968172579554406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7692125c0f0fb5069856b8449b8f5348889026639be8033e634e76c0c547cc3
Date: Wed, 05 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785936033
