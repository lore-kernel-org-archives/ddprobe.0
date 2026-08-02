Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D1C8EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785639034; cv=none; b=T1etaq4JC3eE0xtjL/+xF7PL3boEICmGMa+eIo52UJn4uaegTFF5Hqby4LHYdG3kgXAe0WIwJ3BcSq14Kf+goBOBRCidU3xamKDwFSx5AiU3QDxQsfe75Kb3W5bDoRQKE4zrKvocpa2ZspQPOQg30Lt28AteFDRsHcEIdNrKci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785639034; c=relaxed/simple;
	bh=LLOsKtE6Ys5Hcd5AWOhsF41A3jE6mWxFPqMuZa7GTgs=;
	h=To:Subject:From:Message-Id:Date; b=KHON6WNaFrDs+1AKM+N8PZZkelAzMAvnBvFh/N4aKXAN6wKt6ZVwzHFaXkHVNQdiYgvpIlLpWr4Mtp62OOED3ggrOgzbUF8ZSoVhfgZ7rlA6R1k6GwIRxAbgie/URck0B3/mEZFV0VKzTV+4nTi+zUdXf+wgNN/hgCFqlwsyVtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB7xl5/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB7xl5/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90DCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785639033;
	bh=LLOsKtE6Ys5Hcd5AWOhsF41A3jE6mWxFPqMuZa7GTgs=;
	h=To:Subject:From:Date:From;
	b=lB7xl5/tDSAvtZHvowPSTxWEBuMdpF1NytR1byQ3I086roQMOmoKbvxluslZ5D4mL
	 BJHSMU3WHHsOnr/tV7nHoDU5Y3jfg7oAaXt+8R8mj5gdoLMsjvQds5yeSnuhMw8/DY
	 DdlRfX36d5bFd1bCI3Ayu7ERwoxveh9mSLkNy05fmgsvS7bq8ofV0Kpvd0AcpVJ8OE
	 DgYuPBkTUcFh28QUlV/cfUfpSygbcR1akuwBIYefpOvwY2Qy02ZRw3bVOr0kP8NvcL
	 sx7B2jSaRK9Dew/JxAJTa0vFKOhapRTOuWoBRS5Tf6nKeZbInnWK3S3Urbpej9LfF9
	 QlUz2uqXQMTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0103C5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563903368.13630.8854923486277205800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafee0945a20bb4a76a06106427ffa562bf94c3225c4e3cc214afdf2ee070a0e
Date: Sun, 02 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785639033
