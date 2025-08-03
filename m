Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294D5639
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754224195; cv=none; b=hqThawPNbRhfeBBvkK6y+2hVUULNSSRTpWiLHkbJkGIGB7aaGSOeWrH++uX/tk3P7wuUDf/zY80IH3J0UOf8/4rLxDJ5ftqFBPLisXVeoi+Rombk84KMIeniRlrywKRZ2XmpeaLhCFCYzVBajZ5xOUFQEJWtxvmm8/FzLa/eeE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754224195; c=relaxed/simple;
	bh=9XN3TRuhAwaVUD2V0ccDSMTZtsnL0lc2BDPHVQv3Bng=;
	h=To:Subject:From:Message-Id:Date; b=ErokrCOlwWsHeRM98vG4KqJFR7pIp7Toez7gBSI1nDWpuBMHU8j/I308oqtYwUPvp6AoPixbHJg8Wo3K8n9Cax90k4H82qq2pFuZBsVUKrd2vEc5OvqidCCCTlhoLIjP5k7x2pZDmUNL6ltNqnjyWvlSDyUqEMQr419xSB2ie34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdTpu3ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdTpu3ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2956C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754224193;
	bh=9XN3TRuhAwaVUD2V0ccDSMTZtsnL0lc2BDPHVQv3Bng=;
	h=To:Subject:From:Date:From;
	b=WdTpu3ikGkUN50BbXzA8NQ9ysI0RNJ0VwsYEA32mhNadJUZtcN7B15AzLKV4Y9vJe
	 PVamedDE4M0DT9hR3JP5TyCNMMYbaTe3b+RmqJ2scxs/rIJwXLPtbuTQRyGjpcPKzz
	 ATI/9AQ1WjlsBkLJVo+8a/DKPUWyVajMJOEKXVQz3HNQIe3Gpyaj+a8++VQ1j/3lVB
	 bM3+YtxkkcCGTP6f7NQm5/sx6pwk8DyTGkzQs4dSrkSLwsVaTGSaz5JKZ0oWvL7G+S
	 n7ZjwuKRswWYS9+M6t/ZVhNIY0FVb+vVmw5yBcdOHQ64D17BzHwX6HUDAuIypHn+HX
	 OgElkWDnMAfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C2C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422419357.20000.16631523959378368139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b581180a24f1e61ab2ae29ee0ef325328fba6f0fd3e4eea19f1c74771aaea27
Date: Sun, 03 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754224193
