Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2763E241CB7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764397374; cv=none; b=oR3DNTFt7/s0LdFRx7KkNlHMrATkfCoR6IXFM68UVZ3a+DaV5XGNj/jv+FghB2ptZ5QXOZ1OKyS6gl8AqjFS7GSULvaoXOEeYF6zdU2J2CujWcgQgH5dbLNT3Al9B/AHKfKhP6ol+jk57syW2SbsnSPpwwHWFT+Kv1PKmWH9er4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764397374; c=relaxed/simple;
	bh=ozDZRW69qlFr+Wo3sniAfUWHymXOffthd04sqg0N7tQ=;
	h=To:Subject:From:Message-Id:Date; b=pMvr7s+ccPRqmlzM4u9vAotj3G48ler73O/UOs1xQCV0irY1fTMc/EXHtfDKxsJyJXXeUo5la7MIk4ldGRbBOTTxBSWq6hiNo+QSjDVTv98uilna0wD2JCgKrnChKZiEjQzwG5R00esw0r4UdmqhtSPU9vTV550axyIyFmLmFEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTQBXGl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTQBXGl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764397373;
	bh=ozDZRW69qlFr+Wo3sniAfUWHymXOffthd04sqg0N7tQ=;
	h=To:Subject:From:Date:From;
	b=lTQBXGl3QGVe/NOvXqum+YBayRvpNlBleQ/XKMTQ5L7CRBriEVHEssTTbLIcLnJ5D
	 S09SUTNq2bYctF55M5G64efbINakmPQ/WFVMJwZFXu4eavRPqJykCoKNGcDIQcR9w2
	 M94F/v0WXJ4axL4ObNvCRqYt0deQUliWLrgHqBz1jarHECFUGwTmCkRFQ58pWYvMnt
	 ScUgmyF/ps7GjQQxgG8flIficlwEQBIfiXr2O7PFWPpt/diRL1UX/WDxX52IadN/69
	 dMTvDTkp91GSeZTw6s2PrGxy4OTMTKGljlA3FfNQsxyK6A+Zw9VpQ05LUwyN9EaAA4
	 KuYuY1XddKKgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9551ACFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439737359.21701.7562326346879737349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cfba18324e051e2b784c0279d233cb2936e4ed1502f1542f58d7ce5f64de5b
Date: Sat, 29 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764397373
