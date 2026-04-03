Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2383C274B4D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775222134; cv=none; b=ooNj7NHKHVSSk54skY8qGP9TuH+HAnDPEEHRFp5LgZ8ZaC35N+mtwNmzt2emM81I1nqx6wbQpw1incq80Y7EaREs6KqQv5/eT7LaMWCFvgZmxJykhl4LzCiFjUBQLJPBiE5T8Ab+kQoNl6x1gGCbcVULHsI8f/VnT+zxlRfs8bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775222134; c=relaxed/simple;
	bh=OjJDDdepDPeCc1NIVh+eR7KK/WG6ExHLnYDiqmjXkCU=;
	h=To:Subject:From:Message-Id:Date; b=LhEESglLTHBaEQI21uE2w1ONl/y2GzuPU50ETXT3D8sKvIOs7iLMLbUCqPRRZW8IOMUaW80D3lb1VxWl/hve1H1cpXmtuUCXHU/DNN3jXz2TweepXCi63JtrKTpsdKjA5b17bfosLay0jLzsg38xW537B21c7GMKxtmziW+1+ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiLZyVfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiLZyVfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCDEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775222133;
	bh=OjJDDdepDPeCc1NIVh+eR7KK/WG6ExHLnYDiqmjXkCU=;
	h=To:Subject:From:Date:From;
	b=HiLZyVfYc5QprcSpMMd58y+eQObEV8U3j/oHFWZyTCvw7/+RsbIVR1+25PEJcE+Fr
	 wV35V1JcZvJKiKHJk4dHE5+gbQ2nwR9atVnjGKwR21oqfM4BYp9rbiSQnE4nNJR0nD
	 nN/BAx7BNIbKTC6K3N86IAoPoLpMg8AobY/6PK6QWBO6T3ldKLEho2Mr8YCA91J4HJ
	 2CN7KWWPKoNlxdFp3KIJhyMVL08RGCL2+H6imm8rS8y9v77jG2ioYpLCRhUiqRBa3F
	 zk+JPz2ZQGFap1BwtqeTD5FUmgi3kFhlzYOdpJWwIdgoCv2zd02QZDnzfqnjGS1Ygq
	 L6S1CLpcguhhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF7FE8536A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522213368.16293.8199475451086491313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e766119ad3b481c8217b38dbd01730b35c43f24c8b9a59a5bff4ecc0f183f88
Date: Fri, 03 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775222133
