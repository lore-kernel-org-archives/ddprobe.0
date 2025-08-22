Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A982D3EDD
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755840594; cv=none; b=GC/s/+EHeaLRTveIsb+lt/CybxJlz0leH4LNmLPmXRg+GR3JlnreSJmvsOfeQTyBpVLavBijVodnCYZOldBNjoYkanzg5h/RzjgM2hqZO7RccAqE5kS2pHR83V8G61OJ5hZqM0cY+CL5zqidQb6WJ0Okpci9FCpBs6tFCiI0+HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755840594; c=relaxed/simple;
	bh=JgcbaaN5vHRa37/VAZyWdYwLvWq4ueKeDw/lH+CejLw=;
	h=To:Subject:From:Message-Id:Date; b=W0+WaKyhYXe+xecioQGbKZaj8E4hcHyk0uUSNKhRygrD3IoEjIcZV4YWQVH5mSZKGxY2Yv3thqmw9tplecvJUcV3GIaaz9CWsAF1tJOLF6Tzecaw/KoyF2K0GcLGgjlWokP8Tpz/abNtGOLyHyM/bWZ45HzNZIoGkSRgL3zp7oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX+BjEtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX+BjEtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034BC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755840593;
	bh=JgcbaaN5vHRa37/VAZyWdYwLvWq4ueKeDw/lH+CejLw=;
	h=To:Subject:From:Date:From;
	b=bX+BjEtLaAC7ATzHv9SSt8hBa5xz70n7iVl9PN9VSYiyf7ByfjeetjEpgAuxzzSJ2
	 qFweyQDZtWkoNY3YQdIfjtUiuUOmK602GUZzAg1c8ZvpRL8ckGMY0RGch+6verZseX
	 2WvxqsQtWRfwOq32ZHfU1NYYEWQyMCi7ht3Nr1Mh0zbcna4IgcTB2nxGhiky6C/k0b
	 5cpxTWX7BeJTUfc56keGiNGJ2QMLo1GHg1dtccipTUG7bHT9w24byM2RLaD2WVUFS9
	 L/1zPKZm3SwEY6UlYI1qZ9cZ34468xMgilI+8YsO7WeUiyVaIxHEZsRzKgxDBOx7z1
	 pxSWBf2DZXMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92112CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584059357.27667.11562050268104853396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91a9f495c08e2bba8d30b428090e041dfa8ae4339286c6cb086278c0b4759a1
Date: Fri, 22 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755840593
