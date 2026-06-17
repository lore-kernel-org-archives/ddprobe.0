Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E3137DAA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781722594; cv=none; b=e3gkh0DYlf+KiFracXebtauk0YrQUrpazL6UlZ6CjMMTHz/Ag+8DxB+x42cN+g1NFViQ7YHil/ql3ly5kiDiDvTO3Mb0ZUCuU4uzvFTFxKJynlMicWX0HPTGBBZOwLApxA9qN65wGwWp6tcH6Xq3ZnU6qhDmIC0NK96m+yY6mIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781722594; c=relaxed/simple;
	bh=EHxy3Z1a1l393zCtVK+/HGFzHtF7VxQAPR+xBbRddfI=;
	h=To:Subject:From:Message-Id:Date; b=iztBS5QPt4vL3KwcCeQ78BOR1oD6e7ie7b3PTrEZtKm+Z0VkZs/ZFdRS8rdTNXRgprtr2fgeTC2kQkAsJRI29uN67DZrgbHTKCX49pTKiz1fHG91fQAFIRxt47UzfWavpz48V8m4aMMirSGY9aHJVR1ao6MWfLqGaV4uBJ0z0Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TziucpFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TziucpFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE4AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781722593;
	bh=EHxy3Z1a1l393zCtVK+/HGFzHtF7VxQAPR+xBbRddfI=;
	h=To:Subject:From:Date:From;
	b=TziucpFEpBGLxLlpac8ifw6my9VyLQPtuAmbLiq9JtIhSi0rvwaWKbCHZWCQbVBRl
	 aR4xQAkOisqF9oUKrPFMktWRfW9yeB8HFxoxSJ7XUinktrk2z48xpEwO4XFVe5sx39
	 TMYpEEOHPN/hOuNF4s5KXLjlEA7cjmvdpS2jVb5FxDcTmcTIGUHrNxHdCGwdmG4bJc
	 bU/w2oLsCcgwb3BolU3jjbWlVHlnlWjuB5uOdsxBj16rz0NRUwTDTHeGUVIhgHlfgi
	 ocNcRGYu71PXoA7QU0JkBqgnUu5lRWn0UXkawq+HKuPbJao6seuewzLdtreyzpwcoJ
	 9wynsgTilKiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F8CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172259371.23582.8363394681542190525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132b1384614fca7578e48789bf64a82af2f75074856f24c3049eb9641f3aa4a7
Date: Wed, 17 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781722593
