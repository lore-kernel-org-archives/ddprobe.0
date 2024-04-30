Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54960172BD7
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714504343; cv=none; b=Fg+aH+HjzOt/lniRqjXkSX+jv5QDhfYPEgDp5i80/Czlh0Oie2O2XieuvhDkwqd8PZnIkA2P7QbTJaFKrYBTn7agU8IAAGFmbfkm7NypCrn8uOK1qjWPlb1bEaudH24sglf1Cdha7+uOT4RLeYsb4CEgvgGH4DBs7PLn72et5gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714504343; c=relaxed/simple;
	bh=X1l+muRtTx3j6UdrLhhbgLrKSWMe3Rg71ZIsfRkb5ic=;
	h=To:Subject:From:Message-Id:Date; b=hL8lUQF6UFBKbsNV9b6m/HmWgqqeV6YDzig72hQkinz+k+T4Z0SY0s3OsuXZmAYFoQQqLff0HqpRK98tzfKFvnXaKInOJcvz2r7vyaYCbvhdFHEcmxZ3b7882VryQLOTHRq2nVKmNGncmBxuCykaNbBAh8fbI/M29saKNLjfaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdOK1IOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdOK1IOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEABC4AF17
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714504342;
	bh=X1l+muRtTx3j6UdrLhhbgLrKSWMe3Rg71ZIsfRkb5ic=;
	h=To:Subject:From:Date:From;
	b=EdOK1IOuPrWCridgeJFmS2w6R/FfKdEvY6woYd7rcCBFySmqaqWkwLT104t+uXPv8
	 HSvrT3AdCxmI2V4vkiGxhawn/tAC7dTSCJrGqAHS7ct2AsEUoZYFN8cJHYhz3IvRj+
	 d6wNHH6ojcEvA+K9M88D8g3Bt5ZV7wvX35yGNqqlG05vXSAFYY1z7rXgB/MtxGh16F
	 vKWjL/wd6maNvuyvZIiUy03Y3t0Vj8b4C4s10XKQA9YkiFCuYM81GQUKtxVxb1XQgc
	 DLy28BHxfdGDz0ICfVMFZMRnQL2v1OU4XGb6JDmrZLqEhT9htK6cohGLYrg9v60vZt
	 j/yYInqy3Lk+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC86CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450434276.11392.15253938481416275238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d3dc8caea2d899d665ec9a095fc06ac2e45a931c6d5a36c1988b3eefd39e53
Date: Tue, 30 Apr 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714504342
