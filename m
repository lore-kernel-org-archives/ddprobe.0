Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472B421C178
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747576194; cv=none; b=lrEP+9exfEso8y7yNwMWzsRV+FCCT3XhpdSZMTtLfs8TisTpknjoMqjGJHVA43Znr7XHlVrk3yqHc2k79stKF9ssr1uThGSK7CmtEyOix8f8y627ca0Vcevz03i8AcVPb3OhWVuAdUTINI8k1JNz3S0QJNza0D+ilEJERrO4mgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747576194; c=relaxed/simple;
	bh=KlZ9Dm8CmppsPFF+xLw4qWBIrAeTSszZK/WExFUyFhw=;
	h=To:Subject:From:Message-Id:Date; b=scZInSsJ+NvSHcaqz4XVNULJKx4TTSqMtxqZFgcONY75LW5OI7LImPe8iGMt28GJovmMmbjdcGouso9G+Wg0IuPrHI0auBpyYFPjodAZpMiUF4vYC7SkWBTG//RZ+Ph7bSgEbbuMmYCwph+IbngQcWHC6heegQ+6sfW9zDYmSMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svocb0u1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svocb0u1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747576193;
	bh=KlZ9Dm8CmppsPFF+xLw4qWBIrAeTSszZK/WExFUyFhw=;
	h=To:Subject:From:Date:From;
	b=svocb0u1r0LQtlgON7v3Ug1i2Eazx4gaZIHjUv6Pz8oEo9O1CUwgOp2NhgnCB3iwS
	 yumN2BRrH0XCutcDBHWNvHUqK9OJzoYWtmyazF+KJGrhF02/mtQkYe2HZrbVU5tMMg
	 HXW5jZJQCzz9TJyf4/5IfC2cPcaOQt4tXzTuqNaZ/68kaK0CYWYAtw0B7bWWeNBFe+
	 Irlij5SwlUuJwFYdwCm8JncG2evOvoj5ipRlQHWKss60XoKX6JKhcEKFvsm981R6N4
	 ohJwELpeLUH+Phk0YB+/cq8gOnRWzj/mpW+Kvg5YVWh9lOesEIl9z9U3DwFtL9ERxl
	 GKG6J0EE1fHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269EC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757619357.6473.8939607337627565983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9834fbb2504ffce60172cee1ef46b9ca0f4b02f679498fc5c1bdbd5d009fab49
Date: Sun, 18 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747576193
