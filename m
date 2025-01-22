Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378FD1CA81
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737507954; cv=none; b=ZAyERnz/HUlskslB77uOYJKVNBXjw6tt3bXaKJtAjHstRIKpvMz/KT0HCmjyaPP8YDDfT4RLvcHGlk5eDJyVIHerUy39wD3xkZNUkI9HrbCsm4opaKBndTZQY0QUeZc9D2i/J8h86qTPK4WhEzn6ZASoJVTp5yVyHAOjMkYcd6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737507954; c=relaxed/simple;
	bh=b2hn6Cl46JMKPEhgY7gavMxyHNSUrbfojfLF4QgIiak=;
	h=To:Subject:From:Message-Id:Date; b=u9yKGk/COfNPW4gV3n7GD5p9wcV/DmusfVPGNSZ3oEzGqbTtoZ7v/bwkP5MtxKG4UNF1GXfo+5ACLGNu0TRUdn//aw6bySaeUGMLFlw7PKNDnQT0A8JPh7E324pjrWlcD3jPEUr7ajw+rDgU67wZnATJcl5srKkaxYOSmyxs3qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTqXCH9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTqXCH9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737507953;
	bh=b2hn6Cl46JMKPEhgY7gavMxyHNSUrbfojfLF4QgIiak=;
	h=To:Subject:From:Date:From;
	b=JTqXCH9gRe34zOm9PvE1dacXlxr0cOQxvHFUdTL3RsNdyBCDkNm+KWY6YzPLOAgCK
	 XJwdAsxs/aR8yJWM2SvlKAFj4Po5LQvwgMSkzn0SS2Hm0emE2pTiZYwDmNOH64bRRX
	 p8mWGeBOeJ6a0qwaX0C9hq53Zz1XaF2IsvzFVOHbKiOCb9qN7i/WVHHhx+5VJ+TT7C
	 NgRXeLyWxbipYL5P72a0kvaqhpMs9pm9j9+tHmOC9Cls1j+NoxHholX0IfVIuDoOhH
	 jWcSr/blUvYGAolgeuzeyxE6P9zPex9p3cjHQFrGRZALQd6U9KHjbgIrPk/TUNEKHX
	 oluPxupWfBBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDDC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750795358.11331.17332880921910911042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32d23d3d8c74f5c043b871e2346b53c06aea396bb1cc9e8148ff946bfd3e370
Date: Wed, 22 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737507953
