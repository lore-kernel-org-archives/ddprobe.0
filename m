Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C06D352031
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787385634; cv=none; b=I81GKEQ+TlrhEmkZwnv6C04CQysspUQd8H/MZicBdVxSltogbPGMFV4f7UFI0lL4b3bnMwVclaXa0x+EZzPKKsM9ZqQSprRcMLqfwljwFqjVz3Oen2f4ZJfUCHHVvYCtaH97kM9m1mlXtLEO0aO1M0a0iLM58Aqzf/oU46UK4Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787385634; c=relaxed/simple;
	bh=AQzVO7TQYG1A43AAy4RAPoJZD9hMGI8fgQIeQmcvW2k=;
	h=To:Subject:From:Message-Id:Date; b=PMHQ+SlnUCS9IOl8eV5jHvPBK3f3FBK63+VuX0wR6WNOCIcP/OdQ8flGmedukwFc6wU0Pm1sxq3ZC0tog+TTDFQlGNI/GDnjkejT9B122lib/trV3FAdvsT8S8FDASpeer7NpLQ7/MuncLg4mFHVTn2vUYgBNxRk40vfzlZhsaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULriY5lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULriY5lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7179C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787385633;
	bh=AQzVO7TQYG1A43AAy4RAPoJZD9hMGI8fgQIeQmcvW2k=;
	h=To:Subject:From:Date:From;
	b=ULriY5lmYrkcu+esjwSjxlIIfNvaLSuUCu1WEIORU5PHKJSaVN8QG2bXBYgVqFoFz
	 A61cZR5k2PTVe/5orBOpevcLEcuEoO00pEq/qpQVf+FB60j95mVQZd0taB5C1PnXRg
	 PmUnr6+OgtqQSV1cLPIVYiWNzIuLtorKZtsOT4rmaNggLMWYRsccvh7GhTpeNc1L9b
	 prb085dG54yqmsn+x0kz9hIIgGENKrmLyFFGpKI/8n79LBDrF7k31O/rE1m6eRg8C+
	 dSYQKY5tCbGO6ATDvalerXSKOt9Hi/f8FGQQ0PyVgLtMn6E0o61/2y4g+m2HFbOjFM
	 SgLMn3Mqz3WJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D4DC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738563371.5159.7126813542613815563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fc688ca89c6e7ae90298c5d98402c2b86ebd13befab19839a25a696aa48c7b
Date: Sat, 22 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787385633
