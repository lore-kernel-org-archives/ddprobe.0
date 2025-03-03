Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D0B215058
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741025935; cv=none; b=Lj0xBxzQp6j9wGvJ7Y2RFKLs+bMb70vDX97hyYQeonPrf0yooRh28l4CkwJ7MR7C3k7z9KSUR4BFj8uoJFuq3zGl1kD/+AyrE6LMZfc9RXSBMjmrnBr1DE+Xc4xr9YG8muJ/Sgt2FpOoBhKDbNHuvsxuTIy0GpWw5aefLAuJRyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741025935; c=relaxed/simple;
	bh=R0ExJaj7oASrtn8ILDVkCNcHwJOu2eFIR52jCXMhlqo=;
	h=To:Subject:From:Message-Id:Date; b=JM3loeKjzIna8FiC+FsghOjB8St1U5jjwqWYkJColj2cAQImCSjMzulmQYI7lAPb90kZzPnbMxkguZ66ZgG0ffuYWbo/JD55JS5txutXrWfN7bao6zGkZQ8opPE56R2fq7A8hQwfx+AsqEcWSkUcG5nuBMWMhpPi6MCBb/GqGxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfCmKFh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfCmKFh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3949C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741025933;
	bh=R0ExJaj7oASrtn8ILDVkCNcHwJOu2eFIR52jCXMhlqo=;
	h=To:Subject:From:Date:From;
	b=BfCmKFh+176MXzTrDVLFbJBLVb+cbYZ5wWE4cBgJVjDowpCyY3ZutdqpgbRZBCeHw
	 3pGIKuwmCDykZhg4lwF5tqdOnzsVXTxVhRfSaD6CmDBa0S15HHUeOSbKw8vyAUU9vT
	 pOSUcikdOeDdpfKjt5Ku7U9ASlU7onLMwkp+1RynxQ9wIVliC3kElvcI45ewrO8zLZ
	 AwxzXcopV67W/orm+vz+9lruhiiLsYhrNhEEbcrRWjQ8PcZK+itWDWX1S4fiGgaxSA
	 NRpRmI6eD0n5CWhgduIGCrLwUWPjXw35SOvMyjArwy5BN0bocpaQ7mvHNdiFy9lpGW
	 7GCsjvT2D7pzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9918AC282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102593361.20764.9005945019545017744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe999195f39a0f908a19e73fc25337a3fc133afcb5304707700e08dcf73cca9c
Date: Mon, 03 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741025933
