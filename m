Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FED126C07
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729219554; cv=none; b=N6qqI6WIXbG0XbXMAM25ghojqNy8ijp1LcWGCpMLXhoytxQqBoSVGBhWItOVUmblwl6AS8FzVdRKQvyUdDQohvkSyGjp0FzWb3iUCZv55vomPULy+WmGGQunevW/dXJrBQ0/m6Ze4INowdUwlm/opZZk1nvjOwBcvK/XpFoeVVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729219554; c=relaxed/simple;
	bh=D/dgwl9Ow7V/IjbbyXK86PfuBU25lVISNpXPsxas1As=;
	h=To:Subject:From:Message-Id:Date; b=SEqCGYf1Tx6Y09C+b96K5dtKTuKOzFePcX6j2zyDN2Vkp7ZlFmCA5CX7CXd1jA7S6qYqv6qxSaWurhHSH5C5IzNyq3M1o/mz7CH/iuUYtQif2P6ySgkHA2U+3KzFfIhW0SAUykOiIJHabdKYYeMLso0jtZhMYECy074ZCSQQvrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oopbuX2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oopbuX2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C99C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729219553;
	bh=D/dgwl9Ow7V/IjbbyXK86PfuBU25lVISNpXPsxas1As=;
	h=To:Subject:From:Date:From;
	b=oopbuX2Alh4V0UBQL3NrxpUvmFoYG6y3B7JmXhcj8PVDh5nImNThDHCRaFl6yVYwh
	 RUoBTMaVRbHnzt0J2sYVaV4VmRrIQr1q6eaq3ycY22TZWDy1JyU8Vl3SbVn1W75DCG
	 BPziRykt6fqsV1YxNI9jD8qbT2V/DQYnwRae4GS6iEQvVaD4bznoaD7X04a3oDg7jw
	 p0+hrcAO5mMAYxzgE7jrArboeSB241VIuF3r/fMdPkXcPVxYzX6rxG2qI6d20jSfF4
	 izMOsk8DPvZrT3lNv1n5o9GJ3/j5305+CtlqalRbMiYVaOx0+0DZOqUA4a4kPFqluQ
	 EVPCi9ADCwD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97994D3C53F
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921955360.18928.10229258720195208198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd891341b6d9510710270fac939dd7c8ddf661219d3af90c8eea06c065ffa52f
Date: Fri, 18 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729219553
