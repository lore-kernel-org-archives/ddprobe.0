Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE82D3228
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756322394; cv=none; b=WHe2lz6akRW3osGxu1bS3LE77exRPFbT+kWHbCkXYuSBvW+JzvRndKpm3/o9smea9dIZpJLA1pOaYWQNbyc4WXgoopQaDola2ITAHrNCWUMP7+G40b3Hszz/BC9Vz+WvOyRjhuf4ieGR1V2aQINkUQIxLodaC7ZOFYZwFSgyv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756322394; c=relaxed/simple;
	bh=abcL1YR4BZ3EzR5FeItnyu+coa5Ed+nFUMFVVyhEjVE=;
	h=To:Subject:From:Message-Id:Date; b=JTGbz6qSZVgHgAQbA6yiVcmACgE+v/RUzMiSeP3phgDrB2YcqXC3qsGY3B+A5NnqwPLsCSi9fQJxE+SSID15dQH7YDDxO00C6Ipn9YjPlc/K0PFzDcv9tyEyldqHIg73N9bJddxuWLTB09yIOSUN9Fqx5NWLs3v37hJgmVHf+3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay8D/rlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay8D/rlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E3C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756322393;
	bh=abcL1YR4BZ3EzR5FeItnyu+coa5Ed+nFUMFVVyhEjVE=;
	h=To:Subject:From:Date:From;
	b=Ay8D/rlTHit3HTkrl7qiagy9OWzGzhIF9CNrW87rtSYG87b7KbWjj8a5h29KwPxgV
	 7pIX9sl9B7OTbVkugdDDV6exoMvZwD2n77s/rphul/DuFQngLWAq7Oy0opuBG2aGhZ
	 atgtxml+n3L9+aBh4ePk7fci3urcAhJuU+6qx1mj5hzOyJRp+htd4i0EBifGT7tbi3
	 KvWy1sBQi6aX2+eU9uAebxx5rhEYj7zjDLLvQ0MpMzZja4z1AjeRRAT2QouMho+0W9
	 e6ippk/BO4GJT7ER5F5iJlb7joB76sDZLN42o7dkuLEQUApHSGuBjNcczHQhgKr8SI
	 4xhOLQzQ25PaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED34CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632239357.3020.7157567373509845127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e24a92cdd6e3d1b3bb1412e8e4ce7cd5a836ce211438c2f42ddb902a96e9080
Date: Wed, 27 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756322393
