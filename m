Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92022A808
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753394994; cv=none; b=mMotPeNvwsc6vZs+uX7Mfy4WS/C2XkVkffzMSpkLR7WmiPKJFK2U5KtO/JpBTVLl9+qDgJAhMq5IG9cA4/43l0tVAWpZErnmRaQ7USVtr1k/QRcmKf3ByKj6UcOhfoOHduWwwHstdLh5Qxq3HA6z0Z0iPWK/BQCwSNA72Hsy1kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753394994; c=relaxed/simple;
	bh=QhjSRvCIneMwMXPiKzE7k9Ey2v+1beL95FYvm3ulk1Q=;
	h=To:Subject:From:Message-Id:Date; b=QpBkrMzszfhDZPFCXz3x1GdKlkvEkyAYemI4a4tkDymTRxrp8oVU+N/n6LsAY6bVr9j+rjTpWhS0z22+XBukd9ccqNY1xRw8RXYLn5LNPnuLixFoYhwvbZVSscKavJmiDlCsODISutXPZw+04L2+e/qbmFJX8BRTgvzCwIjDPB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7IuSULe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7IuSULe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753394993;
	bh=QhjSRvCIneMwMXPiKzE7k9Ey2v+1beL95FYvm3ulk1Q=;
	h=To:Subject:From:Date:From;
	b=k7IuSULe0iuvzDjmYxI6+N7SRHsQRKLXrZr9FGlyr28NBvX72ZIpgYUoQhhD9E2ny
	 3fAEKlWuNlfpPW9CgK5w750A3VFZFzFms6pc6/JTjE/mWxV2z3jw14GnKJp8OzXOLM
	 BBuSptXW/vGkhG44Z7B9682qFGGYGcETmb4Ugpq6zLm7gpSzi8cmG10WpN9l6QwPJ0
	 oLmG2Mr+cEuyh94SkV7h6/sijkWyuWkfNbdby7BwJpCoeHs9+cbtdBhQoLfOeJCd49
	 ggjm4g7wulJ8MoFu7okWSPUlrPsKD+7oPzx5tTm6aWiYBBaZuiMRa6byinCUdD5xLp
	 HQ4tfSRWEPeJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12EC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339499357.8290.17071529577803898211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cb0d41b5b8fe57e18cd1bb23edc9b647e5c2c6e83cfe203ac488d7ff431bb7
Date: Thu, 24 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753394993
