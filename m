Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246DF33FE15
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765883034; cv=none; b=NMdnC+NG7Nr4Sn9QU/KydqCNa2nJYLHsTg2m7Uo+WGi1E9vhhlY3B3kGNTspGxQuWiWfdh+JlTFji4de7Erv25NeQcTIv08JiNEEjl6Bldb1ppi+wBRmpV3AOkakKzyxVSEsIlezpFRlMpiE33+7vF0MIpwWGJw4PtPcBcTDO2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765883034; c=relaxed/simple;
	bh=o3IKdWMnSX+WX9hkMoK0Gd6ix13k6nErlFXNYrIGtVI=;
	h=To:Subject:From:Message-Id:Date; b=oWE/cQdmfgKzt2svhdoaFNnnleanMEE9MKRQaQqrCrryGM/853tcQe2U0gwP04FarnuCCUkMySG+QtSc17tkTKXV2RUjdTWVzP3vOeYqCMm5ulzNQSQu+yHETSjKtN2rl9a6lM0yDWKQZWE2m7hsH2s6pBJJEgefa/DlyMDIss4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxWvDX8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxWvDX8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765883033;
	bh=o3IKdWMnSX+WX9hkMoK0Gd6ix13k6nErlFXNYrIGtVI=;
	h=To:Subject:From:Date:From;
	b=hxWvDX8Tz3pnGvoIgn6NfmcSPBegKk+YR5QdxLrqDiBq5wgwCChl6xHPE7A97cI4w
	 8l6RdCJOuRpGu/TDmr2IwcxtBZlWkHRRK/HQlvrftLyinJrmfOrsJ0hItW3gM0+C+I
	 Mn0m6PVkdk5XOwMS+B2HlCg3UhN5nvg5Yry7lna3nMa2sDjIyrg6ca8xijnypmziOC
	 L5i2V28+M6jYD6kqGWZARkfhRNpoFneTWNektYbsvO1nQE61JIY88Mz8GJImbuQLyo
	 rl3YfQH8Rx7lj3vVSkghxHB83lQRZKujSOzvBn7mS8asmWPR6047Edoo6ydNI32Fud
	 m0AUuUncCbnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D14D5E125
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588303358.10138.7082749005653027140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47b75119e9fe36960e8134f2e7c3650e6d81d8402178ef41bcbc557af977eff
Date: Tue, 16 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765883033
