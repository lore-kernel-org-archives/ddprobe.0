Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58ED328271
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765283575; cv=none; b=eaApuZJQaBYOQrAT7/Ll7LtUsMGHHD0BmEQ5JoAYiMRodPPuAQyM6EilXoEztYkSfhbMXlvcBc+P6KIfmRsfzxoOsxSpTr6Cd/TqDjTyfowdvVbU8BaeIbMcCJkPYztpGWsBYpdjj1u2MOqocmIh9667QsDdUvpwgeLFzJFrbVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765283575; c=relaxed/simple;
	bh=pVD+XP/Wv6NmVTE97JvQmghRY7+/K4OmjZ6P0Ab7ASg=;
	h=To:Subject:From:Message-Id:Date; b=PxiajJLX4vbOTdQEo4bkqK291b7HPYMQcspDyKVjIvTlfIz5Q4LEoCCUHXjVGf8f2ZfHOG/C/JHC2CuqkvbX1Q5e+X2WadY4ISmU4BA3+gAmhnL1ifjPSNAfi7H/eiFo1SowiO3ihj1e67aT1T9ZEe+SdPwZ2zEJiJ3nz3dpzQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk7F45tR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk7F45tR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A738FC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765283573;
	bh=pVD+XP/Wv6NmVTE97JvQmghRY7+/K4OmjZ6P0Ab7ASg=;
	h=To:Subject:From:Date:From;
	b=Tk7F45tRF+/C2W9cEE5ErC1+b7HdxFNo1SpgroFTz5xe8ukAjlv/ockk5FhJbz5kq
	 xnG290y/NQl2Wflvioq6vKS9JsiZZYqWGejUNbmcM7ajECDiO3xCsCTyeIUhgYrU9s
	 DBjgGWbwRX6Cn70UpllqFeWDpdczFBHKhovDBD+yEDyd9mjAcD6ZgXO4ec+rG5hi1a
	 ikQO9/+vZnxwrJDTngtYMpQza2eqG53vbUbMNtUnX65CeG3cxGudZOaocUbK0Ydcka
	 EEBRBvNbBnXsmVXaxU69F8d5OKuDk3K/bTRrZDt/6UNk1xDmv5HfyhbWm8Puzf1omx
	 +PstE+ph9tcEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BABD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528357358.21885.10614990119242161503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793688a62828773b9c4b1a266f0ab21cb5eae82f0e7921140674e55a72393cff
Date: Tue, 09 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765283573
