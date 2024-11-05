Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303001D86F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730817354; cv=none; b=ajZ77CnLr7oTOiuPFXNev3bT1Ph/Gcj892vLaCvM19YQxY67hIrhp75kVWnBWHPEBDMBV5lt3+zL05iMzYS07x7V/zjvcdTkTCtTdkGbw2E23RuHYRGjkD8pA51sq/nyOfQK7ySyElasjStr0p+f7UFv5+6DcuKVVz0VQIoHnfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730817354; c=relaxed/simple;
	bh=Xn0eoANarinPuoVMwc9sVKsY5imyPEtUQXVISaddtVk=;
	h=To:Subject:From:Message-Id:Date; b=gktb80knBPMcy28t3uVXtFzrmaX95MFOsqGUYzZmw0A0yF7JYaqm4SZ12VBnneNgZQ4uwY5PDih040FLvj59XcBxmjz0WjMMPTF3JnZZ1R6yXul2uGnxk5ktyFlUVMfQyaQ0cyyoE6iIJ10Zqe06XRilKuVIG532p9pY5u9ZsRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6n3kzJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6n3kzJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA047C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730817353;
	bh=Xn0eoANarinPuoVMwc9sVKsY5imyPEtUQXVISaddtVk=;
	h=To:Subject:From:Date:From;
	b=p6n3kzJXCtjFMR+3cL4BT4EnqnEntw47SWnowwIrps3glkeZCRjdLXLOyJqKzQWBP
	 R4MkP//IteyFffG54ZGwXASZu4fvGjjZ3IM+DV7GC4NDcpzZZ3GOHayUAFLNiU1sCd
	 NKderXeNcAQUBDAi/BGhNVPRD96YpPVeEKJUM07o5Xqu8+lLY+btKoJzFTjwnb9z0b
	 VG7F7ckGKAyqXlzHqHomftAPy1k+RB9wo32F/zpivGXfyCOwpgcS5kxLVL0R8i9aBl
	 cqIJCr/Pt/wcZ00oInet+3RVCNcVuhv7RdUYDIwkr6Cjr7NZWuQfrfEW8XS2bihjE+
	 yncQi10S4pyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99724D2B931
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081735361.5112.17600591387895096829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd03459bb6ecde2b426b26b5b36ad373458655bd0d4d8063739149ffce72d77
Date: Tue, 05 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730817353
