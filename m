Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230DF2BDC33
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759510195; cv=none; b=ZwXPgUv5mAjN9EthMFrGth+YG+hIGEjEQXwxS+lomptsMiogRdUpiIeIADCcw0jhbn+93eQSLM3390jM6711XYJnhFaiHfylFZtM9D9PqXb2u2WYatNxTnYgzz3FM/TKSfuC/ZmwZ82S5X35Chm8bf0qHnye9yerxya3t0eMy7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759510195; c=relaxed/simple;
	bh=nsF1IrBo+LDwxSGKTqxRVx+1pCrC6/dVpRVcflf88o0=;
	h=To:Subject:From:Message-Id:Date; b=jnmZTiklK/jTk/P/DayJU48kBcCWU1HswhlCEOt4cmPKarYCunlkeiHYDVchupHkF8JzF8GPcYzn+l/UMyagsoxs+JZB9xv5ohOIBbg5Iry9cPqxqatRag4Q9RlD6EN6tVbuGJVUgHb+66mw3L93N2cO8hwym0vwyVwfZFYHnyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBmfSH4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBmfSH4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E524C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759510193;
	bh=nsF1IrBo+LDwxSGKTqxRVx+1pCrC6/dVpRVcflf88o0=;
	h=To:Subject:From:Date:From;
	b=HBmfSH4gmum63MWj99wk9U3xRGCvxagMXxv1UI7eBLi066OPNgvX405AZHmzXidsT
	 LQhLBR6aZD5fgq1DIgA7nRungBvnR1jSyRb7fC5Jnz7lDVfffBVoL0JkHyj5/5BpVp
	 MpM0GtxwRmLNdGjYumracy2ibFg8zr+LmpLdC2SqDTFjXduGpQEwDj/Th8KWK42aTf
	 rn3PUEAScGjj+1oM8xBB0jbM3U9nnqug3j7h8ETs4CqNodJcgL8HsF6CGUObmtldPr
	 lQTd9/sBrAL2xPKC4OLd3OC7XkLP4qkkzodure29qgQMmHu4thkyiYTwt8isFn5GU5
	 BKADcuECZSGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F323CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951019357.12534.14453941830404507775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7125589963b9d84edeb4be0bf68ebe55b01d70a94caeae6fe5daa98caa5eaf34
Date: Fri, 03 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759510193
