Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DC326E716
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756892994; cv=none; b=mdJomof67sPpMBcDCFa/aQWxH+zA2/k27udR8xGlZYFGAtdfbIdVIcE1HFTa2aQR6az8HMQWs2sq0CN2RegVFqS6hUZdjuHWXhCzeJrqs4+WaXZzwQqIufsvEZptMp3HaSWRMHsm7FumVSC6/MJeapHlsAtoKyy8PTlBUJDjBss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756892994; c=relaxed/simple;
	bh=brSbxqmkv03Ea7JKP4tjYJuZx2lqWVkz6sKoyXqLEJs=;
	h=To:Subject:From:Message-Id:Date; b=fC0UL+dW1ivwwSVWfhdHJzQT3OV6KAPlhZXKBrvXWUIppGHn1nJfvvESbUPa2zGo0vjxdmo6t6aoZsrUfe0Qko+Arh7vpHgay6k9YfzecuPPax1y3kYpdfdvPKrMCUz2v6CfmSe/U0G9NdoiO9v8SawXKq2dNz4KrfUMKcDx9QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0UHbjv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0UHbjv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756892993;
	bh=brSbxqmkv03Ea7JKP4tjYJuZx2lqWVkz6sKoyXqLEJs=;
	h=To:Subject:From:Date:From;
	b=H0UHbjv6h8GAR3nc3MM0jP+rluAaf/wbZY1yxbc9zo43mw27oxM5h/iSDIGhr9LMs
	 VpBAmVi4YWVYugC55ZUgdBY812DgCC19U0fTLJxLo/TCTovQEzsUSc8mspKCdc7Xt3
	 a6X9uxrbQBR26hFMdh3mXxY66gBFhAMU+fE4FZNdkku8y7P7aNRpaBqtn1RPOLj3IL
	 FpK4EakEhtzLNtRFaQFJSkDuTPKcfZlTZPjbXcj3NAXxhh41ySS9g4XPRTlOHVJBga
	 vivbaN6ga5iNIlNr9wBqAudhLXiEXKDMeoq6+sA9urX/Mrzo1m4CTdZtrcDyjcyX+G
	 KomXATjl8gXCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90538CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689299358.28003.12175492577378387542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428624c0138d289ef051d1c82128cc03dcfd446d381aed3bb52a6e159f0ce01a
Date: Wed, 03 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756892993
