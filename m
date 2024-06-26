Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0A16190C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719390203; cv=none; b=C5i9rJivrzKbT7tjBG4fUV1QV5H7aFU1livnFeDvzgLnpzM2Bfs0pxtIY2ueclWT36m8VTLT0UipDROzkNDhhOOpLhydq61klsEbbK2Krv/jTEYKxyoJOs5fl0F2RUZmT8A2f7FHUipXm8eXLI45fEHKH1eYrg1xIUXK+U6pwAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719390203; c=relaxed/simple;
	bh=i2+1a4x/re0LEzkuXu618UhEb/OWKAIb4drA47FwCYg=;
	h=To:Subject:From:Message-Id:Date; b=M7OLAFiXb1co01443GMDRrM3+4GQ5R/rONQCuRXnmlYMn9OttehSHwV1wqhnYotIuhqa0ycraZ21AN2h57GLCwjScmulm8D5rCjDI6gyq9sxH7h6BAvj34xMpsvvxnfnv1BkOoDEXE6s2HKspV2qiGIFXdYeSpuZH8NNujdhdd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSnfIeX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSnfIeX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04DAC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719390202;
	bh=i2+1a4x/re0LEzkuXu618UhEb/OWKAIb4drA47FwCYg=;
	h=To:Subject:From:Date:From;
	b=sSnfIeX7F6ipw6SuBMzWthIsNY+cOZ3xgKDgw5rWkAYdV7mZ5DPXkosdPdFBiz4VA
	 BRrTqRVAGcUfmvuiRbI8cqmkKhEzvw3GuYI5u8F3V2vuV4LlFzNujOGrVW1vvG62HM
	 F82Gzta8Os/adgFb+aUgSFjYF/X5/DCmpI+zys7VOVcYRhUbGYPvygK/sWKt5Bp1pL
	 ZgAg+B3XfNSbRTs2oTvgDK+aiyP5zfff62c1BAtIhrisdAhiMJdM6D1FlHOxHe5YOB
	 xG1dwxyV0QSIBdsKXMnorT2FTUd9Gcp20iNJTv99u4VXxCZnLZ/FQFMt6iQLmYTgfh
	 l9q3J4qpLRCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA76C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939020277.30782.17279277963909789374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac6fe71a40ee42ac36ed80f05ef84a9a1e587fd073726df9616933dfb20842b
Date: Wed, 26 Jun 2024 08:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719390202
