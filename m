Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FBA135A53
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758395994; cv=none; b=Ds+tfk0Oy0qc23lpFkzj19cfHLd77Ua5nZa2MU29CpkZzoeGyL0ANiRwVZvNmHF7rW88Rmj3Y1oyTu3kG9vJAmpZXL4op+A0nVvkerVjcPGFLqwAYwm2n27SP47VWy5GqVgX4tLKMuWC/WlfREcw+zHA+GIjYL0QV6nUCCxsEOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758395994; c=relaxed/simple;
	bh=pBII6mhoeRW8FLT6Iv8JVPT83ahkS2ZiJLIQWAlwt2A=;
	h=To:Subject:From:Message-Id:Date; b=qvw9xpaJmdBgrcvEIerqmLpZ/yu9v5qKGpFjycwUOJn6HUbJ4V6T2EA/11VBtwBwsvtaYuEpM9PRpMQSzr6+IG23COkP2C2kW8F2dmPB9v49y1vKu1GnLKAWarEdl3TwbUKtV0vjLhL/+5mfK8l3rEvAabJVvmhVniPDbOhCRKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP5vVa3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP5vVa3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758395993;
	bh=pBII6mhoeRW8FLT6Iv8JVPT83ahkS2ZiJLIQWAlwt2A=;
	h=To:Subject:From:Date:From;
	b=UP5vVa3C8/q7QwjFyqV7MFTZuTJYvAwMA/EQKROBkoZObhGChyppRRBVLkF6GXRYi
	 UIwsrASjFDwsecqtb66q5RPIqFIElk+xTa4zmgQZCb7HPg7ezyWQbW1kHYt1O11rqO
	 JGTzev8wfsIOgTZKiTGOcNdtu1NfexGmGZ3xzHBLSQfcY85+DPqVAIGXnTw89zCFgr
	 1tgYFIuVAoXIbkSfrW0JDLNt1vxaQbHPdRup6bdtCr/9s+WhOQ7hg/wEw4RJXJJidt
	 UPbYR/G/ylanXUrWgNzS9iLSJ6di9Wm7JzBc+qUbCtY2VVVSDAljHyHhwGyO1Jbj23
	 1ibjXP2oqA4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E2CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839599357.7006.14150982260200726401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6957b2551e7638b4d8ee4eb4c4aec5bc984d26a10016b4b8951e63b453eb4dfe
Date: Sat, 20 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758395993
