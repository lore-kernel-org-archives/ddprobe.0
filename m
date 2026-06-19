Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A92C345749
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781848594; cv=none; b=PjStrdj9GG+C4vcbKUpacIo8hcOcWmYUHnzOK4rUY8tB/ujw2WELi0KkdJTTjEjSSACZL07uELLfn7dyCjeR4WC6KhXOxrgl2EQr5Chjw51ef/cwSXOmHyGU0lcihOpZ1kL5HlYxg46i9ix2LY/iPPpqNwG2ecoat9whse+xp64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781848594; c=relaxed/simple;
	bh=PamrAfFC4HVSmpBe0UPmzYbtAQOkRQnFXTzIlEK3LL0=;
	h=To:Subject:From:Message-Id:Date; b=Pk+fZmkM3c2DygkX5ArzPbevXCHUgLxK5iVURhFAyVBi3ZWR8h2OJ/kiAAiwZoD5p98HQPZa/348K8csgSxLm7R2Jf+WfteHQNE+Qni/DU1P5YwNXXsRNmrI19jw41rhQ2CxW5Ay4Alwuo8PxiH0U+KJ7E4U/vtB/gI555Pt4S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzOJN2DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzOJN2DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E0DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781848593;
	bh=PamrAfFC4HVSmpBe0UPmzYbtAQOkRQnFXTzIlEK3LL0=;
	h=To:Subject:From:Date:From;
	b=OzOJN2DF7wq3WNC9XRRr4YpAIRg58mDOb4NRoNgV8rRY9BOMkSVB/QsmL2kSPqtVr
	 NCUPnnWrF3hhlmkXk89uNmto+2a3cPnwgXYsGBPJwhhrhm8hcbKznt16Z/shGFo9EE
	 60bXzEDfUjey6yxqfzPS2IZRdv62CQJUNqefBzciepHJokCQw73jouqQgbn5Umqe76
	 EnaWNe+hV6g0Ddw01cE/mvwmh3KOcB8lEhDG2Ez0LnK66uMY8r72zov69Y+voYJCPD
	 yU5ApiHf5zFTzHcsZIGuuwlCqiAKziKQIX4kKllzf2vMjgV5mp3DXg9MUOuSbTSAwz
	 aqgLNyzHRdrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9274CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184859368.26503.5027821252102339723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31a952410fa31b5b444c60e8b1743e49d50101ddee5ed2b86e4ca24f623d59d
Date: Fri, 19 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781848593
