Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2440B27AC48
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756972194; cv=none; b=uwUX9V2DBwQdyPTrSD9jUUMa5aNkaZjE67fvB3CDGZFVM7xp4D6v5zB5sjrpKEgGvAyjRcyffqlo7seotIjKhZk8USSpwA6+f4MFX79F58YUNVrQ+4VahnxGPvtJ8w3RL7ATB2lnxGIgIi6p+GITBqb+p+K3CXWw/UI4QN8Cviw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756972194; c=relaxed/simple;
	bh=75/Je3adbO5Ks6k9RA05bPBe8RhPGLqKBq09k3QvdEk=;
	h=To:Subject:From:Message-Id:Date; b=LhzilTfB42wzCnk6Aon72pEzRZ+cuM1zNFw2JICF4njjDEEdXmPUBOQBjpyfowIDjcVr6SFUDmrGlr5OSIAIoGGdfW4NzN3MNTeSrp+kcRaQQQqC/G3SNfqTdGAGmsuAC2E5JEHzVpxn2zwlnt0QbTFx9ocOz5xYgoabj/eAsSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8CkJfTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8CkJfTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756972193;
	bh=75/Je3adbO5Ks6k9RA05bPBe8RhPGLqKBq09k3QvdEk=;
	h=To:Subject:From:Date:From;
	b=Y8CkJfTa1IT7eCvmTaggZQViUpTwAA/dwUWfW0kDLXa+NofuqjIpMEfWgY1RKvtQE
	 2BSerGRaDxAn3x2DctLnfmICg+lDDoqGPoUVZRJArulQqJo9KGO6uIxxabaoRld+Uh
	 t/RTCm52WlSqCAPg4/6yh+y121F6u9DnHx4bqQvbr6C++y99ffK3iBLiZr04NJ7EwP
	 dzaYq9FHvlPD87SSEVQesRx6SJQGH81uskWGuB3BjIbjyHFxHPAlBN7mPSiuOF6dnR
	 Utuhr8cfL+o+mHiayNVwMTDb2krixSAf+E0TNkzyoy0qAAU6ZS5EvzzGfkNkWzGjeb
	 cFj3bGpK3bJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF7CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697219358.26799.14122021319459459672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c92e61fac1c93b0acbfa68e0ccc6684a75bf78dc76c6141793374bfd9f469f2
Date: Thu, 04 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756972193
