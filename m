Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B5942E413
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788990634; cv=none; b=iO6EvQWZx9wUYvghD1U86tVkk746kSuqRk/fqRVwsOEerodbqJIQ0w31PUMR4BMqGdPEIjZ4ohRAMYwz8m5yh5FB8m/Bl0gR6g4BzIa9dj7Is0bPTtEG45pnUa18xdWGodTjW42nv1Kg2zd0dNTh34+bnQ24NW/0PMPZ0JKj+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788990634; c=relaxed/simple;
	bh=uly3qvCM6l5DJ//CjOPJmO1+mLz7CnhVE/FiKkFhYBQ=;
	h=To:Subject:From:Message-Id:Date; b=sQ+pIk9GP+IlVZxt/ejF6mOaZ5M+on3sb3wLIHL3Lbrr4ECMv48BXwEJmb1ow9oaKWmG4fQ3Z/++F0HxIPH8n519HhOYSRA1NkpdR5iNAiIZymT87XPYKS1/iy5JvgMJPLXNIjY5XAVfWTFMZowFe+522xo/QcqENkYbr2vlVI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f52i6DOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f52i6DOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36A7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788990633;
	bh=uly3qvCM6l5DJ//CjOPJmO1+mLz7CnhVE/FiKkFhYBQ=;
	h=To:Subject:From:Date:From;
	b=f52i6DOszd64f2sEINymficJLrrXIvLjy0KDsC62E69BB6P4r1A4PAA6lMdNufPV9
	 p978KhX8kR5X6qRppdwAR5B9PiO7i+DmT2D7/ViYg9vkTCBzt3mFYK0IUZdrK/w2bg
	 XmaRp24uNGgLUMQ44rLbQtDoxbgi55iwsejxhotWWy602uYhdVUdo8oZa3Xu4eaNJw
	 ShSLgcr+0+wqTsa7UPIpb6zwciZajN2kaZK4s5J17qepotxjJeY1IXMX+f7QzRh+L6
	 KbxfrI4aGBPdqAjYKYBhN85x2pZ31Dd6nJidFd2mtXPXVnmIkCu7wBjcjBadLvfdPd
	 IDV2K32KWs1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16BEC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899063371.7358.3349505555838481816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1e08a0e1b2482377aa6cc44c06d6b2237cc5dba80acfd475118619fc16d1a5
Date: Wed, 09 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788990633
