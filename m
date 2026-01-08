Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1598E32C33E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767906234; cv=none; b=kiTO38tx+Yb5EQrMigtWUqHRgkI0atLJp3MHwgwFzvCQO4b8o7Wk/0rXmMkgndnQly9LCYbs7jQ3MBzKGePKKuO6rHSxy7dXs8H+ESVW1SNz3g6+ppSjAjaxWGNjNKSKnAV7i2XqhCaUoD2TDnBy/AVRDK9DFq7pXrG4SKe1Z2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767906234; c=relaxed/simple;
	bh=Aa5Q3uLSuLoX+1NbTk1EReMpabcZJ71eBj2gk2R19yU=;
	h=To:Subject:From:Message-Id:Date; b=hqvmK9LTefn1PZivOitGkv3YU08liw+cdGtAtZ31mvSqCtiN0dzxUjD25YijIO+6s2nDBj5eLJ9uqmq2gxGr/EyyJ15OM7EA93bqf7QP8X+8EciLMxnEtO0q6qHVLoPL8z0KKdYdJBNz39b4rHuz1OcgWVKUF2OBhxGyav2rtNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB3mWkVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB3mWkVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA075C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767906233;
	bh=Aa5Q3uLSuLoX+1NbTk1EReMpabcZJ71eBj2gk2R19yU=;
	h=To:Subject:From:Date:From;
	b=KB3mWkVvplI/jxk7u0Fs9b2xcmYchKcsBGFjMM5dC1rM6u9Qf59kwsSLY8Tqs2+xL
	 Gf5iywJiUe+9YlMzchpKs6inQCbvXf2v+Zb+Yg0BALFYrKa2sINgkhA1MPQkCo07m8
	 BWymUub/hAI90CjO2pNudCd1D+HAQrE8XFWJVT+eUOS7Epr1PPcHH3B6xWKdpvq3l8
	 TJrYaj0+lwKFddu7qa/FnR51P9RiGtV99ESuX9A9xrWt74Kich1ymDICI6A3SwPRun
	 I42sioy9NSNCobp0n2SSy/nokVrrNc8DCaZ78QHz/TROrBPci/zoma0bb4hsocZBMt
	 XaHkvJJyqPoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1AD1D494
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790623359.31604.4939349657040081336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122c112d6f53ab4e9aa2adcdf1927f97683c528d7aee0c98ec021f554be0b544
Date: Thu, 08 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767906233
