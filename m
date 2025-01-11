Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2924379D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736630154; cv=none; b=HLTGUxDG/HJdRebPSnJCTfK3jrhdr6fUJWHBcSBZd0U/jwjlZTXmQocEeKo/nhBwk6dwbZFXLFV/mLKWNJ9nvXPdQjZfUTrP1DoBKS273MUJIuSDQU+7F9qNU2/nCUY7vnWZeJe83JIdiu4TGmkyKB8Mf87ORKPsupyBTZ4xfKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736630154; c=relaxed/simple;
	bh=PvwgrLCRYN/sh46i+uXQv6swHhUoneiWaUg9SCiIWow=;
	h=To:Subject:From:Message-Id:Date; b=e094q64ZxAJjTcbO3EzRDCna2iqlFkvC0ySNPf3fAdLIwhofG9vmFqcgQVPRDgK21ovIwKUyxMNqprq1e9gbwmuE8SSg9Hb5k2H8QV6SKwbPJkpfUJu0/kVucee068I2RAVPBw0RprM/QP462Lbskd8Nvyi1GQLx9JsTP+9K4Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwRZlw+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwRZlw+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC46C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736630153;
	bh=PvwgrLCRYN/sh46i+uXQv6swHhUoneiWaUg9SCiIWow=;
	h=To:Subject:From:Date:From;
	b=VwRZlw+e2BXK59XyZPI8B60jNiNFIwM2v8T7uW+oUogTmATl/tzQD6bv3zCBBlrLb
	 eIMHmRXhE4hpw4cqvp0CpT4NgmNQj3JHr1Ps9Sq3vxLNSSVQVc+ljN0oUtaQWUGH/G
	 cdYUy+GYWiHmfPFU9dAXIz77y9Q5sLHWQcSsYwzKUcOBvc1Jv3lkW1AY62n/zTe3mI
	 PMBDqw8rt5l7PwRSYotF9hAxngGaXo/YAbX+7fyeUndNNUj8xzKiZ9aTq9yEbuPGbs
	 EZhgSvSvaJxYmqHdlHiH9ybvja8g06sG48q8u+hFVzu5LRFqVDu4GWSX7zH+z3XAJc
	 mk+Ss/KTUpw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A6E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663015359.19281.15504978775642697864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e018f5c649d155f95ae16e42e6225b9576a65e0975f7b90b197024ce1f081e6c
Date: Sat, 11 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736630153
