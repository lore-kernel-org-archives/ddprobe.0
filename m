Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C8524B34
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720858223; cv=none; b=OxNVlYhIYcSLHF/dCr6Xnbk8PfbCcQAwPDcK+EIKYwLyUtHu8xxR+dEhCY5bV1dirCzezyyVwih+Ji8DR683+cFjMNvifCG03Nk1GNzGuvZPlMsUNJ0pTiJlCX1cxNTYVQPvgis9eq8sJosN7iqgK9TuN4GKSKgOrw/nrAvQOHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720858223; c=relaxed/simple;
	bh=REwE0Gbl7P7t7ASjiPGEi14ZlhrUpqWy4jQyqF3YQg0=;
	h=To:Subject:From:Message-Id:Date; b=sPXELGwrevSrx5PgjJaCmhZx7EuGpx585+kbE6mS2YaI10LMSvx0aWZhjVb9MsiEj6QoBJ6YMXJvmTjALuqj2F8OXQDHCFkmnpQBTRuHO31yqbTgTvbK155NMtaQOY3SZ57HC0SQtVfXg3ZUM+MPHPVAMaVGO2ldfb3w9AOx4So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNKflc7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNKflc7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCFAC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720858222;
	bh=REwE0Gbl7P7t7ASjiPGEi14ZlhrUpqWy4jQyqF3YQg0=;
	h=To:Subject:From:Date:From;
	b=VNKflc7bnSolZZg+VrrvWu5ilkiS1UPAzLPI+5P89YZg2uAe8n4Qy3FjPk3+5uHEU
	 rTkFAOc6OJJ5Uf2MRdnFH70lmLx7SX6M9Mp49qgbe6i1vozeUAWWEcW50ICPuzHehV
	 NlfrXjJ8KA4sgKqA/LYC5oGE3o2cmW88WdDV2sSU3f7kx3mXuIHt/TvXsebagEgC1q
	 dsde3w+hgIf3orCaomPOy1q5EMyUZ4R62Skft6wiXWeHzIhJGa5Rk+BRADgwKxNDpF
	 N84tS4toINr6MeewtszjUBDpU8EUjbbCyK/RoP10xY30JnZTh8EWPhOut6lz41HkWX
	 G85fdKt0qp41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5489C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085822276.7943.4201501933431164232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d545edee42ece990d88dabde8d1b236c43f579e5e673d246db0be3867e90349
Date: Sat, 13 Jul 2024 08:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720858222
