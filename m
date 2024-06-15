Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661F8482C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718459303; cv=none; b=ZQUdbP+uw9bYtMrMKIJNDaRbeknc4/1iLF3Ot1986U84P9twggPOby4CU6uVu+hmDK9qbsq3xdwBothTe2Gz9yXbjRHQifclBU9TnCGXtQr2oCaIEhXeyBBzoUJhzj2O3dCkiZ7x4ROno7tiyPkJt5eUagFIY5YyncqbjgvMdC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718459303; c=relaxed/simple;
	bh=QKMCM2u/9EldQNUSRv2wGCsET3QEVKBedaJY+FqA3jk=;
	h=To:Subject:From:Message-Id:Date; b=WQUSMVvyf8Izb6rBVuIJTd0w1y2Jq/ms705SkHrubT9In7gIYtn+Z7UIAIaOnX8YH5RCGBU1Xhcb+MQsijYT2dpEHXrnALc1PyJ09OvPusrxz6lgS0RuFwyGO7b55hGRkk8lrF2rpJG7MwdbNWF7KAsGZWA6l9TBl1z/ERGpApQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiWqdvSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiWqdvSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23D9C4AF1C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718459303;
	bh=QKMCM2u/9EldQNUSRv2wGCsET3QEVKBedaJY+FqA3jk=;
	h=To:Subject:From:Date:From;
	b=GiWqdvSvpDsEpeUsfHrQVS5jg3XLvPkN8ILH+7aMl7aAk9J2TPgETlmjqQ2jEuQS2
	 aE1+nFjJXXEzmIn0UHngWeVUY83FWc921Q9ZGYLEkUkggZ3Xo1/c0ZJtpUMxDKuN0j
	 cCtNMRaLp4nT0aJeujVNfdIyydfQvaxnBQSFfB0EW4kOi/0AP0P8WG7nQH13evlIUA
	 VALQdEvQ/tSm5HS8RHfGVmPoPos1YB6YwGd9/4cEScGNrQWPGM4ES+UBpaZ9dJSRNw
	 kojECWeLk4qdRTduGdPyzvxm4A5i0qbUprwOtvym94tUCTKohJlMqDzCSDBhS1n2ZY
	 xn3mDX+p8ZiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8B8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845930282.16667.14143380149026091215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfea3891f994c4489d5432f882c235c5097c092b1eb92b0b509e797cd5d223c2
Date: Sat, 15 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718459302
