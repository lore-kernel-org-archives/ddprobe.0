Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458432AAAB
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764090174; cv=none; b=DC79Y9AmMRTNDmHVsOrzsA1asa+qNCWuy8OqhJKMhzwqDdAUliV3SQehy/P6VLxXeNqAq2R6GUNAAYsCv4ugGQmJbXja5gP4RUjTucxMCQWKTlKOSNa685NuQ4HTQCq5l87uBqr2DutEBZ2MLF9v0qtzEXAHqioCgsirOGIqM/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764090174; c=relaxed/simple;
	bh=nXNTCSoevINlpAZGCGpFQGVd8703+sZ9SrM6SGFHAqE=;
	h=To:Subject:From:Message-Id:Date; b=gJnUPsQPWtuIyvtMGRWNrwbDnuWtdNWivbNaeaVc3RkgHd4tptyPRhECdzKt1gUQ1V9Gi/zg1Q5mm9nsNzPFgr5knlpUjtYXCWvQDiHng+6kygUNxgV9TpIsnbGorsVqIPGGgWLo1Fc5ac0YjN3ii0ztnbD+VBpSOs6Ez9oVC0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxCBBiSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxCBBiSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF5C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764090173;
	bh=nXNTCSoevINlpAZGCGpFQGVd8703+sZ9SrM6SGFHAqE=;
	h=To:Subject:From:Date:From;
	b=dxCBBiSWMWbvsznFpcDyCRj+ESFfDSRLKZAI2oyq05T+vfDlc5kAwwwmzf5a1T7kZ
	 u64YzbeNJp/PmJ0JzYyiznYdOBH/mVne0TxOXcsNW6VNrwwkBH5VRsV/xG4GVR4eAu
	 XGkRNAn2G1rPSU+L83rEAEjyHqetSHS2UhH5W+ZMubah6fWv0PgmzbKWyyekENkTLJ
	 4Jtl80VWZ4w1CD/48TLsTLH4qipG7IEuMMjCpZkFX+0C7Vl/hrVnM1fAMGqUNT4iuE
	 BCeBcIipxbg54JI0TQec+0fsuXdgau+gBoxZKCyI4zUiP9mU9JmF7isCUFHQtenWxH
	 5hQApzXWLfXYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ACD0EE00
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409017358.471.308009794970659058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fd1ccdc6165d4a80278f035ce31f2c8b46df675d0d1dc31e2bfc36e13c7cc0
Date: Tue, 25 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764090173
