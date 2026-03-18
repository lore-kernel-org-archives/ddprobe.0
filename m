Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7233CFF6E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837894; cv=none; b=qVjTU9afK0pRFouQN6NgNd4nfKehWetpdMEzs65dvAGDXGo76mPptvPczTyW/rz0Vrvfyet4MgLy6P6QKnAj65rR59c9Cv3+8N6+iZyvAZpmiVvjk+dSsHZCg9goZZmlYmrN0iqQ0hfHf9XhzVuisl5BSMjfzgL+Lw6Ea+AZvh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837894; c=relaxed/simple;
	bh=hhsDdEEavaBQjqiU/qM7d/LpvAegnGIL/eK/j8egvNw=;
	h=To:Subject:From:Message-Id:Date; b=POBd7JVpDukjbinvxRafaCFZqX4iodOqTlS4S3aMieonoVTLAU6gxZTxpbBhMgTf0QwmnX/h9JYE/c1GmB28/CsubGyelqXjOGN+ft7Qb4oNeEBeJi60kV1cFzrzfqaW5iJMXnkNMtzJJz0iS6E07Wx3o64HvDKSUPheoKXOz8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiAUCwyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiAUCwyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDDC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773837893;
	bh=hhsDdEEavaBQjqiU/qM7d/LpvAegnGIL/eK/j8egvNw=;
	h=To:Subject:From:Date:From;
	b=fiAUCwyE8h2g4c7VzCGOD6V3HZUVRlcohaamzC+17hdHP2HxJ5lFMOs0ceMNmryZr
	 jm8/ytB9ZXknQmF2sOtl2ZWBRrOO+zhRHPEwJMlBZJaaTW8mznn1ynFr0o2mfn8sXM
	 m+zWcnFOemfMTt3p6QpIQfFy0FcEa4YlMPgKavG8xpwwHadb6mHX8lpCQORXylL1yV
	 8nFbV/zS8HF77LAbNbW6F50bErETYPV5ZPwylYGK6nRZqBQdVVlz0BGtL/BmXsv2aU
	 Aev25ZszySazszuzkEIz2Ab1CWDVKzATM7oMndU2VN7/rzEf+JNczICGlT5sn8XY4L
	 cC/kjRdJpXD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4B103E168
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383789357.23659.2305400237905247941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8640668aed353e328069f3af62fec7f05807ca405acb677824bf3725e3e46ad
Date: Wed, 18 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773837893
