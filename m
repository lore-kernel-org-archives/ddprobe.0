Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290D42C11E2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778552434; cv=none; b=hRBQ9jCiVg6ESp4JqPpvLrJWzFsM7h1fBpbYNsBbFh4iY1gKnHyxsKoiu104787KiecoubTZ23z5BP+y62UWJEiR+tpaHYGtToSRhor/5BIn5zhVOwakAhSvo3v02SyAxKxe9suvtSL8nwTnSktRX69GsNcifilftwb/GV2/pOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778552434; c=relaxed/simple;
	bh=FkfLIrnU7rw7QzeXS63E4ZA1+6JBq7PVH6axNXyvPVI=;
	h=To:Subject:From:Message-Id:Date; b=TTNlxo0uoC+A3j5RB6pkruCQY5x4vfp92Y7v0N45Opq/PrHyQW5V+2Ur4OCQMlyFfNA1dhVTvd+pfsMyeFU93d51uNDmsEjdJM66Ly6iwpQY3LpI0BQlUjygEjADiiSruMYStJZi1BHOLaplo1pkvfC0D7+GF20R6AaEL8dGfPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt2U/i8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt2U/i8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB91BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778552433;
	bh=FkfLIrnU7rw7QzeXS63E4ZA1+6JBq7PVH6axNXyvPVI=;
	h=To:Subject:From:Date:From;
	b=Mt2U/i8n0ZUvAq3+27Ap3/d79BPJLWfEeQljKISgKxaBGVuPV2Ew1QbxeXa06DaKP
	 DfZGdQwMDTePIU9S5qH985jBGqfSXCrCNBh96zwEr09RkHFrffYQqdIkAVl6XL8zZw
	 RvRub5aqh7hlnDHTyrvCe5NJCh3nMrTZdkxYHz3IYcCowIVsM0I7YVnYPNwhhfZQxp
	 KetGBEDzW8KZqq5aLjxF8S/Lfxh1Q4enKbdGHWVagTERtOiVUtAAX6urkazU2209lh
	 ZtnArEbmMtKsPjeziZobFuPE66FEoLC4Hjct+lFIe4WlaxSgUHxu95ghm0Lm+Qngud
	 4c6uquu+f/PFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE1DCD4846
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855243375.27210.14282863709745600689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f4c905269d66b0b95ab35757cd9dd1b5bb406c6d6e74fcd11c87336345220c
Date: Tue, 12 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778552433
