Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1847720F088
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753340995; cv=none; b=h+Z/zTvjYxedJfehFggKGZqyTDlrMj7scXeXueQggxUbRmI5WtYlG2a1qOHorqFF7V6A86TeeyBR2aw2EhUjPXztjCw5q5y6lQBeh3TJPNPVYa158yVpRtfFyn/AEmJAlB9GUvMYEwtK+7DE3gGmUscJNQhJMSK2DqHy4VShvvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753340995; c=relaxed/simple;
	bh=Wksz8Uyg9OqdT3ASdBZyprpegREgjOFFexozJ0Scbeg=;
	h=To:Subject:From:Message-Id:Date; b=XKXUtdBkA99vB5DbnQRojFHiKXLu7TdfUCSEUyZ7gSzv8vgaJzLdaeYdeX9ZyUMoLYMnO0b+LjQZbIj/fqCGTQceZzEWStF5WSVzNNkBJ9RuUvCOcf+G9Mr05RrJNdzE4un0GfIqM4edVNxIcgcgpjf8T2m4uhEptzUf6iHDi9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilh4+rRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilh4+rRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753340993;
	bh=Wksz8Uyg9OqdT3ASdBZyprpegREgjOFFexozJ0Scbeg=;
	h=To:Subject:From:Date:From;
	b=ilh4+rRGuXMA8xFvrJ3tZeBn8GWlOYJhbDqrX6kEa2LVCxFzY6hmlP0mPKxmRaPJ3
	 62R+O9byPo32yWzT5XlZpZXpmZ2Dmy7hfbT7MANneYt/KnSzfdrFiD4gfkpOA0Khd+
	 hpMx84u3H1KpWcVfl7kCUkiIVMuhcNJyOqY1j1F9+65wNCjKXM32rWWOOKI62bxjkr
	 JuwG9m19sP2d5nf2tTozNXtU5ZyZWK+V9a3gOFxCERmPhPKxWN1Jl6xN0QaUMir2x4
	 BFf7UdV/6u2jv+ycGkb5pvssGOjsosC9+lmlk+B/3hO/rMgsiJLu12ZbndmWjmfkmQ
	 bUs2oGiP2tCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC5C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334099357.29101.2620023703636646019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010e48a926f0bc4f21782669d827c52f96172c66b154ab554f706c86e9e7a0d4
Date: Thu, 24 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753340993
