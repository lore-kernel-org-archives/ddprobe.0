Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4730825B098
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780598074; cv=none; b=cd+lJlYDVB/Gx0keCb1f+YLWtgySJ7PAGg6UKknDcS0WiApKnYcJ/0QMuus90otTA7U6yQk6+NmfzKg9C3QUNncXrr8luF1iB34LpHZ1Hv1L0gC0ikPzhxgPyD6B6W2R+tKf71XBOQ7SoHIJsJMVi9EMqt9VqqDSY+/sCHoXLO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780598074; c=relaxed/simple;
	bh=7Mssm3Zuy1FiWwXVAYH/itlXcYoLCwqwKVV9goXrp7g=;
	h=To:Subject:From:Message-Id:Date; b=IwbayXTZZoncnuORq0VV1M7VCv8SCffft+9I4PhxFPBTQBCCcvEb1HhTa79U5t6KyIiBtCiWR5XGt/9FFWjYUXqqbUMzrOgrOgo+7y5jEprEAAm3ErcqtEg2Aq7Dy5JkZrOksz547XZbe40iGWdSLOlhwrgKdGgl6maVmVPfOR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho4jMemx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho4jMemx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65D0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780598073;
	bh=7Mssm3Zuy1FiWwXVAYH/itlXcYoLCwqwKVV9goXrp7g=;
	h=To:Subject:From:Date:From;
	b=ho4jMemxnqoTXqBaQ+/AoQT9LbIYUavwy2VS/l4epETdGJUZt2w4XGoULreExjUya
	 Bv7zwl6ld6BxzVo4hCWXu/wzWa/Iw30yKShHsEY2MByoJZyfEDJJcdoj2YGz3MDf7A
	 fJ9NhCcG4OQYikD2UiAVQVyxYebkqlreO34xCvfaAfOcilNm5kZ3lH8CdBsUZOxOPe
	 TiZGvXUjEFTw1ZG3o4r6KtxX8LcNMdIPOruPNp0PMlZISkYE4pnpLga2OCjGHFsLS3
	 ppL69aKZ82QgwFjfq1gBMx9BCTkboiXB+zjw3s4NdbQoxdkYxRf6xjt5ZSv6E7aCKs
	 UN84+jc0nLYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F6CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059807369.10237.8108285606802247890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0faf8a3218a715995e7769146eab65873dc022f62287a9096bbcc59587bab8
Date: Thu, 04 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780598073
