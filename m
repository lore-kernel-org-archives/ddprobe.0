Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C65249E5F0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791301835; cv=none; b=ibQnKpZ1G9cghOoRtYcNPO5G/P8sIHvIn36bCOMSVb8xt0B75KRwKMNIAcntE8n30LgTz3OZ7qqR+hI0GpLkUC7iFQk12xdTe6T2DbWR19280LhfbH2qmWW8mF8Y84AEJMtho0S0NqXDfjLvM13vV8I89oHBqpJV9CgbF4nJEM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791301835; c=relaxed/simple;
	bh=IhythVjk5vhnK3TDPETdqEvwauPMTPAtx0LYzok6Vt0=;
	h=To:Subject:From:Message-Id:Date; b=gbzfdtV9YnMGcGxW6XQLcZ9OyJeRitjR/EGm1A2/1MF51MT00lwhYWMjVoE+r22pjFk0Zr8ttbDpGW5XO9UT+QHtUMDA79K7sYORntoifY3Cn+2T28tUC/TTJ6Drx9qy2FPjS6DKqYMD/NAE5mJqapFisxh0j93FAK8+HOJ8SBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaRbZbcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaRbZbcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1197C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791301833;
	bh=IhythVjk5vhnK3TDPETdqEvwauPMTPAtx0LYzok6Vt0=;
	h=To:Subject:From:Date:From;
	b=oaRbZbclVszjQ5iVX7KvDLdg6cyoVtIEA8aHl79/Jx3w+gCm8IgeJBbR3Na2iQNYw
	 8CPuYI1F/+ZB5O7IDkIdl1M8vYWURgETNWvoBFrgrWBP2vwswEDvZ0HuZHLO7wyoFe
	 RICq7Fg/PjTw2u8qh/31XB604uEnwmGNztFzI0uYB+YQFKgCbrnFkpL+acQeMUXuQI
	 Hea4GL7l9sUyVSsNnaLz81wO9apz8gNICY97KiGwqOy0dpHFkobanhnfBcNLckv0x4
	 H8QAgfNBRovbjW2LaK8mq4RkF3Dctcv6nfD9IdFHmk6hQfB2QFYteYIGi3EpjK7EUw
	 gZ/+GsvRgTJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA962CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130183375.15365.16501420396216390015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58136c96d3dab75d48e17ffd3e1cf72fb26f9a2e3a1c16daddfb03b29c142c4b
Date: Tue, 06 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791301833
