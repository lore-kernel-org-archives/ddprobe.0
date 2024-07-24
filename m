Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7945223
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721785554; cv=none; b=hAkh5gXef0LOpXjC7UVBMWfVsr+gyDMIRN9vth4vbT2uriUZA2wg7wKDy7dncPpIZC03awgxVyIdz8zZBakiNz24ZRIxSgKidQlT84E/0FIehhWoAazfRCujPYJ7rr7BkhHqYum36p0rJSqV37b1eD6+sne1vF8TzeF1tLpa9uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721785554; c=relaxed/simple;
	bh=q05nLELatfKJICYdNMMEXXuUIg3Bqg0uY6xR9EduYkI=;
	h=To:Subject:From:Message-Id:Date; b=Py+NFj7CsjyGRBZ13hHucWWHGtR12mgYXuN82ScJYV6kJn2nyIRZ1JCU84pnGTZyqvVsI2MrZhizCGJu+bCcxb6gUNIqyNfdWG86IKfhQ78nsAXl/qyZxxzdwkEWtF0cFX1Pk1oG+y9H+fvsvgmIcYDWIyGFfttVQDfDpDRPR80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehfVuEIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehfVuEIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A79C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721785553;
	bh=q05nLELatfKJICYdNMMEXXuUIg3Bqg0uY6xR9EduYkI=;
	h=To:Subject:From:Date:From;
	b=ehfVuEIYvhLbnprQvsK7BKrtx2DdacKMPCF5L5gy73wvsggeOU5hl1a5ZkjnYNFDp
	 +3ZoQ21Zbt/rCQHxuWJDnJey/GiEvvW41pwdCL3z0MgIkQ1MjweB65YZuAIVa+nH+Z
	 n2LGCbnFHWcs+ko+4PSrcKq11YwqLg95sOFv9Vd3gl6V9GtINRWBm2q/3Twu331fgC
	 CgKImCqRPoq1E7ZXdgudxjb1XF2q6LkVbqLWLRqMoBxoiiNHmgWutcMgUfK2q14PZ2
	 lLZqY4zziEUX13163TTWjoiLnnVcS0qcK3+ezRifpLyo7kLIR/BGHRY828EKEYkj4d
	 gCuQUiUfL3AWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2B2C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178555360.19841.6178382482955461430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141a806df7997a05cc922edf90572059541a90bd062a5e0f7199230ed5b02c35
Date: Wed, 24 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721785553
