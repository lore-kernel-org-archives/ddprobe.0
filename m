Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746A13546C0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781386594; cv=none; b=VCpB6O4E6odpcHu/hwTJmBUF+TJfM2PVYJf9rfA7A6QwdW+d3cP7pAH4dkJzE8QtAVzWe8cA1FxCrlZi/G/K0rH9uhAmH+7m+OuxltHzrg+t4aym6gs6vNxAmT0CQFbWK0xJ5yBUkIkQ7q2nNko1SUy1XbHZ0PgOHBghiWIgRwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781386594; c=relaxed/simple;
	bh=wZ3RAZFT6zlg5Q1RGm0rNo7hDbBWTMAte18OIhxE+6s=;
	h=To:Subject:From:Message-Id:Date; b=g1+0TrsxuGLpJEP36rucIgkMSuhUr6bzl4nufNcUIA2uYraGyRAfFkGpKZ6gBwvxiv3MJ46dxA4Y4sSbuTEeR6IntqEud4m4Fc7psZar6zD9x9ZAkm9bLuQU1BBNUf85OKBA79jdXaIme/grqUy2IsGlz0LhEZpQh5UhcffR6QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF+dMoEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF+dMoEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF631C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781386593;
	bh=wZ3RAZFT6zlg5Q1RGm0rNo7hDbBWTMAte18OIhxE+6s=;
	h=To:Subject:From:Date:From;
	b=KF+dMoElws+hHwXvFJae/EF/9dCPMg+QBWcXwhbYt7JITvFiSPmVws5qEp2oYoxQO
	 4HB4uQpxoqRxUyRB6kCPbIdeAGug41U5tnbUrEk5cQOymlEk6/wHGXCLuCiJHoD3fK
	 15drBUBURMMHqGOWvjcqhEhIQRQ7LmeOR3VKROWz4eFupp8OnQTbNRk/s9HBIURX+G
	 tvxxugUmqm0DEphhWfE/oM6ZNyPfGz7J816C2WWILcNlZWP6cFHzGmVY+VibuCq/U/
	 4EkMw5/hwsSiE1Sd4nkNoLu++rTyJ/cTbYT+wdG5q72cP0dYkr9YnZCBQQSd0LvrrF
	 Tn7GruwC9zqIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44BDCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138659370.3646.9938389250316997681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8486fc3e1dadf72ef9cc65ee99b403e2c31a6e277fa4197addf0c6bd1de959c6
Date: Sat, 13 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781386593
