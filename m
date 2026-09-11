Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1FC3D9DB4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789098034; cv=none; b=Fg4vqvcSS4nVx65R+WvMIjOwe5rQ38/XPaMRCWfI04HHjRK9nwD8ApBfodJ7jMu+ENxbpzrAMROcPcP39VkLTlya0T+CqH/ZWcH0tBH5Xl/Eb87Tvh5lRBVHpbOCjzDp5ZoKaM2BKWSizl23IJVVncju3nvsDqnXSN34xmUtTuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789098034; c=relaxed/simple;
	bh=mypl7RvoTZpwLJJ3HgYhGKZ6pg427D0kGOTmg4EfCVI=;
	h=To:Subject:From:Message-Id:Date; b=E5E/mVw/Q6MPA28CUMtBkHQWZrVAKSDOD9L5TyoJwwGwz1i6+Oh9yhNkmQRKyH3p151BLwnWpUS/lOEQf5uv4e36WevgCpxopflnooK72pXjDkp1HPccXKDEEAlL0sag9Ydtawh2/luRNHaYGT6Ug/f9RBmLJ/JB1uHfMvvwacI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSBxVEgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSBxVEgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2D2C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789098033;
	bh=mypl7RvoTZpwLJJ3HgYhGKZ6pg427D0kGOTmg4EfCVI=;
	h=To:Subject:From:Date:From;
	b=BSBxVEgYMPmcQP8MmjmPxb6SBHL2ECNUh9Hc+SrdkbWjoYK+dq/UOULlJQWfQLHDv
	 4ChRbqz4XsqhhkJasxJu3bs/pR6dmIGqsxdCxAYpH6G/o3PmVWkNlo6gnb6b6Cm4aa
	 cqNvw7ojYYeknjWoZGFKS/mxcWb5fSNuF9ivGVlhiG0V1PFxrTautpzebe49I8M9jp
	 nnWmD3DgvkStHYfBxl+Gxo16cmo4wgCjXy6QiZseioDYgfbYMffzk5/eNdHhFJKfUz
	 9ywXjrVcPmMnKtvBb3HfqFl9cOE91Ca2ABG47axm7uPITzlGeH4lIjphRkAOFCLK+4
	 UDe8LaTJYXzoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A9C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909803368.17924.1315344200727802825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac9e5f05d95256df22f6f11b882d1ad6f69c2ce07401ac340c2362f28eda9dd
Date: Fri, 11 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789098033
