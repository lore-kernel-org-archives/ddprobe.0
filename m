Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359E35BAF0
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745493594; cv=none; b=fimjzBvIF4bEUC6U6SHHa1lFkj9Ddd2YyfUHsfFlXCj09TsHuVJRRkoZfN7MNXbYr6bNq666YNisEAvTyQ7aGJxn7MWgK3T8ODX3+lqoLQDRbkbwkWmeu4aFzcYB6H0WVS8B9wlCRqpHIExxttuYibJkOi3IQ/nBOhdRuE6/xQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745493594; c=relaxed/simple;
	bh=eBMqyaUxeKR5y6xKwdXtjuFPXfTFUhwmGzaI/bYyfY8=;
	h=To:Subject:From:Message-Id:Date; b=rkSBB1HyYo+BEPmjZOFiuCTk0XZwUxzxpUcuLVVAb4s1W+hX4iSAkmqrkeDE9LJVQGPAwspFn3b5ioMuOxWw3FrUyhnlUfzkkn65ZrD1ddUtgo8lOU54LjCtEBnMu7yVkIZg989E5PNUiE1wRSm27ZtddOvuz0e0irllK+GBU4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEKBGBjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEKBGBjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD85C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745493593;
	bh=eBMqyaUxeKR5y6xKwdXtjuFPXfTFUhwmGzaI/bYyfY8=;
	h=To:Subject:From:Date:From;
	b=nEKBGBjwWmYI1lpBCIun92cOZBAEAg2m9QB/oLpaJ9nM57VQPOWVgZ6QsklvTx7y3
	 EhaAoOUJPd+/1MxP5IwC4vt3j90bAU+zHEtMGI3oiny4XyomDowL2OS60eMIwjNf17
	 2V9wiAouwt3Kf3vyMSLlxSYr+e0pB4Oup8t9TjXqniwcHZVYS/+C19GCm/ybqxF363
	 Ik+3LwpChXasvmlVbwOPpkyPxDwfN9l7RPJZN5GsuMTPveoFSP8f+UfIYkAirx6hcY
	 TI4FDnokI7nFjdJn3HEq6zbfWK8e6hwnOIsKqB3eOKtkejgSgKXTc6Dj5Z9oi2p5Tw
	 8RRWQUEJBO56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549359357.3410.15382809650786481387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cca7ed8d3869f1e58042866310fa2aeeccca61ea304b291be4c52d8cbe39e87
Date: Thu, 24 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745493593
