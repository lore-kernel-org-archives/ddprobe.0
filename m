Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3975C39FCE
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716633263; cv=none; b=feHuUF2hQrgJNfmeIV0GD4T+I8daFvmecsQbdQlB36XdiE29t7tT/VOdY3v6qYKzlVzJveCfcy8OQfyJqEkf19KZnohru9lCLXp3OagXZLaXkc0y2bQEs12wRXOgkeHiqLPA7/azkFJ0JGySz3xFPUcn/vLOp/o3nzSbj2mE9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716633263; c=relaxed/simple;
	bh=hi9t5da4S2A/Yn3Z7GjuBOmoYG7OIxg0uXnCjbny74E=;
	h=To:Subject:From:Message-Id:Date; b=bT++Zv9U/p5Xww17NZ7CBe8cSjskmZ27qdFRex6yQZkQz7S8m7JwFyxeKHV+gix4qmgbN9xsh+R0Us0lQon9Xsc6FFepw7uShK3himzr8jNrFF9hRjRYAnsJtJQv/LzTYD6qQRi/CwmdW1MXkPWgBUFBR1T5JmwhmHVaFTYKdQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPr4HKbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPr4HKbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE6C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716633262;
	bh=hi9t5da4S2A/Yn3Z7GjuBOmoYG7OIxg0uXnCjbny74E=;
	h=To:Subject:From:Date:From;
	b=kPr4HKbBRGI581eugh+x4G3h0VHphMpxzZyaX7rNXHyG2y70j/urzfMmc+F8oWFvy
	 SfZZih4BHdqR+6NYQBhcrUZRp5YnhcJ5ehYJxCqPe0NLb+yhfc2sPNphS5QCrwgpxH
	 ySuyn34Xt1N05c9ar1PzWUxQCGVM0bjuRDPEOmv6QPxtM9bPdtO8BfV2shVD3h+tdv
	 vj6EUvZuCqfEU23RlYeGVTJWQDSK74jFzFwS7m0Wu7APs51bTCcaUQ2wS9tZgUAqHE
	 8CT4b/NpkcGHLKDNXNroZ9uKyZc1wT4rsYzDU3So41s+wkHxsxZcA8vbA0c0T38UcJ
	 Ise8RJOPjLnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6E4C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663326276.15139.18172716491612220271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623c009a427bb030b423aa632c4745855f4f091c95a507b0b2bc5bcc99af7ad1
Date: Sat, 25 May 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716633262
