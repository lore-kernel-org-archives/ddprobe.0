Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CA12FB2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750652394; cv=none; b=I9u0df19+348GM+CobFiKSjMa4EnHP5jng651nNz+HDBXSFIy0lPuR+o7bA8np1AVYvhb+PNZlHK8l0AGgBUuKeWA4/wvy/mhv18O11rcNk1BclMLAwYPUbDohldE7GXOHpmb+jlL9E/YXArKtAw29ZlMUz2bJiVf7WdboPyqos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750652394; c=relaxed/simple;
	bh=H1rEQNOgIWbptww7eNWbiPZHHju4IMrTsxFnTZ4S/Ow=;
	h=To:Subject:From:Message-Id:Date; b=gJvA4L3IcBnYIoxL+gTNEDS5X7jXny7yS+rUJO2us7i7U2EimWN+cj0xxNTxs72BLEkidT2eb+55nLVnQuBdM00bWrLleRhr/CzxY0Fqw6h9hT2e7gWbkeE65nnv3FYsDDRLt20APznEZ6zHbdHQcAmgpjcVpUf69nuULp/QXt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a977GHSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a977GHSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AEDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750652393;
	bh=H1rEQNOgIWbptww7eNWbiPZHHju4IMrTsxFnTZ4S/Ow=;
	h=To:Subject:From:Date:From;
	b=a977GHSrrO7aXMCMGDKP02Rk+zBEFLKuAoAcvYunsdcZgY64ocEKjEDrET07GE6dR
	 9pC03CZPnaqbBn2IclQxnGLpEpg/ShWBXTzDwuT2QdaDZMtcemqfNJz9dTG8l9Z6F1
	 fif94C7iXcS5zG65RbKYepubJomDOUpvBxsY2/TSApJt5lpohxmODcRKHdOXjtV9uE
	 awqP1z6M8TvsPlSgr6DgfcVZRh5G73tqyWbAhRAy9FiAjwna5HooJDi1G1+7zpKB1L
	 k/1gCeDK+R4uDsTu6CSXoRL5rGtl/u0OXk1Xnlxqkz42WfhTT4g9HcqtNRyy69O0CU
	 qs3c9+lOb5CUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172EC7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065239358.2045.10425821650730594340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7aec3cb594b312a1136ec809e0543c881fa4e8ccb761a5e908d4c846768575
Date: Mon, 23 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750652393
