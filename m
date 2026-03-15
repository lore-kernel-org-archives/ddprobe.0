Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A52640DFDC
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773582894; cv=none; b=YWhRp8KG3BhZl5SVySRRah57vIlF8iPaG0d+yRMhLTLJXBEiIoPaL7fG4gdP98s5zRsOXGBuO0xy6aQ9iiFE92P2rHLejV1rO1ffqpbGUeUpCZvO8nhD5OZLoFaWtbV9dAiVyW1EkCD8lrmhsUkg75O/Jwu5TPyUp0hPkChkumk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773582894; c=relaxed/simple;
	bh=FoMfhWt9m+/tFpqAu/ZWZIg9rRyBekfvHnE5wosra+8=;
	h=To:Subject:From:Message-Id:Date; b=uHCxE+yUeIBdjAtfTw7xJyRzxXYZbk13e1hoK5HNRgHN1uUMF8ix7TaNSSaVFnon636D3njKtbI2SmYGFZfBBCp/3FP7aGKj4cpK7Axz2ARV/FpbJkBCbL5FbHpLvVHJ/XeEjWhFv480syAfk0mTEuGr9YBOx9qsm1VroFzXIC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3zVA90p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3zVA90p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773582893;
	bh=FoMfhWt9m+/tFpqAu/ZWZIg9rRyBekfvHnE5wosra+8=;
	h=To:Subject:From:Date:From;
	b=l3zVA90pwFi/OJ/ELsm/AjRwnHx135SDjUlDkaDsmqXwegk6FajH+RcvO1YSkwvqY
	 nGDAFx23OOulNX+IbkvwPMB4poImkPaWopsNoDRFuE6ONTxYE1kSQnIKJuke123Sby
	 BFXLidiSUyJ2k4d19V+mPHtlU5pROlLqIQ1L6SEMLMDeMFr7FhNAQK5dEjkHgGum+H
	 lJVO2dzrXDQZHXXom6rG0uTvySF+1Gkh0tz3DUUyCSC843RoF0QZuG6zlwiOaGwipN
	 Tf0B1626IcQsnGL1Am+ICViFpv8iCJEXWcd4ZqDpdcex+iYc2ljlKddz65W7Tp8JFC
	 MYGeAEUGs9i9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95800F30266
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358289359.2146.9859695493566712942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9946079799c82b7abd6c4f1fa4f4284c63329cabfb8b27c59cfe1f8cbdc9bf3
Date: Sun, 15 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773582893
