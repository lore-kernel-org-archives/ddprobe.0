Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A1D54F86
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712912363; cv=none; b=E7rVwPMS8eupu771Dnxl1w52j4qDJp7tUn7VRkTBAevk7LdVRJj9QWHyDMfjFCXOkWKNjF2IWJe0kMJaMxYls9tJtSJMCC67n/mKvlwmphshFcyzCaPbf4cBJOOtHNWPLUQHT3qNguIxrufRGifFcsZnsNu73H+iLvyVOOuPqoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712912363; c=relaxed/simple;
	bh=tFOElPg+Yf8NViSyZvfo4K6+AXRsWqVxnlA4muo5/iI=;
	h=To:Subject:From:Message-Id:Date; b=BFfmyFs0mlySyvt0GswJ5mQWhQQN4WwhpS0z8QF2AxBHNquuhs4yzIK3rP6BeJhz4LUla7q2gepy+ye/C/fgns43R4avj4TtL6tStntFoi3dHCGxW4IRmiYWTL2jfT/nuFFLRRhA1wHFLK2lPIfsjzfdSSso5YjrFlv4qVqk23k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncx6Bkqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncx6Bkqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A88C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712912362;
	bh=tFOElPg+Yf8NViSyZvfo4K6+AXRsWqVxnlA4muo5/iI=;
	h=To:Subject:From:Date:From;
	b=ncx6BkqywYs0qO/uP5c8s/6EzTRqYErHUirAh1GcisXyXQBVMgzVgtYT/Pnd+XTXM
	 Qc5rOcppkM+NtzAGXOOLiGHiAezizjG3b/4t6UqVwWHP+1weqf46GEoSb+/EUpz90U
	 B58Q7y0npPBnzb5mT/C8pouz972SiC1FO1ig9RH5JUksoQXZ0NKbMPT+b3N3Tw73JN
	 Dd90LRSuEjz/RR+Q1T4Nvf3MpcN1RDFUU3jbnDQsL1qfNVJy0sMUqsFG4F94LV7v22
	 trBuwriP0WpbskMl1IuHKpAnVWbBubqXcHLywAgr6hZasCoqd9XJiJO3bNIINr0+xr
	 fTu9sw/yPC8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C383AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291236277.16863.11023282390160608655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ab22b6a16a65eb3dcf744ae0bd308d3a73d5de2a3677f0a7d41e2b68f03182
Date: Fri, 12 Apr 2024 08:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712912362
