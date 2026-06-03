Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE6748C402
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780515274; cv=none; b=uWAaQX8wKxcnXBrQp95mkYVmk7SHJnzhcsmmlg+7bNbd5M+Ngpj6wUHGrJ0ac1phJP13gAvWN2wl+HVz/7w0qg2n7qdwntbrCKhtpRorHjk4yct5WtklUzoyXEBWz2QzvxFd+mqITi+zEc2qfKwAPB+Y8VpWas8SysCvIk1c/YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780515274; c=relaxed/simple;
	bh=k6zFJ+3rtUpq0ps7SasyBsT1zccmaFTeMNT540zxekE=;
	h=To:Subject:From:Message-Id:Date; b=bABJEDbJTePwhxQ6ULt49kBY5StEFXM5C3d/dRpBvJmYPQH8fCn2LIehgk5k3mTqXjU3NyxrqUmvV9/bHckQ9B5AJ+PvGj04FgqwUXddEhtNuNkTqqM/V6ZA72R6uFvijAkXRyrSelw4CsXm1s0f4hg2xE+U6NWARWQHqivgLks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYcyH0MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYcyH0MO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB394C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780515273;
	bh=k6zFJ+3rtUpq0ps7SasyBsT1zccmaFTeMNT540zxekE=;
	h=To:Subject:From:Date:From;
	b=RYcyH0MOilLZHuE7hrVvO28H4Rv73BpYjygjgGGfK/YDf5KN9SHQcgdcomsS5H2mc
	 RtTNaffousKQTQ5zJT7vyk+bRf7frkRDLvgtihO6tZU3Li2ZKn4JLiE9Ei+gic6eki
	 7J+QTkLElSQNgytkNmxHOgjNFHc2WAkKAan2RpG+wjIq72rKlKGzU+HB5s9TdL4DD7
	 kX5i4U0sXKZFbeqDa7nMjtQy/zZ6uNg0fqyrbJRXV7sR3aGI5P9lwMHDUz1d2F51NR
	 4+Vk3iafItPLqAYj/3uGRYuakOGhFtyOcFF8j9hS7l74NMANchqM56CZa1FC56xM+x
	 Vf4JMOzDX3huQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13C2CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051527371.10134.9941958297724854748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2566868bd926f1b15f465943be3e68b4eca68d9a6ae0dcf96690449bb63660
Date: Wed, 03 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780515273
