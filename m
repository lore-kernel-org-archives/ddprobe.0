Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936A1E1C02
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765327974; cv=none; b=jvzUzHZhP2nocpQb8d7PKtlYQmKfgc0t9wxLIJWzhecMm43/JJf7rLJe8xeKxosTfyix+QLYtB7q0TAeZQ7KYZUtdOdGdKBqNPAjB8fbHtKlFP29B7XDuAzChGnKKQjibjkyIW2ZzlLm5WNwFW2Om3u+DNimAPeVKOXbaL+8NYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765327974; c=relaxed/simple;
	bh=x5y1D2AuC4YhkiJFiJu1pSkzt+xG+b1pAtS1Xq2C9fY=;
	h=To:Subject:From:Message-Id:Date; b=ByKldQYoia7NRKqMkk/HXAX2amD+tnO0d5hQfRBEMxh6iY1uvyyb8LGlzK8jB1TfqTeD6myeVa7ghBPSHNGo/X+4e3WJqBbQoEvjAMD/hQ8vDrE2U9EOsONXAkMinQFef0PibC1+C2EmKFPPM9wE2iy9tuEhiRt09TatJqk30v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNRi4YL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNRi4YL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A863EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765327973;
	bh=x5y1D2AuC4YhkiJFiJu1pSkzt+xG+b1pAtS1Xq2C9fY=;
	h=To:Subject:From:Date:From;
	b=YNRi4YL5hGXbYZA6eC91Qy9U6410YKKfeMiO+uBrBqcDGrN1oSwY77BQMZHSIXGNv
	 BvKuBzYD2CJMTlm22jSCPRNdcd/hPsjTjhbJFu+vqTXFIA5iw8PhYJCKgtevPC27XU
	 k+P/v46sVO2uKnZ6ce9DKa9dF9WW2qb9ea11CaAko/IXkQP8G8u08sa7P8g0dTbqJA
	 KRj3Oug9e+wKR66TzqOtJsSK/SBPIrCpD7djTi65/QuzrrRHtd23gSzYaRPPCBZ+SF
	 +srZ0jM6H6cSb7hoxj4fOpvvDEQk2PmO3hjPNSbAlXX3IdUOtmGT/fqoWKK51QOgcD
	 uKLpHrDypAJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A2D3B9AD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532797360.14942.11537888045524039492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5f400206c48073e9c8530b41c2e948af3584640d46ab713250cb31c91f0924
Date: Wed, 10 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765327973
