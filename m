Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A8D1A9F93
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760498394; cv=none; b=MnogX9YxHa4aF8dFNlAKaFxzDWJHCMmZCz5M1BsupIMlcocyRSe8J7bM0iRB+V58E++J/tydzRKv5ioVSKpsTVVqSP6I7i7o9YjbewLjP2SWrSrRO7bjpPFLOwnEVaUlFlmLepAwFsqDIKhOdSkFRoagTrCbOE0kKLFrdbL4YfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760498394; c=relaxed/simple;
	bh=ag3ClNmQWIohnJvbbxVcN1K8N/e3/PkQ8R30zyPryOg=;
	h=To:Subject:From:Message-Id:Date; b=uWqUIx6Q43M2nTnsK/n1NrHXVRL569uNpJG9Rr7w/RNdboJRgiyGgpwZxy/NRRSo31LW6AjMGceMBMlL1I0+LG5deW/wVQ0U7BoPnbRjOEWH4thKMUq9hHFH5Eewvf9+/bdqwpysLMj036Rtlixfwqvpl1itclg3fTYzpkmqC24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmEOxQ0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmEOxQ0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760498393;
	bh=ag3ClNmQWIohnJvbbxVcN1K8N/e3/PkQ8R30zyPryOg=;
	h=To:Subject:From:Date:From;
	b=WmEOxQ0iusEiZyePM/+PF+hL56/JNuPV7RhwyMnLRBovkbqew36IDVrisxUs30OG/
	 1uPd9mYUnZaOx41EMgLtcThA9MjuvlyzAHO903bEDaA/fZOu11WXIxWxMMjnRhfZOT
	 Leoak6fLz7LaDKWkEUiJZN0kv2dy2yenEgNGZua22vNTLI1IAvj1WC/4qtDtH9YNoy
	 fxoQliZtJOk3kG57gv8wSvDzBemQAXIV/d2GfIjO9YMxElZ3pxyOWwBQ42EZSrGhQl
	 4g3EOnDYqnEB27XPnEIcJF5CdUMIxDtX0wZmuDeyt4bvHMMbHtmmXGCrZzOzCme79c
	 l2nqSWwjcqYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC5CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049839357.31314.17430169604354410186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68809076e7fdd628f7ee0a747676de7ee73b77691861b881e9cc407fe81419fe
Date: Wed, 15 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760498393
