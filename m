Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD93323E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749350994; cv=none; b=hBIfPJOT7d2WFQyVZrXvE+1ukbc0ub/ldLa9MtUfwFmI4LQ10d/UF2Dzqo+zbBQbWz+bAsdTXfB9VGuhE7vJElaYsbm6cTuTcfRIBqwTDJ9so5nyMzpYb8qFzcej7p0xhXQ+P+FVgTKzIpbUs5U8yQ/wqmrr0z3mztfb6Kwqy6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749350994; c=relaxed/simple;
	bh=l2VPLH2KfrdcgCufuodWaTBZSXN++spWef7wSJffbgk=;
	h=To:Subject:From:Message-Id:Date; b=nzVdX5tYmcsBtii+vmhWwbZ6JSlcAWNQZyFvCrhjLQb9OwyXyP6RocCkFHhasgEcQnBcsj4puaxgqqPFdzlQiSzJPa6L0RlVpla3Eij9zLR+bCB1RWfVVfXeCaPbR3sdjy1oAngbvZezv56MgTZlLMLUoxioP2rOJxrgpl4UJY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnGva8tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnGva8tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD331C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749350993;
	bh=l2VPLH2KfrdcgCufuodWaTBZSXN++spWef7wSJffbgk=;
	h=To:Subject:From:Date:From;
	b=gnGva8tvZku13duvPRBZidcbiQPNhCibnKfMagfKhLAX+t29MjJggCiXKLgEhDj08
	 I5ChcfKOMUAulo+ZymHNqM63Ji9QoZ18csnAfw2oTAAGBgIN/Uu6vGPWYiuo1P1gXj
	 1vq+jBuu7mdeAzbv9nu76ylb0/EiKlRuiZIWeYpKeQZ2OtcinFUGyo+uqopLeMPkyz
	 lVpkJ9KGpUKmf2TFhSYNyRJ6S+rG0etue0vgT/Ago7qT0Jt6qqM7ac/I2fBJ/3ky3k
	 Mn2Zmc1AsQbqcycwr2Gtqz5qh7BsIvxRpjatpsVlQg5bYyKgSmH+qdaZ2qbD2ZJxSi
	 afwPwDqs158jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D9C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935099358.6363.225334493507453653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498292f045d710f213ed929e9bfe33e912cf5113636cf081d40e96f526d29cb1
Date: Sun, 08 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749350993
