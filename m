Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9D738DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894594; cv=none; b=lhbGB8eT/TfsdXFeeMV0/N+znIa8JEn5A6//9KrMoZxe5X8mhuW7gFAhmHu+eb/S855SSEnfpEgDGauOPkIStUwsJYwEXk9iy+X5fYMwG5FyzFR+xieZu13PUmzrQTF9cOPmz1HsJ+WRbro383ouzlrqf+RXvyt2NbJpUxT60j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894594; c=relaxed/simple;
	bh=eA1HFUcBuiPTOf2EJDYisDDxxvEsa5CpPfvuk9JA8Vk=;
	h=To:Subject:From:Message-Id:Date; b=nlQVK171zIfv/nZQskiDjY4DTAFjZKpXLeXpXOTpSwW6zkmsm+mgCQ0UofIUmrym6KG5ecdiHMbcnMEx6jv4SDjufIBJNlBDc63TFRHeF/FYaTAuMDZh6NuWdomECokm/q/FBhR61hhqkIVOMXinzQ+bDJLp36DXbV8iMdq0Dis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q75svs+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q75svs+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D05C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758894593;
	bh=eA1HFUcBuiPTOf2EJDYisDDxxvEsa5CpPfvuk9JA8Vk=;
	h=To:Subject:From:Date:From;
	b=q75svs+U4Ft0m5C21iu2gWC4PA42Lhd7Byxw3jUGMSiDs3RimCfzLoh+nNYyAGZ+s
	 dsRlm3psBCIIAjJXN3roTlmNBBBjQIJ7Hg3NU5r+ns3/4xLYlkqZLqxBIyT47BuL2z
	 fLIAlZDQW8IYHy1ESufqKVgS6grGCxsCDAfNgv+DzdOhfE/bMhF1aLWYSrL/4ypD+o
	 DdYpgTUO0M1rYo6kCieAXYY1Y1Hkf2roTwFnTJq30cSQwODrKVWidfb+bV2szCrecg
	 YNJpfdbcu4yiC3ygOdX6/rCNbrLZS6gFRTidRskDxHvGEeRPXZ77xIV5HMDgNV5Rop
	 hs/2DgPztE0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E3CCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889459360.4784.7704012350252510733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa974dedf918c01ebbd6084c2982dffd8ad1d144501661c722c462cf38ebc47c
Date: Fri, 26 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758894593
