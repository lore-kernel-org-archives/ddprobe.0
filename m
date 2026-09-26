Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586AF3002AB
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790401834; cv=none; b=Lap29YIJ8hBYWic4nDcjH0q0dhwD361RPCxuxS6CTcJ3eRob751k3Q38TTEe6CqnIJAQU27KzL2qpPWKejDQFmcmEc8sT5dfj3Uwyd8fKuPGIODCwWYH593vWjDUWxH0mwy4wAUpWr5MdZPoKRX1sSW1m3vJnAo82bqxqmjdzv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790401834; c=relaxed/simple;
	bh=iOWDPLVvL20mPikzAvHS7JOyGRzUQ+D7TqT9+RRaAVg=;
	h=To:Subject:From:Message-Id:Date; b=SwkV9n+jae9QryvDo7sZSIBjsTuW8wOQkbJcTNHrcyeWSAgLo2XjZOTFwIvQCzR1UpYexEXGQ8mLHxnS73YVAMXFN5DjkbP2MC1VllmMEV7FwkMSTeZccNMo+OgTT0hslmGm3j8vNw/0Xty+tSPuSql8lIP1o4a6ilZNFK9RAgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epETjUe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epETjUe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CEAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790401833;
	bh=iOWDPLVvL20mPikzAvHS7JOyGRzUQ+D7TqT9+RRaAVg=;
	h=To:Subject:From:Date:From;
	b=epETjUe+g025ZVaCAkWiNvfTX6sKIukz17gucjeJ0TmCnBGS96ZqqjfvQ7q6+JcuS
	 bxjoQL2VWqjxjjoDbVMnmRTbBySvSeldDybC8r7lhnuiM8hestw7euiMc+DycIXPI0
	 nT5ZtqnbSHi2OenoezdScXFFmjBuBdvG1oQo5Cpe4mmoDaT2a1w+SyT+j2GArusjLE
	 S7xNrczhySaU8EL45xTd5Y7Q7Z0s3jarLtFNsqs4dRfsoMRzE0otKpin8adS7sPC4T
	 Jd/Swouq6sWjqmJDvO4wbhuQ73QU0kqhvEGWnkMObe5aL3ScTo/zbllPeiv1f39wk9
	 DD83RWY8tpn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B1C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040183369.18177.3518410896319681199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fb8fb1bc2ca8bcefc9d285f889b39dcab44067d0e643420ef3947587dfebfa
Date: Sat, 26 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790401833
