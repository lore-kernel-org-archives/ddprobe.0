Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675F3A953
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718030843; cv=none; b=I2Img42jR/y/GdyBGjLVnjVFAN7hfJ5/hR0jSuyBv562g4KNep0ss+v3S1jEW0D58gUlF9+KfSYQ9Cv4P4i9yBAyt+/LcC2AKDKV2MdXbJ7GwCsNo/KAKSEphz7cO3XOurpKp/CsAcIocCs4VFSvIeNo/JEM1n3pws7Vl3bTNDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718030843; c=relaxed/simple;
	bh=96goFIuqI30QFwwBY0JgLSP/dZIvzWDMF4ggsm5FjVc=;
	h=To:Subject:From:Message-Id:Date; b=F4UxjARi+io9iN076y6l8GjFDQIbtTzWOgGq8kcYhuIYYhYPTcJLhyzne90Gjj2ghqr8yy5TDGu1/0u37MIVADIXrQYQ4oxklrDeKfyY6ZpQrRvk1bhVjYSvzpuE6TRz4lDBoZ5hrxnZpnHnZR4V9SkseiCCg1J1J6cBioJcJ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqhzUgbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqhzUgbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECC5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718030842;
	bh=96goFIuqI30QFwwBY0JgLSP/dZIvzWDMF4ggsm5FjVc=;
	h=To:Subject:From:Date:From;
	b=sqhzUgbk39syv/7DT4p6Lrx8L9PZmFeB22gzx0LbWsRKwmhH7psYBzn4MFFRs789j
	 QOUV8i8j4m1+gW2oCa1LYt3pMMU7JfynA0Xr9Swlr45HjrXkrKDa4Eq7MF9Na5pFE0
	 aJQcu1A+wkicI1DGEQfi4FaKeYMPBupeVdxgqd04cKaPvfsRCSgYPT/1Q8UUd7S10P
	 h8j/wgzApERlZ1Q3LIUmgqg7PnzlqWnQ46h+2RVAOtqq5sPgg9uYUSa6skw0ySxDQo
	 9L9RCWFUikiXh00WQzA4KWhav5tKArk1yldSaEDTjG0quv76DiQaQZVAlcYbO3AU7u
	 qtfbxYoQUH5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C169AC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803084275.15218.2328558697095992403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fa29e2eab5b4bd8c7f25d664d3cc91eb7205dc4c10c9e7166091534e540071
Date: Mon, 10 Jun 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718030842
