Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6EF1547C9
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751667596; cv=none; b=utEMnOs7Z+Ellh0k3Hci6l7FV7bNjH1ymIPnjaUoCBwfTZRNpVn4kF2rhTHJs5TMKVRpjwkNtUw/8npCNVPNrIK9uO4CJhe51f3cUop4RlI4eKSEx5LhI1F4TxVidWLtP0QNl0Ezyvzb8wvUZZc/nF3NO5IJoHySM8FkpubsbSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751667596; c=relaxed/simple;
	bh=A9LbdstEjVWflyT9BuU8QYLcRd/b88UQTnxcNHGs/wE=;
	h=To:Subject:From:Message-Id:Date; b=r1H4rRSk1EnHCYIv3l1x/QdqnYxm1ackj0BvVNbBoNXBUR+KMWec2uyrbufZemsZ5EUMuCWCN+6b1LWA1t87AzxxnaK5DJJGO9Gtg1/axjRfV2utBSm85knygyqtWB08ojAVBueE6wu3z/MgAY7a628wuP2mZYC6ry05QZAtYTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk7vnzk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk7vnzk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC23C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751667593;
	bh=A9LbdstEjVWflyT9BuU8QYLcRd/b88UQTnxcNHGs/wE=;
	h=To:Subject:From:Date:From;
	b=Xk7vnzk6menwLAhsU8S9n2E0p6jamftmIa26lzlVk9KJxEl+cfWGjq3Lfgy6MGebj
	 dND0eImHKuZSU4w9s4SvbKlBxrKpGH5a7My8ju4dk0+xV3ywUaCCbz82kSkQxahqMl
	 6aVhCxuIm28he7IIMP9X+nUU0kavjMZyGP0CsG9zsRJ/WlEs0f6yfikcYrbtCwP8Gd
	 qFvLjKEtgUEGaBAhohhVGRqx68aEZmfPc7Uf/LlbMgWJPVXj6FK1luDzO5tMYY6bV2
	 enTzOHL4ZcE2ryZ6zmnXIkIbmU0zwO0m+TfrYQH6dLwJxpTmUjNTgACUDrLq07bYBB
	 0Rgsd+Mt6mCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB08C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166759357.14902.13598100616095519402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2e39577c5265f7cdd9fed07bac5584cce5db540d6bc3073f36376757c49cb4
Date: Fri, 04 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751667593
