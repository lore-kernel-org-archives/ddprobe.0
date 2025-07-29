Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E091FFC74
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753759794; cv=none; b=jRHszdSm18o3RO6ZQK0RM6yOfLWLcyVTOY0K9LcHnvLYEgf+Flq5rBllMpzf/Z/X9RNjTcipnqHvlWzR5Qm0PeCZpe7PUL5O74+brAqLhld6kMT9FYepPlyN9n30x89C8RWpqXZ9+HkRsFutSSABP7G4ZZF9u+KgYg8BoJ5juX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753759794; c=relaxed/simple;
	bh=1kc5M52T20q1Ef/3RzKRbEOmADy4F/I7l99ceC4fiCw=;
	h=To:Subject:From:Message-Id:Date; b=KnrHAjwtVENaTM73KK2bIAqeE66ycDPAw3OtR08yVaWjUdOJmagY2PqM3w/Z5WVdXNySh7eC1qUCmCKZO/FKJFlmzmFuVaSrZj/i2kqZEYfqloFUVi7y/ITOMkfXjdeAyuJDE6WkqVQsLmp243eN+86dkFp2ZRPKOGGxf8iAqMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCJKKS2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCJKKS2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A366AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753759793;
	bh=1kc5M52T20q1Ef/3RzKRbEOmADy4F/I7l99ceC4fiCw=;
	h=To:Subject:From:Date:From;
	b=BCJKKS2FuNTlaX+qdKwBIYc02aEcnz9lKCTbA114H7Z80luaIdFRxaptbrsOuD8Y1
	 ie/Q93Me39tHdgpNV2XR+1uEURYsagy5dWt/zY2j42f2o0LbrY9F0Ii+WUKRyHRElW
	 /3LEtaScjgbVxRNIUC0MCQtRoOzxuDr2JymAsCvVuSQ9OyjSM6NXpqr4gMAwSldYLe
	 h2vEhs2+Nw8ibaFyPS0/vhzWTXplY9bVW6EshlpPcjcjZDDEgnI4jefkTCVuqMGCUq
	 t3SvuR7MNPrcBL6Z+h1b40epwEOo+J5p+hLiMrjFrKvbqK/3Y2FAGf7010LE7o+i6c
	 TacyLAvDzK0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F163C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375979357.28070.17027303997490589021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0f6837b5998be331ceeb9d5a8c88b790646266fb2dc239c41bf239fe473358
Date: Tue, 29 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753759793
