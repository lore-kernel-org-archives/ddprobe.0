Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7433E7F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720915823; cv=none; b=KSjI3Kb+U9nhnVcXk5dtjIEcTCw7nnh0hm4YZkJS7hw3/dJ0vJCNna67pzQ/mVWzZqzF82/cAWoTWkQLWfxHEUG2o1khwr45FltUNKsxuJifO/9BRb61eoUkyjm1TRsji2h7Otm80AKAS5hhUV1R70PAiWd5fKxYadn9biG378w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720915823; c=relaxed/simple;
	bh=B9U0iQxOjXwRV2LPoJHEWuXzwWtgZwGB7BpYNwXPQJE=;
	h=To:Subject:From:Message-Id:Date; b=AqOUIgijcr48e1Ak36+8mij3lxOkkLPHwuoTWi4XxKVll3rYUL0TWfJZ2RMMjmW1JwD/QdEP/+IXiGDN5sXgISe+U/bIrNAST+IWYDu04T4yNnGjZ2zZOmT8IS91rKI0623wRnxEQ3FiSJwKGSJ/Xo2CL/3ties28G8TJba7cZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHbQ1nIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHbQ1nIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A77C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720915822;
	bh=B9U0iQxOjXwRV2LPoJHEWuXzwWtgZwGB7BpYNwXPQJE=;
	h=To:Subject:From:Date:From;
	b=jHbQ1nISIY63y6ZVlH9rWTUqARu0batZkA2OvlHV76PssohAssC03wHJSaoy9Ci3v
	 4qpeFFs+NvPCXXCygVEIQ+HwBie4TGwVz1gURywKFNFVarpoP+Denq3puP8m/jJb7g
	 o5GytI/OvKSu+c8YM8N03CPvJlx/P0UXWLFrQVZmBzwVjfukKF3ah5Ok9nIaNsSJ2H
	 oKgI6r9B32tllcwkV1cNqTtgz72iuyaN8Bjc2hZ7arQmxyWpDeD1Y01bURJ4PZ4NZb
	 54R5v9l0F7oRuqDf/uX2VhRrewYvAh8nVLQ/W2FgCDvvXSpLcVWcGdFwfa7MA8RzYi
	 3ljJ70Gq2JV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD14C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091582281.10512.12074563477137703340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c66328fedd82a3b9b514fcc389395e9364516dc4dd7f10be5c6e592b3b6828
Date: Sun, 14 Jul 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720915822
