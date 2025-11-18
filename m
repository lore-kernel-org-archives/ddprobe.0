Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BDA2857EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458914; cv=none; b=LhJ4w8/lIGPjI88+4icLtlRnRKAOWUwtyGzlvb8yTdcIIB9MlT/eDFyh53NWQHEFdCh2hy63SFoFj77da+PNaRnl5L6YoE70HbUlGLO76kggXAehPXMhD/Jqkk1h4qCNDgdQxaSsd8faic53GQMiMjKPA4va0LywNror3YrJTl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458914; c=relaxed/simple;
	bh=2T7cugnZlrFCrvfltQOiBDJ82WkcEKaizrJdW+pkETI=;
	h=To:Subject:From:Message-Id:Date; b=LN2/VWpyHlKb3H00sBY/cMVUMKQEWud5e4TgK1MPyfMZVyo3Q2szOgNmhRMV3pGAMKi7RYKiUgGzt4uTvIhqKceXtndAMeo5Cc9GD9YM7CaGkHdQKBTw1+JPWqVwefabHhgbYd4W+G+5McQ+9SsRwSvsZowojnCGgwrcK1uYeYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfCJo8nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfCJo8nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2F2C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763458913;
	bh=2T7cugnZlrFCrvfltQOiBDJ82WkcEKaizrJdW+pkETI=;
	h=To:Subject:From:Date:From;
	b=WfCJo8nqg+UhCYOJIXIxrINvGEolYDvOnYnc1PGD5QYEg7aDY8KWVtaYMdQ5epfM0
	 K5042q0nN3YDZ/chkDPGiAI/dXbwUtJWZZH/Xe53D4+8ZbJKQWCaG1FXCr8flZC4xU
	 fhbwv/yzAHXug9t13vAzUqx5n8LuvuSl3hByd40DbNxj2L1cu5hHC+SNHHCXAKixul
	 lgoPdiSrWmINwL+7/Y8HZKKVTiBViYlY6FppeR8PpJTDuAdherRD9oJZPA5v7RRvME
	 OG096vGMryGcNP2XO/o4i2KyYHRk1RY6FkqghUHLJmQFeJlCwnKqGxz8i0BKgfj/Cy
	 PO90eUrCfpbAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2F0CED25D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345891363.9990.7969814806158970015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b79b02d533aa4b0ce797e741426d88167f89aa8432d2029dcb17f63ea1e00ef
Date: Tue, 18 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763458913
