Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419BE86330
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733918154; cv=none; b=e/Rss2lfz2INobnKqYbwzl9+LeNf3UsQGWayxHgNIA0ZYl4MxAU6QCttUnJlr+PvN6qd5C8d/2vzaZYAk9YTjJrKqVPfj3d3hvVgRYyDPemZUOOO0ohxtAy+bBkk4Rm5gxNcLhrgxFub05RDfkO92YLgrQgNW4HMo5DY+ytDMMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733918154; c=relaxed/simple;
	bh=phmWZM4ioVKui4QDp0e9fWzSie5uNdqEVIs52VSZGqo=;
	h=To:Subject:From:Message-Id:Date; b=DJnqUBjXbxEEwXuHKvoY1DIp0V9MXdf4me4lIfP54RGad0fFwMUqmFjet+4NKZg3JfHI2b+S4Bu02GDrfFFwwPUjVbsuTfeD0gCoeHhF8bfNvDwhvIR4zpEY69e3Q8kS70WFqidkhPP8PdLmRYJdzvXeDl4dcNOCCAPU78jGNFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu5yJjp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu5yJjp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A40C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733918153;
	bh=phmWZM4ioVKui4QDp0e9fWzSie5uNdqEVIs52VSZGqo=;
	h=To:Subject:From:Date:From;
	b=Tu5yJjp4Ofm5FzSM1w/1FArsiSlAR9uQP5/OmB24Nck1yhwvHzsg77ooI9XKCjePc
	 uvoqq2SCGaG0V7Zf5m7BKidjrok/UIYFC3C5jKPbOkxBysFIQorrIK6mUe51rhUkUB
	 PCT3b9kF7h1jPMihJEtB6/fYNylaP7r8EV4qHTSJPwzpnA0jY0B9gJuWVZRZlQUv64
	 KjKH2KrAGFvZkyDyPRQ+YIiQLOQVxGJWHc9ItZAIUzFGenywbrZSTfJReqaIkgcehu
	 qvq4wtWYMPBLuVT9k8N9urKQ4gXIhv8kuyuXuR1MuCELEuuORpxz+28LRakmi/31j1
	 AgZ7dja5haT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BAFE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391815364.3803.7756816001489848956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4731aa041e46ef2337accb34804eae144ea01b73d9fe424e67859474171e80
Date: Wed, 11 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733918153
