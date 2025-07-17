Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2058E25334B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752796795; cv=none; b=EbTlvjUqb2lbWz8jUyKw08eWiJv0F/KWH/k1GF7QHfqJzHPGfII22IIFn78Hqx0ndXJI0DRS/BfL33tDVZs3aPz+KWx88jcUMRSJQVHcOWGwtYc+vUHYmhNElZ1U6u5IPqdwU79f4TEQoKz+yPJCeQpVNm7mYWfO8OjcjiJ0Kw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752796795; c=relaxed/simple;
	bh=PZ0Hb/K1tICZvcYuC3kiFVhIELfHOby7c7nLCLJByRM=;
	h=To:Subject:From:Message-Id:Date; b=Jji38br4K2ZpAY2rhq89Dg2dlwwysI7OQNL75MN2SVu3UMo2+ewLivfyCk6eSeBh2jK9xxWjvHIvwJf3tv9REDNHStZgaTHQiWOrJWxWQsjBJivO/wlYu4jYj1A9sxvZYfnsgFvJ1bP7T9CCDUKwTW9NyBh+Gs2mS4ZtdfpyQqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp/cH7T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp/cH7T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB67C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752796793;
	bh=PZ0Hb/K1tICZvcYuC3kiFVhIELfHOby7c7nLCLJByRM=;
	h=To:Subject:From:Date:From;
	b=Vp/cH7T5vXAxhpyPoUAZg/nvDhwGNI+U8iNbLxDA/qcYqS1RRZZtithXJ4lnBfqtr
	 xzYZtjrmOUCwjS1xLN6I7K4GkJ6EXTtawU0Q5LD+jkpHFwHZemv8WzIVKwja9r2PcB
	 mAyfkaeDuqwHi62rfQZ2EaPJtcCSfEJHE6yagWLAlIHRFoV6UWuRw/kivs1q37B9tW
	 1OxBhyPGwNL1tWXxg7EEAbWX0I82Kypr0bxfNHarjFZpWQ1EkgVR1bxP6qO3R5lLrr
	 n2AzWdiiULWzOhPXYta4qIhBld8o6DJtNmfWuXjo87PCq9uo218j50fQD9zk1GmJp6
	 NZXQPrV7nQRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990DCC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279679361.4735.407278610283932660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bf8ebc8ebbcfcaa17b0f346c62850934db350834dd46224ba4d8ac4f788661
Date: Thu, 17 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752796793
