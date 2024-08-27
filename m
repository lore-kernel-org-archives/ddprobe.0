Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A1F199EAB
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724755554; cv=none; b=YkCwqIiOTTJnZGA0JXgi6XO6pi2UCSd9lSudhGi5tat4gc2GbpXQwzxY8viVFsr7SKWZR0OKVrIwWzBII+Q7rw7DIKi7xSrTvfvyxwzF7yJda6Cpxbcn6dBJwy+9pAO483VQDmGhymUDKkw6z16zAUyrIp5DeqssxWbo99mVPuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724755554; c=relaxed/simple;
	bh=MbnYJ6wX2R3/O1K/MzHgsI8+zA8XB/9cEGz1MNiFrkw=;
	h=To:Subject:From:Message-Id:Date; b=iEzC3SF56EyjAth6GjWEg7yLgvjGyixIwVQqsJeyhxZGeI4mX51BGtYvWaFWAk7dOuG65fB9buFhBkON7JqG3rHTHUll0wktiRlwPf9OMz7I9uY56wUVHs00abm9wN6Ds/J3Vz15aEY6dAhV5uKJ3IyF2TdqvMJwpYD+kyOVjHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcZcH+fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcZcH+fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E616C4FF0A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724755553;
	bh=MbnYJ6wX2R3/O1K/MzHgsI8+zA8XB/9cEGz1MNiFrkw=;
	h=To:Subject:From:Date:From;
	b=KcZcH+frM6KXF9HTQi6qhWwjWA2h5fcjx0fVM70imPlMf1dSNfV1g+ZwoJLkOWPE4
	 coKB7afQf+nxLZdxHpd2cmGnOUwk5Lr8TZKkbRH0Du49WaVERv9ccg8HxBXxm6Una4
	 tmQWX3RcIuHUnl3erPO5nCdNU8fRi9kz7tCkw6yc7gB0BfypbjMRJ+VGMtyv71yRLD
	 rAEAYJK5FNIw95Ku7jm9onk845cexFmiCTOzba52Qb+1pnVTMfwC8R5HsZ9UUfxWnC
	 7B61oorkp2rp87vzYi0lizbwlmuYDKK0DU9AvV8ODncgHwwnzZar9e7c2SM3mWbb7b
	 SE0FKtkz+U+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063CC54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475555358.24776.2207945124574186676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba5eb51a168e925744a3a9402d032fc3046bdbe99e32c5d1d38b038cf16e18c
Date: Tue, 27 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724755553
