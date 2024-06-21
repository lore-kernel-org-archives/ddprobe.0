Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA6A84A32
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718998343; cv=none; b=bl4v4b5Lmw3onSXdtWm9Xz7ECnmUBcQY922u4f0/OsPQpsScNlSzDHcW7E7NiHCxiLVL1hH8bGfKhDE/4vDWgP0MhO16H4jkFmcmxehCiE8gXDrt2P9HDAC6cKd2AqFdFFZDPrVVqe4RXMGdONLJH1k5msJxwhVZWum86Q49Scw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718998343; c=relaxed/simple;
	bh=phYoEMxjwh4lfWL/kZuHr++2g04mVYgxG7qwIsPU/fA=;
	h=To:Subject:From:Message-Id:Date; b=X5p6gKM5zIxd3gAKt87UZyRrZwjTo/EsLtSqSOogZ24d4dVE4uaoJpyJx7XGd7zyjdLdG6VtCg0UA32vzIQtPVGhpWyOh9/rPfUvVelJMFVnkDzYjhQJGrl/g/SGzjp8YOZ1FJI7BqR8gz8TYl4gjwM3ztio+udtBgqc//33c0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJBeTfmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJBeTfmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB345C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718998342;
	bh=phYoEMxjwh4lfWL/kZuHr++2g04mVYgxG7qwIsPU/fA=;
	h=To:Subject:From:Date:From;
	b=eJBeTfmW91fuRnawRWebdY7XSP5y3coqcAZayj+JUHZFeeZWVMzEZShKR2pNpXfO3
	 CZOxQBw7ovCYTEtRPtBPdmyY894IHZ4PwlPPiOkMEwPncG70nWXCJi12EG5PgDEU2S
	 tFaskW/JEKkvFBTTB8HxINHr9SYdID/q8j1+n9rDizb0aJa1imP5Q15WbMiHwKiUWt
	 mOUIz59dqQSvl9GpRq+3pSu+7CL1JLMKdhrbtlVA5GpfaBepqjzEx2eGGPWRBr8O6r
	 CeunCxFwet7wQyPtc201sMf0b5C/WykCvtMD80G27psl3JJ4bGQNw42ntr4gSAvxXi
	 ehZdCAaEIMLaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0146C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899834277.15312.1618538930492770149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de868075f4f0837b989ad6dfabb5fa9033bc631b03ea03f21e03b78ba384260
Date: Fri, 21 Jun 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718998342
