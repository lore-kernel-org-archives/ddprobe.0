Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC6637A3DA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761781794; cv=none; b=h1aSctHsPryGuZSUO0Xl1sOglN9BCX8QeN0lo25/njjiiOiKCZL6cBGVRSXZ8vsAXFAvQorJ0voybQc+yE7fvqIsUFD5WmAHJAwbxEaoOMNDV98s26yzd7F5/oO5WWuA6B3hdwG6NbjnEJbXXNNFmakfqswwMwu5hkaBYJmfCPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761781794; c=relaxed/simple;
	bh=nai6pC3/yKovIELr0dU7A8TibRQlLLBKPFqaYGhO8Io=;
	h=To:Subject:From:Message-Id:Date; b=Y906BwAWvBUtlzSr4YV8TIKwK6Vet9TsOZeefAeI3w8/bk11VT2W9gMIpqHe9rgXOMPxaQhO2JN/XzG+s1Q1SxTDiFobMkmt6DO1jewOWPg9A8D5dscXesH5yobgd2rQ5Wkg0Fyf8gBLW1bPAWK8WSvlCkQo7NDx/HJhsYEPCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbRr+QcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbRr+QcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CBDC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761781793;
	bh=nai6pC3/yKovIELr0dU7A8TibRQlLLBKPFqaYGhO8Io=;
	h=To:Subject:From:Date:From;
	b=tbRr+QcIfaDvaGRF5uN/p3KceHWw/7RNWwK4JMWyB5v5VHDex5NWwLGaA1XdAW0Q3
	 ibidDGUWKILqTWL2B6cY8o2ebgiO8EgPvcx4WHwOHJbOjFkV/VZyJez4jNIM77r1Cn
	 mKgEwJpOke7VplB8Dd3g/UKjKP20/q4BLDt9Q0W+UpLUgoddBJkVEAtktdkL0V/+WO
	 gKsRXTVF4qg1ban6wF9lIi51XHWtiTZINLhWL12EH8eVgJFxLmQdjpTBhfOke6N/1M
	 4SUBPudoUU2Qmw/Ec2AOi1grFSDQq3TtjIsRQwrraVIALhp06Iot8GOPRrWYxf83TO
	 0oKNmeD7kDlvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CD2CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178179358.29274.2847780432162583498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed09bd8280e1f8232815bc6a60ac66957722c8f3fe46e2f60fc137d7725a596f
Date: Wed, 29 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761781793
