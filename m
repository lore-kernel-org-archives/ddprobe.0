Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51115472081
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789474834; cv=none; b=FOzXEU1lh4nLWGiPgivWBnONQxVE2Bv8yzybI/CGonYGKV/8ufmBlL+kkEnMS9TJ1TEahvejVSS9EdtXzwHCgVvMMUoUfees/zZ7tTESArsH0Wh5iu7eX4QlJ4qqkV7eAlRWRpne3ysYb2p5KZhOHKeuXHTawx3cGd8JGL2QD+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789474834; c=relaxed/simple;
	bh=olXp0F3YG6etFWB66sb0lRtQtytD4CNJtgpRlSRu/Q4=;
	h=To:Subject:From:Message-Id:Date; b=oWwU3pCBVkLqiv06gh0374np9DMFoMMXmAwuRZjIZPqtPeeaCKnhiB88Z7Uy3FigksE7diad4tJ/SRVDXORSKb97t+247hbmQm0BkAMh4RMRVQgh8OkxtIy8nbNjm/g3EEyunyL80840FvtTn1G0HCovwGzf1zkahCBOKVVmgJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TliGyFYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TliGyFYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8CFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789474833;
	bh=olXp0F3YG6etFWB66sb0lRtQtytD4CNJtgpRlSRu/Q4=;
	h=To:Subject:From:Date:From;
	b=TliGyFYKwd6YHo7aZvMeUNCH+OalX92iPXG3vS+uW67BkCo6f32W+//bwz7Kl0fvJ
	 5oLKzYzb3Qp0ZsWi52Id8Xi1GTlRXjYToOftqbIOohM8pdaXpyn7ot1wSlQ7fb5wfv
	 CJbrUdQOWDf/tZYAu4PG5wgi9+WVjBrf9LruytZzEAXSad6Dm0Ank1jGioPCjV1Nky
	 yHkuSmVAQNpssMD7suGLfmNNGZOAsdwcno20U8xaCLgRThojNniUfLhiIq5SrnSbKy
	 Adxx7gz1xa3WEcRR16dyV2mANo7khkz7yLbdoPBTopDaS4yHUsNRvQLvIsGf6D0z0u
	 fYzgLyXKthNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D1FC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947483368.12298.9176546300420715360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda4e4a0440e20429d7975186705a9b853493e0998e68d6dce8fa81f65dd73f7
Date: Tue, 15 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789474833
