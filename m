Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096E03D47C3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781690794; cv=none; b=qTS1QDI5H4XS5aTmGJ0UgI3q2VNi8miUhgNWZu7EdiA1dncSFAHuu1MMACVPXP1vyBchDXJIg/EfELEXHT+kjN/aWT5eFBlahEzbvtkJOASv4HAKpb1eQsaHmaG8kQCtIpld7hFJvk/vNkxSxod/KvhFcYFZooYZf0ObEEsH7J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781690794; c=relaxed/simple;
	bh=i2Tlf5YDbySmUQh+WMv/yftH4HFbKfvUoXVzt+8hgls=;
	h=To:Subject:From:Message-Id:Date; b=PLySoOs+geY31ZKMpOZRc2Hz3JzOSl3LYMe5gakB3MZHmMa7J4ysf93y0bPIb6yzTjpCQM2kfLhFiGGBJztALpimLI9Lt4lcKpT01bIL3oHwY+wYSm+zT3W4UL6ouizKvJsws1E+lNXqO/BtgAzrjlYSNOwzlvnZdU9mR2SCoZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqMOVh9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqMOVh9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE376C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781690793;
	bh=i2Tlf5YDbySmUQh+WMv/yftH4HFbKfvUoXVzt+8hgls=;
	h=To:Subject:From:Date:From;
	b=lqMOVh9SgNN6QYW28MFZBAs6W+7+y3AH6jF7VDi+ogNTsS4liKsxGh4hkWtQn7XCZ
	 Q0EUnfouWfO8Xm7k+Bv6pp2WX934b/T2EMy1t+W4j6JQq+ACxGLIWl1Z7QVi02a6Qb
	 0VtcEOMxFZdWm3wExs4knj6mhn5miMxDTJMtc7DoM+K1DxjpxCmQs5CC2p7d+4jdT2
	 fIS5ccQXG4czhdtBs2Jtv3e8B2Pw8g96mp4cnH3WTshpmwTWBRpDxT1F/o4+hFGSvv
	 0b7gQbnhegWmRD/0G19Bj4FKMAeFtKD02vGvBjqr2xL7T3D9k8xx0PPlagcj8YTHNM
	 /jJZue7T4DqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B045DCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169079370.8136.12764327193980037515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6b640681a7c8da0c849e5001ade9f5bc6898a04fd698b8af6ef9b8012b9967
Date: Wed, 17 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781690793
