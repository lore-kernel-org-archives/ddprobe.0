Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC4315B102
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721834754; cv=none; b=BY18I2G9qS4LcXgaOX7SdUkwfN5nNP7XsPgenFhuYokAYErjJaHVsjO0T+76msoLbU/kD4lIJr7hwMcJd+VpXt+d4YLhah8OXxd/Kbp2F5jqv9rL8FVUD20GbmaChv4+d7LjXGGH69/twbyxSK85BUu2b0hbdvwMdc6apBXCDTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721834754; c=relaxed/simple;
	bh=thkmCLFgGgex2v3KfwxxJBq1nd5g/+geer+T6+onJL8=;
	h=To:Subject:From:Message-Id:Date; b=GM5lpCLfhQY1RTDQ2QgQcUeWsp8Q3Z60arBfvZ4MuupOJ9YH4ibJpR3RZRbO2OfXhNzETDu7hy3mLMg9apvdM7wNMh2BrUetuHjqwfuMuZRDXy0FLJNPpeUTImISzDrWAisnwx9/5R6TLXBKH7y7nGDBmPO3N19MPG3KwmzGd7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diJRWEC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diJRWEC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A0C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721834753;
	bh=thkmCLFgGgex2v3KfwxxJBq1nd5g/+geer+T6+onJL8=;
	h=To:Subject:From:Date:From;
	b=diJRWEC7dNSqvQdDvngZ57RknBgmGnMEjBb7zWddToLcMmhrMPf54crqKntsEkSbF
	 1yXS0ep1KCR7SL/EuDL4/HwFWzKTLUcSAaqbd1LcskpNk5RSfg221fh+9UznQFUn8p
	 mpB2Vh2J/dNJkE0u5o7o4EQrc2WRfVZL+ZP6nvpN1NGYGtUsStBtstxy2iz9SOZeXH
	 jhFxu5xJWqRne3cR5NbHdlWYmltEjxNVxOO5WRaHr9qRZudzDaEmI9bhA01GnIQ0DU
	 e6Tam5xDUUYIYOBE+N1k1jL8sqYu5cPcn5v00fyJjJuHSlHxefYvvDUwv1EsKAJNS1
	 2M+fUtUbDcQIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A07C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172183475361.13967.10266280238407655655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01c37584fd64aae9757727d78eab93e84bd5629292b3657ded3c594fae5e4ce
Date: Wed, 24 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721834753
