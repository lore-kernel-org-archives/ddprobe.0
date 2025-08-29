Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113E151991
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756432794; cv=none; b=sF4HucBxQFgY5o3Y9+zG310j4viKcw/yRW11IlwUQbP/JameFYaHXvQ/WRdcadFbKFNmfGpLJ4pkrarKqCwhUKPdjzBgCx8Fn5cLgPhc59RfoN/M7UnnNUTFNQnIHyzpIi2QlW4oIrqMEEvlfCVTkIYNLZa2dC1rM9SajZ4GfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756432794; c=relaxed/simple;
	bh=d8Lr1yCxNd2abVjBaNTRKogDhl8zVGeMs1z4Jt6P5q0=;
	h=To:Subject:From:Message-Id:Date; b=sNQ+hqZtSNik0EKqIWz3N4GPg+PLLbX1QJtjwu5s/jTKrpnR8LZzFnVKw+7YCJsCn3TZe6waCcKjC0H5M3igVLTkx9TMK4tiZKOmHCsMssnkpg3um2IoHAKI74m96B2nAfnSIlR1/byo9auCau8uqP9dRbWyV2QFbJK9oLEmOys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW6TJzLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW6TJzLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ABFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756432793;
	bh=d8Lr1yCxNd2abVjBaNTRKogDhl8zVGeMs1z4Jt6P5q0=;
	h=To:Subject:From:Date:From;
	b=XW6TJzLqJKvDVsLMhRDBK10kJgSpVE5H8rNkO1oaCAQDPKZVBn3Y8aMY84JJz+3Cn
	 biRJr7rpbJqy9RlbipFPd+uvvL8MF8aRSDjU5gDa+AxYdWaZUxNtwcHw5tQL5/PWxW
	 6hWb75HgznKmqI4IGidhcvbmhjlJDnYDNgr/XApyASHDiIzaCsfanWQhTLlBYzK9wr
	 3f5NzD1pqoRwXNyVmBPKRCkXjxEh19ZjqCWHe18HEMCT0LJTyykGtSAq4t0qFyMGRS
	 qNcweYnh04lpr04M+ror84VEMFnTKIlUchoxlUn1lNByLM7HuqZD1OU5VgmatAaogE
	 mKPZwOjJzoNXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95720CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643279360.20177.1603443704311980521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d918906ffc5188eb38c4688afeaef827d6f9520e65d29a17fc6ac8fb65f2e1e
Date: Fri, 29 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756432793
