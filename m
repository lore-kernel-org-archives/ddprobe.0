Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B9A2D839D
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759774794; cv=none; b=P8Y+Du12oFl/ZMqEaTFSw1qBPfCU+2Kli6ZT3QwJ/9ZgZDn41MzkU8adLJbS1jzEphierT9sQng8c88raKEpiQAVqgTLa0mGyxIPdtF/jOX5HAj6dASlMUKwEi5cfhE2W1DRRI7JPtLTTtggKr9dpw9qmH0UknxuhmPVq+7BuLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759774794; c=relaxed/simple;
	bh=tSddpYvYhm6Xm3RbaQZlySoBSRGMNdkL4FxiH0E8OIU=;
	h=To:Subject:From:Message-Id:Date; b=cilpunJgWTAHy2hNkLFFY7FAYjb4NyGTRYg6L1jZ5iYcPfCvpwk9Yd+v+dWjPkA9+Ue+Jt+sfMS9QPTan8HowrIm4Vbm/YiXlv2tFHuSw9PmMUxrt0INwh/AGhFBV9gKGk+kb/d716EHJ2C6HM5PgmfK1UXjMEPFYulXeMO0Hq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqbudM4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqbudM4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BC8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759774793;
	bh=tSddpYvYhm6Xm3RbaQZlySoBSRGMNdkL4FxiH0E8OIU=;
	h=To:Subject:From:Date:From;
	b=ZqbudM4cE4dnXIqiO2rCaxwP+q89Zxanfn/CLzStqgRLa2Va8G6B7OOHHaMhgZ3PV
	 lH3uP1mqzsVSDt+fSVVglzEf938oz0jC95EfoaxMcdu9ZL1ryQAga2eRS2EaGzK6+Z
	 cJTgPrsWhrXezQaouQlAIUmTXbFGe5PfaRMAfHVOnzfuVMltNOYwuvQsnMfXKTzAWG
	 xDIqyPfYjk299aFzMphnW879Q5RrZWZNZbtmTdUgEvjLpKG5Acf9Y2hFLFLvci9SO+
	 ZP1T9HcNBtFCgOakv5uSgZFjAmD0dSQrQzveS0raTQ7hjv06rNSfCql0/30tGI4cfa
	 w8hHU9XAjsJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2054CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977479364.14004.78943860473647754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61145ad69a63dab1d228203f65fabfaf13fe475d88dd367f89b6a8f95a1542e2
Date: Mon, 06 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759774793
