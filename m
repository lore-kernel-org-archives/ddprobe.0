Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BDD324B33
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791670235; cv=none; b=gOtLpF6DFiIZnFLWPaBCbQcH4KT8OR1oiAMcuAnpWN7eLEnujk/D/ldt0vu1pLNr4DF6gaC1LP4FVdebBUJL3QeHBbjHuDit20hVOkWUlFTZHJRqyfaiKwBpzr0sa8FYHLVwgbc/mao2FsW2thaYLhgHY9Hne2VB16TIcBu+Jrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791670235; c=relaxed/simple;
	bh=uexUfhuBDjzojBun9LVvGOEwtnmtHkqkn3PUKLp2r2Q=;
	h=To:Subject:From:Message-Id:Date; b=cwHSH7hypEr0b/ffyK0VDr96BMOkk8vWe7qA49gHUVvFEknpEoA6KCqM0rZDP4D7AEhZbmIeUQOmQWohnAvQE8CF5s83wjfL4MCl/ypzJ7gJ4rM2fbprgjo5tmP9Jpp/UT77WFNqHVd53mipp9dtJpxeRtDRmTMFKtojVILn/yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYDN4Obs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYDN4Obs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1591C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791670233;
	bh=uexUfhuBDjzojBun9LVvGOEwtnmtHkqkn3PUKLp2r2Q=;
	h=To:Subject:From:Date:From;
	b=VYDN4Obs/yhcDFQB1jTnpw6TrkwCK5Topnkc6cDRknE7jis4MRvWT3O8oNpsD7nAy
	 YhNt7MfJhQBvPXpyKdjByyOrYUCro+Ru5gM4NLmkIUXj13rBoV7F76m/hyGYX3Mz7v
	 HvQ7cXENRtgrJw88e4uG/EI+li+EyFJtZ7qH4YMZ1k5Sw3mTxnWeDt2P6Oc1rF6UEn
	 P3gxCMI4kATH+lUBrbv2bqcky4oLSnigvAdx5whUdknJX5KmvD3ohMPjgwVBvUq+vc
	 t3w5qtyYcagWDx2TRtMJXYEubChBSEmLFmJZRetbV7W/825FmUZtWcDgCGGgLrRb6Y
	 C4N0H3YnHlKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC878CA9ECA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167023368.32637.6332909191980051059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac619885315c80a5b1ecb2b789e644961e95cc9477128f28ae5f534a5e3b406d
Date: Sat, 10 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791670233
