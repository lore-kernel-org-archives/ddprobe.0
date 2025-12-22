Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C6242D72
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766433234; cv=none; b=FfaSaIkN+n32Q60FhQOGXyJ+vtpz7b3jNiV8+/PjDPrHpY8VYPd8LALLVACMqtslJckjbiQWyH1XQuL+rD3CKIj6F0mEhNItqxQL4zdyBHBGnq5zO65TAF/fU0V/q1T5YOKz61FaTi/kt203R3qNDeUZMK8uWFMp7u1bLKm6KXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766433234; c=relaxed/simple;
	bh=3XusOiNARdywylMV+rj03ldniU1fbW8ZJKstmGiYYBw=;
	h=To:Subject:From:Message-Id:Date; b=Tkt7DIxycURbCJ6z1cF9VLzwabFdwsQsbVy2xWZvKvysv0pHlIMjkIH0GetWeCDrq2Hf3GpUpefem5jcXifhxsqrZ5mWVTxjK76aq4wAWH9a4Mui1JQeahR/8b6FCnJsZBnpJCUlXZJe/iLTSGxYElcqkefzWTGJbpz08AMzy+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9KtG7za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9KtG7za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766433233;
	bh=3XusOiNARdywylMV+rj03ldniU1fbW8ZJKstmGiYYBw=;
	h=To:Subject:From:Date:From;
	b=i9KtG7zavucKQ26dVDg4UFfIooL8lDvRhs2ZmtnBMYhdbN2XiZzkO0gu5Df0Rl3nq
	 ISQFrfgRrQmMMlHl0nr06FdxubvBkHoFq2WT+ePWn1vVo0pmV89h77dqrUg3iAxdqv
	 2L+7oui+kjIq5qNvYLUCviCQYTWvWuFQncwbrp/xNDQ8b4x1/8zemM2+WHCD+vFCe2
	 yARNYN7I2CnOSxO+8jSyC0Y9sXxfUzjjzL5fS6S/K5Jz5xz7Zu9jEcO0ziJNDsDYQB
	 gRNS2aS1bH0mEp7WnRJbGWlS3xttXzaM5t0hRa3ST4xJoQgUvDrgiTUL69cmkgxeEN
	 jusxNaCFpu4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90155E69165
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643323358.8772.4028462970797096846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d41ac40c5e151b824f4680fec83d29bccbe756fffdf8a8642269290b3d81e4
Date: Mon, 22 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766433233
