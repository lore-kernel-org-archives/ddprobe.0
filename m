Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93ED2248A8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744931993; cv=none; b=U+RPOT216sHNv2/WV9pl6FCYEHwX5RhOSr/UFMmYMbDHZhtjlbwxHBUWNhWc+FSzqnL4HRht6EsAdAgsKL52sVPm1F15AWEX2OhDGWnDjpjPRO571QbLY5za+fbuQUjCxEv78A6hSRkiUyMmMrh7WRmswH9fVXFJWbUQzX7m7hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744931993; c=relaxed/simple;
	bh=8dv55MN7LchKMhqLviKuYA1X13NwgrB2KozsNB+AZpM=;
	h=To:Subject:From:Message-Id:Date; b=kFKr0Z6mz9luqPNFof54LX96kdvsEnazh8vI+OcAqZEWVXjCwThXMDxho2h0Rj0D6sgnPEYqVr1qY6heREeB1MEUquwUtD9GoCsxbrvtkdUH3lhxlhOCgOfvx9DfRjdeJ1ANf5xObm0f6tAk0WTwlHci7M9QVz2Cn8tarGBYjaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaZZku0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaZZku0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB357C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744931993;
	bh=8dv55MN7LchKMhqLviKuYA1X13NwgrB2KozsNB+AZpM=;
	h=To:Subject:From:Date:From;
	b=JaZZku0jamsm0bCkKRmCuYm2gcQ974ZBDMUTQfXlrCbASAKdaDwsJd+40X6SvHw7R
	 806YbzN9C+EMJhUyGrGHfXrEIMlb0J69G7RRA/6oXmGKIBjPsa35L8FczjsWDfPh4n
	 yZn0AqmSHcU1BL/vXvWmAPAitTIf8HWuCe5nDB6XX4QztoNd2Wp8FviOJU2G2kHwUo
	 Xn/iR3aEJvfsTnhBAhqCgB1OoGaKH85xIlHNbrTfMgJKo7h7EifeldNr0YwmMjXKt6
	 bs+fH49AlkJUvibQH8w+VgQkop3OgrpuFY6JIT+R4PPyFGEaHCmJVyrCjrmJJdnzzq
	 +WSjnoYFOF8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A061FC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493199362.755.2924751265221600704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e015486b4b5a65359c82d8ab058a2ae02b822c5ee760334ab78b27095572fdaf
Date: Thu, 17 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744931993
