Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324621632DD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750613394; cv=none; b=KPuKbHS79SVJAuR34aiggzqrjmFUTMKHwD0ZebWLvQZZhQupBKVyShHGtQLaXkx5fY6esGQss6pgP/B/6RoliqPfgXy7fft42K/4tMRnsnnl23rezCA5izxpE9ihvlPib5MeTIP4IKwjYd/xcyc0sjFYJfQiAW0Uia5u+CuWPB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750613394; c=relaxed/simple;
	bh=2bkvFQ6yc9nuWRPmvN5qPWj+aS2ZMpizMOZnyYjVdTE=;
	h=To:Subject:From:Message-Id:Date; b=n8F8TIXYXjHWUoxe+pdURAFcTPab8WciRTlN/BepcHqem+5cf39+iB6grvO9irlYj08Tw9O+6R/k4NY8ZK9gcgI9b/6CFr/QiM8rufloBJUm/L/HKdt2+bK3Ao4HKwyo6T9PPWesnXn0amnQqbnEYfOanmBZS3kQjyUSKDZgJQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0V9Jq6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0V9Jq6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750613393;
	bh=2bkvFQ6yc9nuWRPmvN5qPWj+aS2ZMpizMOZnyYjVdTE=;
	h=To:Subject:From:Date:From;
	b=I0V9Jq6j/31jgiRcRcD75lYPQnRYNL/aivWCZCIHM1k51dKuJQjLWZXDvdXaT2eEs
	 /bf8nY4Gml67wEULXmcPL1jN44hnQ3FBIo0Y7QxySgkY29kHoZUVjXZZN7lOR4N0BK
	 IOJQSYt6zYuPfsncqCUkEt9MWJf3FxK1h2Y1XSlVAmWQAeVchuTWR4QwlvFrS0at9A
	 /1bMPxiGmbGW3Khsou22G1Fve5MOigyiAmOLstK00DTO2EWFKlmn4trrRpN0inC7Mr
	 FhUXQPRSGLOxMaue27yN7qGSQeeykf2GvVnDrxYfyR6nxNQSKU+1nLBl6aAwOvifLz
	 8Sq9kkV8g/EfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95582C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061339358.12841.9367926275027031362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0d45c20d6a47536c2bd4ce2a18db366c8c1e1d3b7181a4f680b9f03cbaa9b0
Date: Sun, 22 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750613393
