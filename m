Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B830E842
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750503595; cv=none; b=pv8MHkdBEeuhbpuX5ki6JQHIyGMydH2O3GfxPk4tD3SaWmfYF56jL5L4vQVlJRTc8QE6kC2TeEevGmGUvYyEKbETAF8sGHfECP1jEQS7beohO5C4QtB53n/ZsddOUyTdIWnTrAZ+j77107c2C36qxdeDaSQBBtXtAyHIDWZddiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750503595; c=relaxed/simple;
	bh=k2lQJ5D1styMi0y9Ju8CF1NDCSD4T7xgIoRnCaAVSlc=;
	h=To:Subject:From:Message-Id:Date; b=dp6iBJcxXW0+4JXMrgpSDgp1Nw9nULJc8onKEMGwpJ9L0KN23rnCVFUgdOa/wNtuln5/Nrbk9w1nM9suMDrv7G+LzJlkXUO4UvIqtz1fb6UB87gVXrUtjDldo9hKyAB90eV6U12cEYNxjA/8SnA/eswsc83teNV6USBZP+C59OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsiSUF8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsiSUF8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6173C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750503593;
	bh=k2lQJ5D1styMi0y9Ju8CF1NDCSD4T7xgIoRnCaAVSlc=;
	h=To:Subject:From:Date:From;
	b=ZsiSUF8xDSFSLsfwaLZWj09t3oOHOfV9g/1rp7MmfzCHJQ4s0zrwRtlB06rzqYOOb
	 HJeju84v7BUnkgHrJDzcwJG25RyCawVeDsodDQOshlWj3o8gh3g2KLsGsZgsVilFJJ
	 Mu+Qk/hZDZDe+luifsN4S7Rwpeup2qSAYwZyM6YwNvaDiVKSoeYIDwJOsl4dpqWKKX
	 ci49wMCVjEoaR1k1Pf2XRpf1mDFdi7QDHr4nWIfAvvCMm5DvVjQHTPsKgPRTn23uQx
	 WN7OJByM41Ua8NwSCw+f9HN2LJzH7WxIK7MCYrKp7Iwt6sZZqd2eMz3yXW6aujO+z0
	 f5LFJsUDTNeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BCC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050359357.30940.387549178696048988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ad5af7be502ba170e02e9e276df7c560ea3057c6541c80798f28cc18f70911
Date: Sat, 21 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750503593
