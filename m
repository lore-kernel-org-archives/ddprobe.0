Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E6F2B9A8
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483794; cv=none; b=tMeubJWle949F0onRtzkDbnlp46tvZnt53bEq0uYPt2tjcr0OM2WIpyDdEyDCfz37CdT7oG82I4mHXgmLzyLrj0FL8aFN2azweXAcH3w//mojp5jiqsxKSyLP377l55aZeSF5FthW0dg08gjVqfahQla7gIs7Skilm8QPNmtFrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483794; c=relaxed/simple;
	bh=cvMh5j1cs1zapQNn+LnvkBnWypWG6honCubABKBJRCg=;
	h=To:Subject:From:Message-Id:Date; b=lVO47P/pzOrQM19XRTvsFNIRruR60itxdPXfakkk2xhXd0VBdWL6X0ciUheDJHzCPcuK4EgzREsvVo9WhNixQ8pudPP2jPRQjunecWFXsav3fR1+Hd5kvBXJZlyLA6bG0FeIft1KzCzGzzwKQQ9tYSNjS4ht1OfLQRWUp2Uo2jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNl075B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNl075B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2685C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756483793;
	bh=cvMh5j1cs1zapQNn+LnvkBnWypWG6honCubABKBJRCg=;
	h=To:Subject:From:Date:From;
	b=pNl075B83UhTjXna/KM8+93ilv8D+GWB9PXBZ05+9kxNwKVNx0uXe5mBVkQ2M9vq0
	 7wutDV941vE0d526T15NTf4ekup3bwvXq/MWwJFFXf9NYxMDJgENUkpritvRKiwOMN
	 ty56rTvTO5ybqY6GA0rWelJ3nCdn32tzNq+FH/t+lv2p0CZmcXFr7tluI6hr7JFMci
	 rVRh+3BUt9OvkVUklj1HMGJqbTD/P51ANQLY6Nbm1L5GhLbAr+5R1T51oJphO2ABok
	 Au5BhqsGOwplacl1kUBT5NZZ7N86I1Qcai6V68+RJpRm1vfmpJ3kvGgsMcPLO3EYBG
	 CXkM5pabEowaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AFCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648379357.2040.15562375978619879349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34aa0edfdb63391b18e5ed6fd08802869c80283867fec628b70dc4c471e16804
Date: Fri, 29 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756483793
