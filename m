Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED3E239E7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769450633; cv=none; b=nX0UL7XUU+vaR7Cvso7KkACfr00L2He+1LqojEW0OVCVosb5HP/ggckIqXPyXzgu5bwB0HouN/7aaj78MZchN6kBxQKSq23/5ajZQYX6dKFFJhv6vbaWJDe+LCX4CTgTXL17FlqXFAgifzXzJyjjoOeXxUjuojIMS2JA/kJ7h0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769450633; c=relaxed/simple;
	bh=72vP3lG/geXgmEDIkTQoTtpApffoo3HCkiNDpoHnw2M=;
	h=To:Subject:From:Message-Id:Date; b=mBJ9pWA1TEwCVP99a5tXKZv3tXZSgbg9+3qi3nUHCTWtt9TC+2dLoMVQIrVK9u7gXLMn8eK7d4OckSWp+XQLyxr0zRVa98r0jEDs3+rZNRYM8/aDI/hvOlWEL4QxxlnLON0g2RWp8USgaW4aEq/KqHyicirNEJ9o7t7Lo8lYT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akYq3WB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akYq3WB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769450633;
	bh=72vP3lG/geXgmEDIkTQoTtpApffoo3HCkiNDpoHnw2M=;
	h=To:Subject:From:Date:From;
	b=akYq3WB4uAd5AIo+2ODp4qiitv1NJCWSMxyBtSbl74bO7FGjTanCLfaTEUOku6n7I
	 lXj2IpORXvkXrs5tPi11B+zwWeQtcFckuRzlg7p9B6ADfZN95TKFQMPH5loMbA0aJe
	 k1t1j+fa12d2TmsPQCP/fEqIxUVjQI27eARoyE51zSyUJZPP3sJQoZdkrzI6+t0ICN
	 zJUCWiSiSgBx0aTIFOos2Q6x2FcNQOmdvdBF4mnPvfYVk2vPIMTLrt/4jlsLxw+6TX
	 au7nDOCC6U20RL+cCS2iNDqRGTA2cHfqtf1rH3GaC3vcJjTsP25Lna5pCHAhe89AP6
	 +NzPJnKkzT/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E937D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945063363.25544.4984186411144797671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a815ef784b004823d07b3dc210c27cae3e054c7e99b80d660de94066075b6b8
Date: Mon, 26 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769450633
