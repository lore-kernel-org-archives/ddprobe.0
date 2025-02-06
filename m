Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36780235340
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738859754; cv=none; b=cPxRFKR4EYZSAy/Kqn+EXMIZ9hwaCz01k5zjILIYwa+/npub9LSSqfhxaoWbTcipTPtpql9vB194Oo3pggN1gi9zcpMR3YRgi6I8CzaI+N7BXdEYjks8+U9bR6YAAeStmJq6dR7TQN2Y8FVUg87+t+PlrJfD4AguzLn7FvvUBO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738859754; c=relaxed/simple;
	bh=WT6vvSu60Y9qiuCkHFMWd0FVAcRv+X3U0U7+tBvfVwI=;
	h=To:Subject:From:Message-Id:Date; b=YSRq5EUBbIQpFdqsqFNn2cJN+dQn2zZqOHvKqRBIIZ+k42BqzEzjcWo7w6iOwkw4dGHICYpks5jDq3R7esodeJtBR2tDZGjWZDPvt2c8InhXfTNeT5fWsR+RYQOT7l+e2sZWUxEtCBBzeycw7eopijGil9fWq+540xGQDrRxoL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdPjUr78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdPjUr78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738859753;
	bh=WT6vvSu60Y9qiuCkHFMWd0FVAcRv+X3U0U7+tBvfVwI=;
	h=To:Subject:From:Date:From;
	b=YdPjUr78bYKnJ2zeUjEPbOGfgLFT2XRNf1RbVFfYjHJXenfUdfpy5GCALtlNph9n4
	 V+c4rbntXt80FN1pnB2k4ShZkA9b7joecISA0eCZKsdXz+yNhEPPmXZKSeNsHFuSAd
	 z9IN8264Gp4O8DXuTVDolOsFqhadkmAyK7cJ06waOtbB1J8paN9s9Zx6iRMgK6SaL/
	 QOTQrtsCUoLcL1yK4q3+x+8vOZ0Cv02DpBdrrhIOAthqZl8Xmy9o24fureDNavqe5D
	 DR86OLwIGdN6V98mzTWOWTYs64yNyhci3IzlypaBCk4xOPC1g6eazrFxJyFqZKVcHu
	 QgzS1hIs/stGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D1C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885975359.27138.7382197754345634292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789e58738ea3527e7f065e46e0f71e3624bc1eccf4b0a8b746d37a41260bc98c
Date: Thu, 06 Feb 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738859753
