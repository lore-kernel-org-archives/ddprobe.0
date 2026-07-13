Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C2033D4E1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783915114; cv=none; b=WP+kI3z5BFhX/h08OmOMMN2pvA471TjuETn5eKxCNjwV4NGx6va81x5bbap8XKa74BEYFekNxS0xngsN3aCQe05ZPaovKpOJP1yh8gqZIUgkZ/OKFWF3ZbMluk9k9pJGr+iJMcsmQVOywrCalvrWrcB8zBxRHgoxQIgKOGLZpOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783915114; c=relaxed/simple;
	bh=9c8Hhl4pkMFcj3FuyZut/CQw3PQ5w0lc1zVYUbwtmy0=;
	h=To:Subject:From:Message-Id:Date; b=IrPbht+8O3nrCRktqwswo7qTYIjpEt3utdEsddo585eWYrJN+W6ekk/zhlv8FfMU7AwWI/8eXxg+PdLsAzSMGZ8/c8o3YLSBUxVSBVf3FATsui0wu6edybURyvUbbkS2lkcoKlp68F5mmyi3QPV/O4jhGUJr1Bf3q7k+U7LaLi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZMeu1En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZMeu1En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB633C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783915113;
	bh=9c8Hhl4pkMFcj3FuyZut/CQw3PQ5w0lc1zVYUbwtmy0=;
	h=To:Subject:From:Date:From;
	b=EZMeu1En0D/+FOY8M19zEU5/MpDp1vQQsKIT5U78WaCpLJ6w9LAstbDE5mcw+nM0M
	 yb8fRNAZTVvOxBx5jCi7+BZXIkrfsn4w5zWwYZBnqZD4pFfa+g5FxjSzzXFo7LaUUX
	 qq0NZV4gKVLYD6Oh3IhFg+EdUYaEtFEUlAno4kJeFmLcMWKvHRvNOkerdWRsDQcVWx
	 zyG9Lm9VZvVx0CVODwHyJf+LMAy8rRJWL3cr4o4/C8LwGcgCYsD6T348QrfgOjEcue
	 44ahamAcZjM0lFEDXbB3ZvH/s3BZxfAb2862tnKLWJzpdTUnO04dAwfy8cq2GVk3Lq
	 QbqMnwDXTBVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82DBC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391511368.1120.6124962976689949590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69301aaa5cb9d6dcb3bcbcdc800740d6b3665235a719a31c74dbf493a08afe73
Date: Mon, 13 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783915113
