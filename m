Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D911E2E11C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257693; cv=none; b=TfPgJ4JG11eC4Xnk/QIDVIlNuNiM4yX5FXxntX93ljpyPgWYdk/M9lsfD+T8eMpKF8gkIzlhqpnk31ozlEPeRYESo9yAyAL9YG0oju/220nbXB0kaM6y5DgA6j5MB2Laz/kmxqQXz/7b2Gx91YxYeWZB/3Vd8eFpdRxfFOQIyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257693; c=relaxed/simple;
	bh=NT10qcK4DOwjw/zkGQq4n9Ab23yHv+QPUYJ/a4906zA=;
	h=To:Subject:From:Message-Id:Date; b=m8TBvo6VlYVVSq9sJyoXJQ9jGfHDQxvHponzUQLxthV+rBA7Ak6meqfcr/eG5IzdkwrlSvtGgArhJ0GhSTjWqfR64kpraqDMDOo8e7wntqwyqg/m122NvElCy0/hxYOob6sn1ca2Mn8yEpPLGkWUktAYxLs2+qcoSv3GYT46dME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDuDjYPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDuDjYPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A905FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773257693;
	bh=NT10qcK4DOwjw/zkGQq4n9Ab23yHv+QPUYJ/a4906zA=;
	h=To:Subject:From:Date:From;
	b=GDuDjYPDkMskQJoxi/0Rk4NkntfvOPUDW46+k1VyFAOxkucrDr4ZQeZpuXn1vJWEZ
	 IU3Y0DSOfXxyro6KaL01BVRANh1OB2JwTrkOq6S6iR2SXAkQCYuVMDppByJrwQac8I
	 jZtIx53NU8FLJKmGu9cWO8E1ceBtuj6aIcrFWzLQj+uli7L6bIm5KacBAFcfd7k6Dm
	 LzBC2bf+tcdxFrisl7tCOpih9Z3XInaY+zY202rKdZo1/MsKJl2n2Lp1RNMI/h7QGd
	 Wi4aYfSRo3nVcrvSMLnIatDbcKrbF1Eaz6OtTm8HPzQcFoeQ7M7EAHBLNU6n5KWM6N
	 og2DDx+aFrWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D11125875
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325769358.13721.9634150496484592896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa3456bd9753b041855289396280d694a9cdce1e0f04d9ae6ada4f80bb6a39e
Date: Wed, 11 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773257693
