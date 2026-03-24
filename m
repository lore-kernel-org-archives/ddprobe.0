Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481E02E54A3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774335894; cv=none; b=Zwds22b+iguwQBfyCRsrq2CJU1uBXfIcZ7Ge00KWGNnTTXusm2ZFLMDwtueV2+vPNCag8rCw6hHUq/8ObRp5Xg2tQ78zjCzMfcjv23a5+LEMV1uD8mdW65IR+ldc8rHwFHj8KdFCWcDY7c/kdtqDLNMiIkjekgMbPJNCVWgSIeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774335894; c=relaxed/simple;
	bh=UFpPF0s9ZtwxY+OP4Kv31cO8r33r00bxCxkrkZ6E0Lc=;
	h=To:Subject:From:Message-Id:Date; b=ETo65oFCYAkitu81f6sFY3NS2uEtwHZ08n+7sP76vCxw6E5cfU+uyEWleh/NboLTgMEMNk9p9HJ9yJz5C67kYmi3CPYrhMjCF3r8oisfSTRQK5BsHPfEe9G3Yq9tq7rCDdqvzsx7dqktFEYOcUipQiBZ1li5JljzTTECnJrgKf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzO66+KU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzO66+KU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2756C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774335893;
	bh=UFpPF0s9ZtwxY+OP4Kv31cO8r33r00bxCxkrkZ6E0Lc=;
	h=To:Subject:From:Date:From;
	b=UzO66+KUmACBA9kn4xO+dvM9BuupWgqDWoCV9KldN3KVg2fFNeEX9J0KNtrLPLpe9
	 ebe7LKKc06yrktVALa/SVqFH/NAjA5oG8Gn4bqhvDz5TJQzsukj29pKFbFB6o2b9nf
	 H09ovi7XbXfEFZ9NLocsfYPo7/ASFNpJ+hTB5Zp+FP/hkyTv15qjCeC1VEDIAcRnL4
	 kUwgL7j+2kb3XKZTvezsOd41Yi54zqiAZedFj5DpCx3txeKXfz3NYkFlNeywp0PIYw
	 JLehRntyopVvE2xU+A0DefdQ+oxMmHHO4c4z/ow7StgflCFkTekZqGqF3g5ud6c6W2
	 fHJLLYiGskGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DACF532D4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433589358.18092.1719067502354200667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa4b0524ae0594fda2c4abdc8703026dcd550cef2d5b2c50fb495fa9e5cb028
Date: Tue, 24 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774335893
