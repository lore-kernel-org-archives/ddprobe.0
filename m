Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594841E86E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714683143; cv=none; b=AOHpKXfxkHprzexXvmEOYYJs1Es+c4PIyviyCFOGD99A/ngjyDKz0SAAtSJNbo974Tu1+A3mn7pT0KgRXWklR8xWhxHKesK1q/L6ChyiQttCxNimeNsrxz5zNkVCtxG4IwbH+bqz1s23kQvoHKkxXMDLAUt5N6+Rt6v/D8+CEw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714683143; c=relaxed/simple;
	bh=fuLwD8P4qqM173RPNMKUsQEXP5/hrfcOrN9dCBi2gjE=;
	h=To:Subject:From:Message-Id:Date; b=ZuE8Rgb4UEb18iJM0JG5g7OdIuVkN7lrCRkspC7n4n80bUATTz+9Tfwn8PhgbJDqo85RbBGApulD7UiDpC8eQNv/mBnwtbSJLJwTBvaabtv3DtFT3j3Ige2U9dDClOfm/Z4RS8dDxKzHtIHupD6YwP6KlpCTIsJPPqPjpXunFOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpfEZ7LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpfEZ7LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C94C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714683142;
	bh=fuLwD8P4qqM173RPNMKUsQEXP5/hrfcOrN9dCBi2gjE=;
	h=To:Subject:From:Date:From;
	b=PpfEZ7LPXRvgz/DKtpMZLOFNsWBxhi79Dzpf2wtqDS++dpUWd23ZaWmjdiivfoGqL
	 K1uzmugc6NoD7wAomKipPJmv60e9p+TmeQDSd1imY5aEIOM4gGaLs31AyFV0xuFIj7
	 hRtRGbVFFIugA6iYpktxgGbAWD1mXIl9AJybG4AYb1y9JlDtKnXEryaV9Zez1KZQ4i
	 oJ6s7WP2pKpmqLyq+MvB0NZTLRyDgTBcPPGqShalI7tGCgCj4dMPepRUYqd6Da3AH3
	 K5zrMdCW09/uPlXrUwPVL41FRgXOtAZCo7SN1kAJZNC8PqRjsBNNFmO8LwmmPbwAAS
	 GHHPwQCb2unyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1639C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468314277.8417.15355522694844496825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d72fef2ae035f745d3c86d5de261d350f866be2200c1a5112d6cc8a76b531d
Date: Thu, 02 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714683142
