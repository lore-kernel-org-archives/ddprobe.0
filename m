Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8381BC2A
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778398834; cv=none; b=GGWlOrFMtT8CRCHH/iVmF2zuNt20BzTFkukQSKQrOxS39KVn2ThLuR66CYFObdmVXHF+7uQHB7pqYxRXb7tqSJjg+F4zHiY0jJxPTYylf4wYqRDMEaSawTns6a/onhCFhXUCUC1BuHWQKllUUZhQ/og4nX7Tp8NqJ1+Pw4dNF34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778398834; c=relaxed/simple;
	bh=A8JDSyBr6NxLZawnqnbqiR6jjOrJIGpdN0GIv7R8UsE=;
	h=To:Subject:From:Message-Id:Date; b=KltKx5jxkkyO6/f5f7GWg3lV73fTPBz2lennoMOZ0Rmzg8DxA4Oin6RVgNulBjLYr6GY+lLlJA6mAchnFa9LGw7hsL3kKyUWlOXgxh2KEfSGduIGCVHw+r8afB3+RjOhLE32Jps8OYY12UgZ6clHvgj66O+yRZLaZiFsA1SYnG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X++lkZih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X++lkZih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8F9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778398833;
	bh=A8JDSyBr6NxLZawnqnbqiR6jjOrJIGpdN0GIv7R8UsE=;
	h=To:Subject:From:Date:From;
	b=X++lkZihrTIf6sowqWlKTxbXrD1V8YLON4vHhk9p82AmhQgA59FKaV1U+Q4iaScJn
	 s92YgJ8Z44hEYOc0/FDCJ92j4T8CSZ/O7fxWJyrWym/XQR7WDjG5neJe83AQDxDPZw
	 pDvSOWn4XvX1QL+3c9QUwTccdQMi/7Pa8MEG+mu2oqTLbz13OZXIy6McqXLlRZjdCL
	 92NuXV/3sst26uglYnAzEeO1rb/fYomdhpSDBhxftpmkPIIZT4ZxIlqPqOygFzo315
	 lZOVwdXZEN7R8RdCfjjfjy99AsnjK3loksj0oxKnlZ3on3AtvKSMwHCCWFTXtLD9iJ
	 g1VN9ZV+jaLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA57CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839883368.16502.9144228891621463931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937d5b81cfd1167a25fc45ca2435a845e4c0555e84a65ce558ae0f5553fbc71b
Date: Sun, 10 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778398833
