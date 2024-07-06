Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748D17E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720238723; cv=none; b=rQuMRAx/b0x2tHXG0nF+aIeBsPNm/f2g385OawW+8FsTaebel7vK1OAk2MYH8bUEaaSF0VPjSnkQKwAuF0xK4PbQziFILkiwpLc8lF7lw9fOyuAkVN7fAol4Mfnr+DdcsWYhte0TF+lnit0atOJBtjwA1ZRnh2fci8MT72YtQnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720238723; c=relaxed/simple;
	bh=N55/ZbmjDgyCmXbTc8hbbdKJrKzSw11PAPByfijGBFQ=;
	h=To:Subject:From:Message-Id:Date; b=EYO5fYZrwyPi+Jyl38NHSq9Duo4g4Rpp2tO22Jbh3qrtFNNBTjU3KP3QmOrg4qFDA0cbIFd98SZ2Ss/6pamCTH5EvdfnaJxRuPnRLBWiq3qv5AjpQsUI1xr8lp3cDPuSuZ24lMqvcdxqWjJltt/DBiMMdcsdS2xEKQrF5IBsoWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElB2v1oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElB2v1oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0B0C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720238722;
	bh=N55/ZbmjDgyCmXbTc8hbbdKJrKzSw11PAPByfijGBFQ=;
	h=To:Subject:From:Date:From;
	b=ElB2v1oaUwq5LtOr7caq6y0jH6IgZTDcyC8ExTm9dgxOrpGdd86wrkJoJnQ2KIs5+
	 9l4aYJVyGDSR9VEbPKrigtMhRUpaZWF6zb72JKzrJEYRQ7O5TUawNzV6wa7rhuU7+M
	 nCFaTnCcNa/xiRmgmet4VlYpGaj5OKPPYSrc6AMK4O3Fsv3w3RXWDhNWu1EgXvRyW8
	 H6gcK48+JSOp6HhUSHPeJnFErDj6H9IcVbasy+u4NJlKe+aimBoJ69SuYhBxGdCe7Q
	 v5G5Mqbg8siJvPQnsSXkG0Jy1jNTuMRFKZM/TGJVjQzaM0OENQRDPYJQD/o1+FLAqg
	 E5rEYgeJXIntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47C4C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023872277.3691.11001932532808884264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742e8a9b532b5dd138f5dd61fbca95898a88e547ac9ce085a212aee5757f37cb
Date: Sat, 06 Jul 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720238722
