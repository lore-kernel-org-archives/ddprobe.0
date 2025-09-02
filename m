Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CD12EBB87
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805994; cv=none; b=mLhtkqp+ZKRvl9+tlDAuqgX7zV3aDjm6Pv//+fSCfZk/XXvtYy64XchA6rbvh6PjGQHRCxNHfMeC01JVcp1D0SQAxIN6SeWZJK8ahNS2fwd+DaD1JinkFGdo8AYOGgoFaDXADNNKipGk7fhhf79qqnqKtRNon+kh9/WWlvkQ0lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805994; c=relaxed/simple;
	bh=94r9Xu8tokMdWUQ1s5BbdpAC2NWxqBRCdm49yP1Z2+A=;
	h=To:Subject:From:Message-Id:Date; b=mWNojdVCJHXTfVeIwRKfLCRV+Ep4w6Qicbbi7HNRxjc+8U50cEhPRCdLDiLbJAYppMXrlDcmb0c+1Aynh7rln0sz9BxTzOW3mjJGrNZNI5bgdK/dnb6sLNmKr77dSoP0+2Eiu/xElisX5mZFvfqK0nQGyYiT30aVJTc5kRdPg8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4+2NYCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4+2NYCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F650C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756805993;
	bh=94r9Xu8tokMdWUQ1s5BbdpAC2NWxqBRCdm49yP1Z2+A=;
	h=To:Subject:From:Date:From;
	b=A4+2NYCidvD2IoW1U6hKvacsR27E8hlxwIXXIrVlipfv7Xt3ciwt36UmZow7M1KTh
	 3cR+zj62F6DbR+wzGgA5WkZMxaFHpQhWJtQC1Q8l4GNDvk5LcZVkRaX1Miw3H8aOeG
	 MRBQUyBPZybhXl5JHRpKltWR6VWpjDEVbh0PE/H5tqyyX5vdvIIcpFj9dAbYNXVMh0
	 SIujbV68UOZ4qJMqIWS+pqV30w3C4s/KGPAOgo+zWkMyXb3MBhR4RbTIG0wpZ9sAu+
	 6IuQDBVT6MOmQTbTnvbgzKux0wMSJaj+8sLontFi5bdDjUlxB7mYQKPRZ4uuT1StB+
	 sdF94GUTgRQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F528CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680599357.27215.14301392931993178154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d4dc784640956c014595828064443795171e779119bb58a9f0c6befbe16b87
Date: Tue, 02 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756805993
