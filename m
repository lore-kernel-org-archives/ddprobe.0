Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2913F156677
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754232594; cv=none; b=qpUP3QAf0pda2fBPagxzCFr8Z0TvuLrN9/zuHjMqKl6xxsMcpNQu0V45qzoIicHyFs4XTSWQguP6l7SJJr7vWMPBNYvgAayvrA5clW6eOnWg0sf5tCa8BxKvkC4J4p9zDxrl/WfU4RuEX95PVfTpPRbEc+yGxuVmqCHTkSC1Fsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754232594; c=relaxed/simple;
	bh=10bi9xjAqbqbByGsc3fTJwRaKfgMNoHRF+Se9MzgI5Q=;
	h=To:Subject:From:Message-Id:Date; b=EgPhJJ2DuUkwppZ5JC7PeKgr4gUWumtCEYuSLUV++UJOCTCCk30IWhO7IZOnFGBb1I0p8/e1ni8TLqf5cpFsbiPWN6nM7hig4xK6SSEzZyoDKP0KaSj/DsW4t95ELCdiE0HNXc7CDI4pJLc16zc+Nn+SrpCva6hYWLQnby7L7RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daOcUbh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daOcUbh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754232593;
	bh=10bi9xjAqbqbByGsc3fTJwRaKfgMNoHRF+Se9MzgI5Q=;
	h=To:Subject:From:Date:From;
	b=daOcUbh9ntCbs0aqaeNih2VPZJ0RJAglv0CKBBq8nG5vyzA1L01a+JvJz6fudjERz
	 TP5CfLJkeiSB5vpnZzyqd+kdeNbU59zRZDW2ALip2RIFS5mo9Xw0wis9KlEos+wd4j
	 85B6TaFi7JqUD8satsYV323BBgUIZdBlVho16NMGZN0/fKqp/iouqQ+K+kHGTer859
	 pRE/Kyn+KYP01FTs8wxqB6yzA024DpCkaQt82DgNlNBtlHKwAj0TtP0KFwvzX/TWUV
	 9ZzfoCcWD76lhkNi8TVcnXnuv4ezv/2sXOLsf3mzsvFKFQK/0hycib0uk/qp+7ESWz
	 +3Qy7Rm6N7IcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92501C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423259358.574.4929126693988544604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e6e5e5a8cba015a2f6bfac97403374603fd3a1cd1052ed1b06b38476c009da
Date: Sun, 03 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754232593
