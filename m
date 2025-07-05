Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE627E107
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751708994; cv=none; b=NxFB8pOssnUYtvC0ZdZ49HnMPaeOrQMfPnYdsyoD7Y2coDKm2v1UnAO2CocHNSId3NjPqserh5nF6In/pKn2Jx1idrwynuMdpGCBR/tzDwPxc5x8YsRKYdY06sPeDjTbBxkRT73c9xjnaOpiOEAGpW8CiW5sJ/TqXqkQf9HfY3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751708994; c=relaxed/simple;
	bh=O+8RXbeJyj1Bdp6B2vvnayKIbigq+rEtoeWREa8Rjsg=;
	h=To:Subject:From:Message-Id:Date; b=XXegJPyrhRQi/Xd5OW/tvlXo5uxXzDnl7wjHC2EXX+T7HSv81oqBcoZmozLDV1+mcVmozCUt1O+2CkDwmLz6kvZRnAK5UhtvoP7n1bLDZd8PmeIxxo42W2piWo/jfGJSgVLxLStoiPmsnMNAMKW8o4kkwjNX4OB93+FXznUPNDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRym8EqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRym8EqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11FFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751708993;
	bh=O+8RXbeJyj1Bdp6B2vvnayKIbigq+rEtoeWREa8Rjsg=;
	h=To:Subject:From:Date:From;
	b=QRym8EqXCkkN8MdFnicV+TFu1/ALS++Y97bvizsSUNTVcZ+rb9XIlW+Gc9WSalQ2w
	 vqygrAiGYvg5GtQj1BoauLkq3nRC4fAZ4o8LwrLB++9WesGcSwZycalpvg/Q0uPKfe
	 GrujFvAkxLWjjOflPIzjfgkTuA6WbEHqQikdKOW8aesQZVfM8eAhiFO8JQ3p+mPKTj
	 DLl7wF/0C3iXKKsys2ONT+BmpKsDjaJA7evjxwdibSuus1zhqmgb2rKHTwUH03BM40
	 rmkIhCENO1w6NFSE4uwYcM+qY9GitA6StvZyc2c63T+0fFaUauOePqmmK0t7Tn2odl
	 dJY74M8TxJaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170899357.16089.16870270847445724038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe367865dc077bb043c96691321eeb466e77e7a76ee80bb5d13cda40b4440af
Date: Sat, 05 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751708993
