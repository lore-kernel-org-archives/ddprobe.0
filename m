Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A57D13D530
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726170954; cv=none; b=MVd3VBhij8SRE3sLaIGn1XGTkrjOtF0qg3hH/3Fq+ukox5r5arG+LLJEFBMkskwGagtWPB37MNR1QxYERq1MlIXqvd/lm/MffgJMEm7qiwZ2fAuA5OM9CtqtGK5+U8P0rwJ4YAL+DPuiunXZXDgM8k3/5AQnQ/auINTdgaI+TlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726170954; c=relaxed/simple;
	bh=TjizKPKhe2Yyk8tk40nB84/ebL2FJoBNPblYBUqZANY=;
	h=To:Subject:From:Message-Id:Date; b=PN742lgKtBbgG/2eaIM/dqNMwDqLFeClFswwGJqwGxeRgtDRYG6Z24dYg/jWcc3Sw08zAH4z2lj2FND8vdk7iS5QUZaZ3qvPHYdVI2n3DSi82mkbyy/tCHvAdHk7jeWWGqjVycngmlFGpm6qufT7m2K/ZK/gCOlu+D0Rl0PWgDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToK4fNX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToK4fNX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE91C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726170953;
	bh=TjizKPKhe2Yyk8tk40nB84/ebL2FJoBNPblYBUqZANY=;
	h=To:Subject:From:Date:From;
	b=ToK4fNX8AhZy9z4MpXPWS7U5u6jvAH7ccn/2EEZCBqxOuzN7SpHXUNp2W8NK4KCHM
	 uQwTVvf7lCJvymLr2GBpykWaU/pA3+Hu/MzlIct8GaeVZzwSz+MjR69CC6/6O90AQG
	 +gHYr2s+y/yY4MPVw3rOn7m8HS1H/1fzpHXfuYE+8znB6x8TBql/K49OYBM088YMz6
	 5DsWd1Wo8+C0dQ0jl/XvosVtdjMVT66LvhwsUjYt2GVdSgJLG6vl4g+KZ8L7HIbxPV
	 t/Dm9Q2uPS+r46w90nE+TNxv15AQPFbhTC0AdcEsem3yqPNaQ6rPIUh2Nk7if7Z+WR
	 dByq/ylnPhZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3FEEE250
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617095359.13611.7505780689371460714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cdbfcad94094a86cf1d15c883cff3472f709347074f72bf1fdaca55bfa8a00
Date: Thu, 12 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726170953
