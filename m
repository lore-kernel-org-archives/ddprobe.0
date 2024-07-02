Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725AE801
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719892523; cv=none; b=CiaQ462BOVhlczd/st8w7XN33ryFeYAI6udRG4j6/vR/z2blUFyI1gHFr6hFd8wMNvjD7HJmU8LByHIHuuqJaeTBFUa7Uq/MlwHstiQ29ZEsIP3aFcyL0Oj7jqftw9H/QpC6PtEQ0TD79YmP6/MvndCHOyGqiygHx/5Ge4NiVy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719892523; c=relaxed/simple;
	bh=WGqVBU+LWNCKpFTFE6/1qeMEQ7x47tpYfl2AOn454b4=;
	h=To:Subject:From:Message-Id:Date; b=rceDRgycwhpDa+RC0zDk0KlEPj9t11PMF+Zw8x8DR7ysWMBmCdWwrgc0uCPRJxfzKM20vfn6oLZQMkS9hKuQYfNBwLWZpIEhQQ83wj65E/tmfcNSlz4X+KJgPHn3wjOtM8A+Rs93xXhXQiMiwzvCAA4SGU4QXuZHThZ3kQl8AGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA/pTUZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA/pTUZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70EDC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719892522;
	bh=WGqVBU+LWNCKpFTFE6/1qeMEQ7x47tpYfl2AOn454b4=;
	h=To:Subject:From:Date:From;
	b=vA/pTUZIFNA6qQfQkZqqf3PnrSFBmnd+Ry/L1YYdMPiPByGs8z1xuH/XKAH0TeXRD
	 Ud/n/jnBNdaI50I9Z/XCOTQ/XoRYWWULBh9tfmBMPz4osQmnNvvbeqTfw1rTh3/hkR
	 nO2LKhPztz6TKHFydaZCupMnE8BkPQfbM4QQOAO90mXb7Eiyfscnm4DYgg/jdsm/sj
	 xklzALpDrb/LefodNVzQ+5eM9LGHmOnIKfGDZJGXDxOsV3N8a3z8hlUT7ZfFApA83U
	 HY9YU4x5in3e1n4GCR7nJgqWw202rKATavA7pKHSq7ZrQfRrtNAgwX9ODcqhpqawpv
	 +yIi88/o2s8IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00E2C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989252281.10449.366982593390171550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b685ae937f0fa810627d7312553f5faa6097e0a86569cd8e7b940500bc0c2b1
Date: Tue, 02 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719892522
