Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA87E4A4EF8
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791142234; cv=none; b=Do8U7JLt6mXrCdrgXvw9eO3AZ8jZUPxLgXOZwARiumJhVHPUiP7DfASrHGFhOtBs3dBm6dm4/LKAV3F6DDyL4cOi4zpWh/3j2xiA1fhdv3qqe5It533P/W5cV8tZXZeuJjh6WJhFWfbf4gzB5eshDVkTe1xrFc8p2a8KxJyv2aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791142234; c=relaxed/simple;
	bh=5VKl7DCY5YicMjZOSpX3nDGaQKtB1q1s4uxsGqQ4sME=;
	h=To:Subject:From:Message-Id:Date; b=Pe6/wWq4GyyQVXlfwoAnbxCK4U0yEAQ5+0LCJTBgHfSqAHMFYJknqCFX3Czpp5YraiXEWz1VNKweHBGluQKvoGxGbPK1daulOQ9sa8xjwzqdCzW4E8EpmaiVkkr0xOnbaMnLMe53Hi1aKtAlHDLH1Pm2egHvIRvyq/NKeR5MZ6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ3EOms2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ3EOms2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB512C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791142233;
	bh=5VKl7DCY5YicMjZOSpX3nDGaQKtB1q1s4uxsGqQ4sME=;
	h=To:Subject:From:Date:From;
	b=VJ3EOms2H9UBMhxWu0wGSQsjxO53U+AYqRe8qrtRbYcJOGRR1gwg3+KNjVrAk8+UX
	 j/t6lqHDv4+bxJ0XZ5O8g5Zm/4BTq4QEDw0cu0zTYMQNMaPyeu5m7E2lTyRJE3e3Iz
	 TSrl4fZRibTpzxlv1OUyqzLws1PKqOmOPPm4FKCOJ1rHJ2ol7H/IyN5lfX/AHqvDCp
	 1SoDaHOV/427xrcTjiT2/SlkCYdQHm/6MCoLtSEm99TxuglI+b7HdrrLQ0foB2knrE
	 +ohOaHjkv/mFtkOa427CWD5Y7nEsaY51J34maC5S7zHBZcUiKUy8sIRjKkZNXuFfKI
	 QG5Wo1NvUJjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA14CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114223369.9366.3008378969934884445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f48c1b7898a6d00132dba0ba419a1c88f7003ab6815ebbbb9d6bf01df97060b
Date: Sun, 04 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791142233
