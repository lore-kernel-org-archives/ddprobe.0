Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F1A8462
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741466934; cv=none; b=DS+1D0xH4ke/SWwf9Ji+Lo1rOV2v+XRrztvp/9ULLuDI981u3qCs0E5+BcJizp48IvdxhtRNx2mWpNaNGipam7BW5MLyzzXYQTf26PjB25CquAUkX4ybhBFwQF1wlUbaElV5nIrIaLgqNG/sDv81gqxAuIy6yFCwbQyoARdb8D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741466934; c=relaxed/simple;
	bh=bOMX4vEsiI/ZEKoXdacrOtzGDo2rD91CJn5C4+6qSKk=;
	h=To:Subject:From:Message-Id:Date; b=tu4eGtb24v56nAWsjC8grWq7ZWHddQhqC8bBby+z5BXOXO+/XeXjdLfQEm8bI6rcpubPBVymVCJkGQ/14NutoyzkNJBBKOZqS1GYuHnlDwXHpGOtAxOP89yF+/w7NWgmXJyluQ6rBYKLd02LypWqacBIitUtJ/J35/YPMRbslBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWycyued; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWycyued"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7588C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741466933;
	bh=bOMX4vEsiI/ZEKoXdacrOtzGDo2rD91CJn5C4+6qSKk=;
	h=To:Subject:From:Date:From;
	b=qWycyuedKun+MZqf4spYs59KIKVPNb4NV1ejZVXsOWWZLOOszaq8qEbnb4A1EX0v4
	 tphWQHVTcyhfOUUYg8IKsD/Pc1h+eRLQauqTEgJ3s/PDer4bOkRO7seYXoeSl0AMHd
	 nh0VV9dlRxaHKgx/vp3czX7w4AmgWWnkky4VS1gPrVT8YuLk+9apWdImJqPWjfG1ao
	 eXypqHyLV8Qgy9/S4W+GO74vJtjvi3xZN+YZ0BvD2S0jKFoZCh7klLRZ6rMQOe92OP
	 Bbg1Gb05UKKCNAxuXmpYqsE7ZdLzWjzFznWeclqDYElBeLr/ngGcQU+RZAV7dtZYta
	 9X9dsvLqhMJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAB9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146693363.6094.2808410776079419843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc1988c61e42de9a8968e260aabdfbe1d2706e9fb0a53296648f63946aa608b
Date: Sat, 08 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741466933
