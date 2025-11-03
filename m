Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B76146588
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762129193; cv=none; b=tOWjUfYbmV/00vCWqLM7w6mdwlupe+Bz/9bQlTF2I9ac4TBKcrMcU9thwTNsOK+IvJ26hOVT422yCPmh/5UYr1KaarryQd5HVyEAEyzIebVcdlNKoub8xHJGbtkdVnM6XDDcD2lUthIWUuM8MVkI0kAQTtUKLwd1oR0M0X0pRiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762129193; c=relaxed/simple;
	bh=Bp8EWvvklg69zCqpqtBJ7q9VJylD8548bF9WFk3P2X0=;
	h=To:Subject:From:Message-Id:Date; b=RShoxhY/M3s3sU8yBWgfxaYEpamGCHb2UX4oRqXnAwM1+p/kBeAR0BRblcOgy28dOTiQODWmpLvkHEPhTSBqGSUy+45tMbNvYNyvqAXEsG2o2vHN5PbwJfWBV+fUlwvWCrXV09ar1fmAzCulXcbSL2Xz4Rtt7g1Sz8hz2XWVHYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM5zCOlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM5zCOlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1A2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762129193;
	bh=Bp8EWvvklg69zCqpqtBJ7q9VJylD8548bF9WFk3P2X0=;
	h=To:Subject:From:Date:From;
	b=JM5zCOlpYY28MfRz0Zj3dMGjjR3PpTAYIptCCBjAktI+swBnNhoKI5eHQ1jlR5x21
	 AsV1O+D5NZqF/c1N9T9gXK+t/tYw4ASOGM9wlxJ3m1EyMxkuEYyioP0kXXsu3uGPA/
	 5ZkCqK0GHtHfAcjQCM/6Q9ubDZD/eHvisnHL8l5gF4EZXLlhT6l9gHXMkCY4MMFohn
	 mY/uca9iPerusR+o31bBVDRfLRb0VSemjqyMhzZaNW3MzlSOzZ+CQtCAC01pPryc7B
	 tjAETnmFYRdUVIp/5vQjlaG/MWtsuoNh5LmEmg/dAxk0R+k8fmcCgZ2OwIPG/JH+0z
	 KjhxnguP+MqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B73DCCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212919359.12953.4996654698219711619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb94b96e9035e41ae6c552768cf71e47d722637edd35ecccb71891b8de5986c
Date: Mon, 03 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762129193
