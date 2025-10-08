Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3178824676C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888794; cv=none; b=rg2/KprNJq5K+uUyl1glm4vVAJdjP5otsimXN+pt/dpQTmVLMO80ViCsmXW3w2wlAJeHcYLc697oQVZaJ/HpwdjUEdL8CdA12/q4ZfL/mhgz5Hml1spkAVlkVm+uR7g5oxwg9c3CgCOdrZSfm0Mi0jaDJtqy16Vve9YlFKewTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888794; c=relaxed/simple;
	bh=Qhwcgu56i9HaXcRdBYUiTeoiUot6Jd8LHQx1KztIQo8=;
	h=To:Subject:From:Message-Id:Date; b=uBpN2p/TdZ6LeqRrbPFRDrcVH3sCBFPt+gNPV1T33cRtgaA0zdBqkzum6y+Jmj9OIhMu3Dbzz9QehKn5fbVI8TKPt8CNHpUUSoeufP+e0K935aQp/77FJkX9/Ah3jIpFUQXxghFCsskpXARDDLCRto/PGImkkTYVF5l2EwgQ47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iezHB8+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iezHB8+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759888793;
	bh=Qhwcgu56i9HaXcRdBYUiTeoiUot6Jd8LHQx1KztIQo8=;
	h=To:Subject:From:Date:From;
	b=iezHB8+mdPCtkqXJWAnYNG4dLxQSOnrBncFCAWAk2vZkp08ew8OrsIIIoBXaUXlxF
	 6npkNA11ISdV5lLFCSLeSmmQrG1RG7RcP6VM3RW2l9v1zK8+TzI0ALKfvWpQjkQ/pZ
	 /yrN8qB4f33FFh/pD27u2mzeP05XNMdMHbrsH16T0/WPPT3eW8DTcwJu//gDqZq9ao
	 ZoeXbK4ZSYOdOM9w5sr7zkseEIcoaGRGLQHP9Zsg8BwcchVo/XLiRfuGvOgJtZccye
	 9RndGIkmTzYBMcqDYn8uMEYC8kEyVtLVGgSDruxztGYLDnRyA0G3cRagnsVeBrvvRV
	 HRsKd6ZFazZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98547CCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988879359.16526.16546406566614546293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89548e326b1513d926e89c2879c6ee04dabe452a85471340678c9d5471da0a28
Date: Wed, 08 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759888793
