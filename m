Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6DE156E4
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715664143; cv=none; b=ukO3KG6hy1NEauC/w0WwYBuGRTrh+kGXDcTFFu5z/zQlRqtfeX4VD/vL5TnOYruOV/N2l5N/7pZ0VIf34K9hvSPDW9T584HOjVd340+koiPidR41RsHajShhwOedHQZcSd/FpFyg841kQleetaEgHQizpGqPmM2UbSfzqDktRMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715664143; c=relaxed/simple;
	bh=EgxUfES9F1Z0lk9xWL13PoTMo5h1ijB/HPc0tX1XxCI=;
	h=To:Subject:From:Message-Id:Date; b=kS9B3bWrSkoUImEp8y64JiXNInB6d6gXPPjVywRvXpyP3ANvve73PvvsQIKXy9tqmXGNXRmBI0xyPJJBe20/nL4Ip8rR4WapPYtzC4l6Gz02zBIklp/HX8i0Dtx6WJ0s1Vh6CY/+6aSDvJPootZKw7KLOzAIhmtrlj+llyah/IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzT6X6Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzT6X6Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C8C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715664142;
	bh=EgxUfES9F1Z0lk9xWL13PoTMo5h1ijB/HPc0tX1XxCI=;
	h=To:Subject:From:Date:From;
	b=hzT6X6Z2ta5GKiTeTnS76gIll7FWi+GBa+tGJ7kPwe7xo1Cz2ykU9xPGStq8GjvH7
	 IWM7Wh1AMjKjLKlvv8TZ9yI2Y9kWhifQ62VClOJdcsRCwmIs7v6BCecW+xRRtTaRLZ
	 WK+6p2Aj8Jd3mqg251wz8txX7RxRLFuqhBJZ89J2rjF39h0w7UcESuAe4AO3WfoBtd
	 IbbLDDXceanHmwVSjXBuFyHqaeKqbMpAmjOX0Nj9P9O+8nZuyjvPYcTEy36ocV9GC1
	 hGif3B6fqLjl9xRMHj5rvzgDFZJdMFksyKqTDprZioHn/8Ak4lhZzw6PBKeihAEbqm
	 xBkhIz9VC3hEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1622C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566414276.11260.18372140705110707216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15adb86d57a544b94fed9f4810152d5f16a53f275972bd225630f0b2d782ab36
Date: Tue, 14 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715664142
