Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5A12F5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738198554; cv=none; b=C2U6H7Zj502zz1ivrmfUlSOurv32nTl7/CcR0ZwLRLycbKVcqPgwwqk4XMKIMlUIeDAfQBeHjNNEMncAfmFADdsEq/9pd0EQxDiNjixHShd/gk6BugHQusD4Yt+YRBYkL1a7Fi4F1pnoKEv9KNWlYwjZ956bzwkl1pKRObBD0ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738198554; c=relaxed/simple;
	bh=BzTsTAIXsV6ipx5I/UhlesyZ17zV6mypbe3+DkLNc5k=;
	h=To:Subject:From:Message-Id:Date; b=azzx1y4jfoBhMJ5CNOk6t3mEwAV4eHNsm1A8EVJm7TVxTB//2nUXgGvoK2ougRD1TpDvUpEvjtuasRGkd2alsOwHfKzVSTe9R5m0uxsjNl8jCiLmDTX+fAniA29LwxrD4MY6zN3Vt+DRjDWvi0ll8FF0VdFOHe232U1T+34CaYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQsQWN1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQsQWN1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C170FC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738198553;
	bh=BzTsTAIXsV6ipx5I/UhlesyZ17zV6mypbe3+DkLNc5k=;
	h=To:Subject:From:Date:From;
	b=EQsQWN1Zpfij2ieGZthfOZVlxG+s2rymls8wFu893s8i77SBj3/nlUEyX6rZ4RQDG
	 FcSEt7By255BIaut6o3J/qSon+iqU+LqTtu2ED3ym7YqwwoeUyU7ywDeTwnUAIUWv2
	 TN9Pgphc4sYZV4Skt+XqUmXWXlORzbFRu+T+NzsqN+2suDXwRHXYJXwGIaljjKzgN+
	 ZY9+kWzYdZoWhQXNUgnTNM/VGFSc/gzexvW4NWwi4aauoSyiCYVXHv7Rs1TeRh8P1F
	 gDJ0EOZSjUgZ2wW4upF8jMx6EQFTYFYC8ENdQwwxOcxkumZhNvbIEDChQeYdK0bGpJ
	 zMYcfsuomG5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE21C0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173819855366.12355.3231984178322812502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d072ebec97aad35d92390ad21e13cd16f3480f61f344f447569549b8b49a79
Date: Thu, 30 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738198553
