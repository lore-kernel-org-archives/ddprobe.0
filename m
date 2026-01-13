Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE213933F3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313633; cv=none; b=YIIbAo2Z6pcXHvNaSYhxFA4k9P8ugR5CsFAcyasiud82um+l+whHafBO0ON/twRx/DlXSGKALVpUjMTYRPcjRUfVUnyj1VSPLsBPjYron0o7P9hro3RCWO+a/bMXAXpD0ByWMTXb956Hss6p5pGTv6074FPBTi0NPGIw4EPszBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313633; c=relaxed/simple;
	bh=ZP0Yg4k2o+FmLBnPtdVpSY+AIZpLeytYSeXsBjLRs0M=;
	h=To:Subject:From:Message-Id:Date; b=rPugncarzFaFowo5dZIH3TMjofwjdIVBreVw2XruyWexw3/zGzd8ciEWUS4RDUjJ/5ybvR3Dqb0PY5x7XRivnAE3BdZN7d4n7AiDJEjcMxizsQCOCrB6uDdiqE5Fs+DdHgwQaPZFlKPf0duCj+eWNtsrJY7d+iC1xzY8sbp/DFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxlfMD0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxlfMD0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1429C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768313633;
	bh=ZP0Yg4k2o+FmLBnPtdVpSY+AIZpLeytYSeXsBjLRs0M=;
	h=To:Subject:From:Date:From;
	b=lxlfMD0luaJ07AosvuG07kN2XMIeczWSQYwFNeI/5XhQBj+2CFLUTNn6h02470QzL
	 9ugjQs5cdTjISNcttGMVpDMnQn+SBBbFd7OmntUJOCDrKROVy4hJ56BvvraOHEHUOd
	 3Gtt55ryrw0DoNDzXeNZ+6YRQXpMCf6yQIqcqzZd400RERm5worAVceK9/Q/q3yIYo
	 t4d35wvwZhV2gzydGowHOs+xF3O84izIf4Zarz6VCPl93SAJaAUNESyagkuiS7Hmp3
	 nePx5VcmmHkRnb8ttF1aAGj1HX8MInCtxxR7GqFBt3ZQ6LTtYEL8kYD5jgPA/RieAj
	 1WfZJz722+juA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A1D2D10A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831363358.4993.1913546283460996307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75999b9a45716f0f947edfea853e2e8ca793412f2366b62dd16248f727a95bd6
Date: Tue, 13 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768313633
