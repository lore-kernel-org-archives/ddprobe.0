Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2426AEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749965394; cv=none; b=AAz47MVi/uMvFRiEv3XqWbWhR0BQjp02bGu1EvqyHOBFmYiFMomOn/G721dOWDUrI1kT9njdmsBk2dwhgTyDsg7GQyE6phAlPwrOEKaVPW/D52TTsB7bGHWf+pZoHm9FGSs+bF8xh51ovYjp2Hhsrhi859eFeTBjuTTTqg2dKIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749965394; c=relaxed/simple;
	bh=Ut7AHi7+9KvTDKfo/bm+e4nouJNTr4MreawGKMJXv9k=;
	h=To:Subject:From:Message-Id:Date; b=uNOt7sYczqC+mpDPY810Rc1hxWpLhU92gUUbbtPz3aarFhbE8vvRXq0/tDpD+qXLtxXxmEeD+PoQHBZ2cm6d86lIhfnhJb/ABTEHod2aWBcaxb5t94YUOeSVbpsRS3et62cZopoaCtF2HRsDh0c+nXnLKXj2Q32i52ah/JRxz5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVrlIi3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVrlIi3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749965393;
	bh=Ut7AHi7+9KvTDKfo/bm+e4nouJNTr4MreawGKMJXv9k=;
	h=To:Subject:From:Date:From;
	b=RVrlIi3NakGfs9R7ILN41npkotGcbBfH/TBzgculcf4u6Ry9mZjAwl550rdPnZPWn
	 MZK6fpzT+Ho7/D5mFJgzslkjsmJ1NhXmpIpwRT4shexhHYl+JYlUvj9Vj1konf0Phg
	 ptAmmjwYFR9pYab6wGBY1WGVQF23oQ5wNUAR3VuYuB9lu5H/2yTr7xwir3M4jhNPMn
	 2ylXFU8XqLIoAzEzMgpEh9S4mc7sc5z02f80uDUIK7SUMS+6pdqSEQ21yFCOEnfCq4
	 dVhSobFzhg+/UPMceCEF829CUSbs2nlu3Ka/RZsnsP2rMjNEQ3mWOUmVAIZ1GhgjAx
	 61t11YdKsbqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E14C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996539358.25331.1883515272221327108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f0d9a319830661c33384216e259dca8050fa6a1bf651256c2b35e655b46c94
Date: Sun, 15 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749965393
