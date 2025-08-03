Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F29CA6F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754191194; cv=none; b=uVQ03XVRLqZheU5d0fqFxs+OOc6LlYGg6Ie+Yxr2oRj8FY+UDkltDfU7wGKWoea/3DiBBeUL/5um5EYe+pEfGA7NruCRLeGi6SLG3yl6APll+cL4WCMu72hLlkoZf/367RRjnn1lpOEn+Q1qNXDkrFA5cnAAzYgSOJyuqa9xEsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754191194; c=relaxed/simple;
	bh=Es69lQJeguOkxdA6limAYhbtRcpOF/jhqiG+skaARFs=;
	h=To:Subject:From:Message-Id:Date; b=rhj+ZoypLiEGXPkgYLrNpD5bxf67VF7pPHhzWwMTyoh9m8kcLAhOgoeMR0J59tIUb0itmCyKLYe7fE1vKNEyfi+2VSmsu4cEswa0IjJUnBBFEh3IQUtPhw25UmxgWFj9vTUSaiZSMQizQ845SKtGICMTHAsLkHrsCprEsgQG0OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuNRF6Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuNRF6Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754191193;
	bh=Es69lQJeguOkxdA6limAYhbtRcpOF/jhqiG+skaARFs=;
	h=To:Subject:From:Date:From;
	b=UuNRF6AfZ3wZW877eep5+ANPLVw3/gx4w5XQgVaqtEhVS48y0nWRoTI/FvwIfOznQ
	 6Gt3BBrqB9JsghrPNLvdYMlBIpR+un9q0AVmpSmSY3E0Cc0rFJIRMSLCOJgeiZOOIw
	 k/QyQ3tFt+LLuc5vN9TQgQuj+HVanwHAUJ09nQXkiRSJtZJN5xiH3jX5prft0kYizv
	 x00heSHIjv0Tqjnd9B4ks3OWNyX2ZIcAE+7/nKB/aiiyILPgKleJkcOggGXnSUX9i+
	 5eHV4a0B1ryxxrWwh8879F7drKnMp0gHWCK80kG23dapuHlbJydtyU/mDhE9NqNK2U
	 Our1Aj+8wjSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B8C87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419119357.22829.9199872829210950896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596fecad94b20f39c1e7e907925448a90c143ee1f64023ee11f77120029f97ea
Date: Sun, 03 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754191193
