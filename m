Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2384823D7CE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764215574; cv=none; b=nk8+Du6sXJRwREhZN5nZkJDTydYzcDzaWcdb9dLYj/UEJIttDTjz/g1vGPmVOHX1q1kQAJgkDQDZgYX41yPMtpmxdLCh9UdN+LnBaZ34CEORE4d52tDll7C+tLhI57gi8jriSHvkLtWA3Jv3AtOnVxjW2HBqk6RBD2kCT/twEJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764215574; c=relaxed/simple;
	bh=zYLr2BCpbF8dqB4kf7JlDzr+xw9HX5RCp3ni5da0Xg8=;
	h=To:Subject:From:Message-Id:Date; b=ZnoISHBEcKqaK/TsMXRfouZK/hzChTZyvUdwLjkp93WRvl6EoAig0FBkWLahO1tBSqrgStKLCmBTEcQEkUd8mevzYM5gjKkzjyF2uZjaKChMfPvTlbvfOcRxLSziE96qsjFltVY6m0z4ZF4Qw154EtbMBdaO/doH1z8a3dnqltI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXy2wd/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXy2wd/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764215573;
	bh=zYLr2BCpbF8dqB4kf7JlDzr+xw9HX5RCp3ni5da0Xg8=;
	h=To:Subject:From:Date:From;
	b=jXy2wd/fA6zGwoxhJkdhnUp20Oa0b8L/Yj0hPAuKWbxT+JNWCD3nUln1MBqQidcq9
	 2YoZ78ErmxUqCDfYr+vMYTp4CBo0GekppZXVPf3eBJOm6lyiwVwIV8nkTt0ezcCHnF
	 BWODTJ/mSRUpNavpCm0Nn9tVVCPgGDQh5ZJarWWomQ8yCYEt/Ax+BE5I8tf1iq+kP0
	 Jr4kqFmwWYpEjFDYvLeua4dD2LxnTeZsATuZAMSuQXw0dX0Vy3cYVTZ9GLJzGGFyWy
	 FhJxU6/l4xEdv/jx3hj5Opg/36CyNdvK+x35PPs0FTZ87f+JRK6wQ3e+m4AcqjuscG
	 uxrZVOy6dVdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91219D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421557358.27186.7726727291029951625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bd7290b2b2a2c9a07bdda27b55ac60063590e6d383f3d43e868387595a2845
Date: Thu, 27 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764215573
