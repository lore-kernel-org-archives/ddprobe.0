Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61276168BE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726861554; cv=none; b=tAoLs2E/bFmRH+wgdYSOdE6g6bRNd77tCnER2PRrp67jQ4juhZzVRAc+L2hhMR2JYtx6g9XuXJrpAdS6dPXotUBvIXrtM0eBcbWKn3hs1pqSOctcTYtpmS0A1tkwirwJzRasXt6ogmn+bA2Hd65BaX/gnP4cm/PU6yeRn3WBiyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726861554; c=relaxed/simple;
	bh=c6mePvOy5xHIW+jpqDNxIVz5ilGhvV5a/n9Cqc4rquU=;
	h=To:Subject:From:Message-Id:Date; b=R6y4Jrtq0Y+S21p7eDNZyMxrya0LAdaq1iIBJG/HsaYbKKASzVd+qzDfbKfBNC8qBZigeC7UWmTKp9wiKg6N52/tRVsNRZyMmXn+qLlX0X+5BJcy6DjuG3Wq2FhzmtyHKKBVv+UjWvdt9MMy8wFWOfPUAKSbbPJsu0VtDqFmE9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cniwv7As; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cniwv7As"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE2AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726861553;
	bh=c6mePvOy5xHIW+jpqDNxIVz5ilGhvV5a/n9Cqc4rquU=;
	h=To:Subject:From:Date:From;
	b=cniwv7AsQgd5z3QyO3mQ/LSFbUiMOk0Qe2tvA3kEF+PAYcIXxogp15LUZdUU3SvpJ
	 bWBiTFTHrZXAy/3DdZ9eiRwBOyoUvIqgveRINN5mKnFQC8Y/+dLbnvCgYsM2uF6X8c
	 wxXoc9bnLhwDZ+sreS7WUfKFIaSn5i7QEqi7z2fzHgLN+N/Dyta6B7L0T06eIAGY5/
	 IM+6kWkvutMrPvfnBBPAk7igXkxVIRjO0fvBXTMX1+s52N7JSOLWu/z0yjZIYav82S
	 ENUupYd9uVJEi/8zEoUoeo+vUYpH7jFeSSnN0ZgydS2Sa9SymJWWO1tfq7B4ZkSA1Z
	 ojugoANN5x1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D48CF9C62
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686155358.11002.15056111689777133923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4aa07a8b987d2dc67976aef9fc1a04fe67fcd51c653f6503518d285f717776
Date: Fri, 20 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726861553
