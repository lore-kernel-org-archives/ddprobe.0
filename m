Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D75E31A543
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768843434; cv=none; b=pCykwEqK/HM2enSfUm0P+RzC8nP0Do2mE7IA3syxaDYzzAINIezOZwFkr6TwKf+aqe0i56oKjn0YN1Ev+kBH3ZFBABYpcKDSqQDbzZh5Y/QKNBA9ya7aXcakt1FGYsN3jZio+eRXY+y6Cig/fc8xfPB7WkMmV1tKQZQtIDyIrWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768843434; c=relaxed/simple;
	bh=j8r9W/PN0ggTvBcvyLrG25+vzI33xbCJCUaWtoT8Ens=;
	h=To:Subject:From:Message-Id:Date; b=SPEtyFvc7NVbvHkgm6CiV+PiXeIwqON+B0Z0zS8U4QCwomWkZ7HH/Q6sRHdTCu72oumVjs4yYPg3zCQS5NltFIaZyDVtlnGKkzhBqlq1q8TWtHZpLYADov8GaDi94Vsr20lFxev0CXkEhzM9upqKalpB+86pSoIbs4XuvpauNe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLqTHish; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLqTHish"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAB3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768843433;
	bh=j8r9W/PN0ggTvBcvyLrG25+vzI33xbCJCUaWtoT8Ens=;
	h=To:Subject:From:Date:From;
	b=dLqTHish8DgdfMj7sNSHp7Yv4Art8lhOzZJOIs1HMbVNbsZrcUh7MopuoG2lmUA4+
	 lb30QTK17wEUmrBlt3DiPOxz0OPizK+Qt35Vr5EBDIACDBwBSR0Laqx6L4PjlCR+ul
	 qi9qExSCnrec6R6wtxkMTH0Dc1ga5lpcjktYt8skp8f/dzF5xCEOerpThjhGfqCe08
	 SHSFlSGd1EJq7YzE1HAbyA5CrT3lTdZ62uvqJ4l+kQ7Q2JsPaYX9delxUMb0Mky8t6
	 c07oeltk6Z6NuIK4Vhig82qxArIISy9bOyJRS+kVaT0lRjiQXponrED1Y+jvA0tTtg
	 hbuxH7B3fGd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F576D29C32
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884343357.32341.7370659467103464889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003e3f4ce851af8f8914e45f22311fde8ba4480ecee57f83a915e643d32be2dc
Date: Mon, 19 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768843433
