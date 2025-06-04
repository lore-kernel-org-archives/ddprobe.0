Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF852C3246
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749022194; cv=none; b=NZ9nDPUK6lZvN0Z35KmIyF0CGQfA9mz9+vkiygr3OSIdyeXkevhrN7Uv0SUK/aMTRZmDhWn4XNwoYxpbKePjSpPiNJU03CUjL0YEVfCV/dNPSGrpg4efiO3syeWGC+LVGqIkxV2Ktc+4+yhGC5iKicbSvZeKz0U2f9/5XrCvodw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749022194; c=relaxed/simple;
	bh=NDtuIIA8mBY4NRRfS8Evkn/EZHhW5W7dWmKUPja6Xzw=;
	h=To:Subject:From:Message-Id:Date; b=NuDKNw80j8ASury6DyzHSnYfELI8u7Q7VpJYRqavz8ZmhYSxy9R7yzgNrw2pHFceIF1FUsXzlUZApU657/UZHI3FLKg8dguIz4tMhuLXzNmKlLXOzBqcOfddN95jLusabOnNlLUvyjyMT3AqwTh0So5ETQHwSIGIb/ESbAfuzxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DD6VXRQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DD6VXRQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0518C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749022193;
	bh=NDtuIIA8mBY4NRRfS8Evkn/EZHhW5W7dWmKUPja6Xzw=;
	h=To:Subject:From:Date:From;
	b=DD6VXRQJAtMdgtbz7P8uGhxfJ8OmAaGCztzIkLxG6pRntkA4woLXiopLZWaTFR/jD
	 tlG6Grl48BR2EeI1lMlqWBn7+HagGnrJ9G6OG/HqXcFZPEHbUYZM2Ej3ThASDhssxX
	 2g4M1bipi1JmG6ZZhNQfsDd2k2LDg2hSTltYI8r2Lj+6oDQfsHtOBLFbDGLvILbQBo
	 PPUwVgApPFlnyy6xxfmmY+u6rGUbGAOqMs+PcGtVvi0xjk8u0nnsLSg0zuyorBbkCN
	 EkF76D2myIcYkfTQzS7ZPgelbIKRpOutltVZI7DhrkqL2e7g9ybmZwtOGnXINXvu1Z
	 u1+dWsIx/rktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90406C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902219358.24096.6214127021281822845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02474feb9f40c7a889ecb3332b11844c299f85eaf4660abb8110841bbe85f778
Date: Wed, 04 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749022193
