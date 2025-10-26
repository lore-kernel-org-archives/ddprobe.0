Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367FF240604
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761509994; cv=none; b=YNeZmXFD1lK47zw+DAyRZ0nMXmiea+EBBRW0ttzcCAQ4i9zzjQorFoqRs3gDTBhLEpHV2YK4DJMecs2cfvgo5IU4vXAd4dct200kmRzbPceCKRw1Cj4/Bqfg/+nwCpII/lM+MvDxCX6L2pf3tR0cS75r87JR+abaugAowjj3My4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761509994; c=relaxed/simple;
	bh=ANk8HR30n7YlnDuOrqgNpiPFTCkAbsgkdWWhs9fncN4=;
	h=To:Subject:From:Message-Id:Date; b=F5lHWCSGtCHVdSBUP2YelJLmvmKSxTRTlO2VuiW2bXi6tnUCRuL64GaHR/HR4yXCMje9vCN7eedjhGIEzKy1aqyo0H4miGWYz1UMBB71eXCfIna9VRisLqb4O2H2bhW32gIOEXVrr80yLLzyA0t2jz9dL/kquU34mjK5SKQm8ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6jR08WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6jR08WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B176CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761509993;
	bh=ANk8HR30n7YlnDuOrqgNpiPFTCkAbsgkdWWhs9fncN4=;
	h=To:Subject:From:Date:From;
	b=d6jR08WFNrOWTQCA6uSLPdCcn6mPc6TfchA7YzYuJeYJ7pqqW/mvweNp1ia7qYC0s
	 zKzuWyVSf0nZ7LmmswWHDeZ7FzPjyqkNOu205NUj25oly5J7jN0bnwjIf5E9wrW1Zq
	 1FqgrJPKzR7XK7xOfOUkKD82yFFcKJAAknH6jQwNB3/2LRnjIui+48UOzaVEmI81pC
	 AbDZmIsCX35634I1YMn1k24JMSFvdwmdbxWpC9XM8tLUgSr/SwDqJKI5iVGonk93l1
	 OK1LtbeudLgSW8BR5sv8IuHEteaJ+1RPB6D1wuiRvNXQTWI1DaLz9ceRz67aS99TVt
	 YcpVomaP7rddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8C0CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150999363.16295.10412655870394870540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4910be8f41dc59722c44d0fbd6d5e3907773c2093f2383729990bdbef4a1e4b4
Date: Sun, 26 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761509993
