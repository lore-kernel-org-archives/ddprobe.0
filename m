Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8AB19DF5F
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750497594; cv=none; b=pQ0RxnnG97TLYTr2IjFjx0u9S03vepJCARkl9/AdHFTmM/JEhTZfSuUqcIIwn97e/12GV/gkWJFQW0kGneWaHKzqCCjpTm/ZuPUEIE4Nu9Y8wtKRqHv78ihPAst8npeYoNJG6sVLKQX1Z1VESbRGbldCXGCqLOY9ATezyiJK7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750497594; c=relaxed/simple;
	bh=dSgmAzGNzV5U6KzARzFHingYS2mnEQMVblkNBRinqts=;
	h=To:Subject:From:Message-Id:Date; b=mgjQRlgd1NRYb1jnn4ocnIdGBcw/YhnPZXmTpQOK2peJaXi9y/u4DRp3JE4/xhnOiSFKceL0M6AcGolD9QhqWARYayA1DuTS/82lokxRl8R4QPuHPJytqo6Ghyj0Cej7ghGBPEJorVpp+Zcpv7aeR2EATiIGCcsGp6Ayww5p/lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUpc2qPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUpc2qPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750497593;
	bh=dSgmAzGNzV5U6KzARzFHingYS2mnEQMVblkNBRinqts=;
	h=To:Subject:From:Date:From;
	b=jUpc2qPa6WaFDQVB6Z3EotRhbWsK3QfJlnwJqNrnXd7TQ6tMMCU5ozL1ziv0g4kT1
	 qfvV1Vg2xDWctFRzxCgeZeNyJP80Kwxgugt4OqTnHiVr1mFVOeupeTQ7AJtv51wBZj
	 /7rnL0H6MgrOhF8w6Tg/ZriBzsd0P+AulqAIMPyBWDqJGu/lHNOtTwtWVjS6fkikKU
	 Bo0cP/YLLkdzEelU8JCR8YxQuEvyZP6cjNKKKIq9iieXm8S8PrbJbcXXFfwQ622sqJ
	 UIKmZIB/2Ctq6+1VQhOVNH/ZehF+8xtl8HuV5NUYvmnW5DdkxflqpmdrmPIrRBK/gj
	 NtMcKpRD0Q/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926AAC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049759357.15441.2390017020600695159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e2360164c92788486b34c982f30c6b794d53a866859addb4dd3e683fcf09d8
Date: Sat, 21 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750497593
