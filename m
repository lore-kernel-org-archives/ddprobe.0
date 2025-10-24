Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8D2DEA95
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761335394; cv=none; b=kjJgYVMHROKBUYloMxOU2q5KTcibH5m7zZ5IBrS3COdyK/+nFWmaSVbtUIR3qFQkOOLnhGlFf6IszNktN+CuZy52yoHLZ/4kPAjhgOUNe1ASEv1ggQxM9JrgKd2bU9XRsIXTg+XqZXf8hvvpPhN0B6SWPyQPy5lEXSvTXgmZCu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761335394; c=relaxed/simple;
	bh=8etIh1RKNrzdP97lNgt858KoFg81+LXfRKjDi5RxFg0=;
	h=To:Subject:From:Message-Id:Date; b=QmSCK1K600NR6uXq/OgVJ6/+c0j73FJ0r8hKptINELEnW+IMuH/RNlNQFC/HrVN5/Q+jjAdHI3dfRYjbboy5UAiHmrmBPI6d/Bqo5qQX8jggJMyY2u6v0xIv21moBg8c+g5FgahMUz5gKLC2BQg0UpX3b5W60xPcEmo2Ym047n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sglIPU3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sglIPU3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761335393;
	bh=8etIh1RKNrzdP97lNgt858KoFg81+LXfRKjDi5RxFg0=;
	h=To:Subject:From:Date:From;
	b=sglIPU3iqRvirg2QWzX+YPYiz93boywji7Dz/cpkvV++o3L/9BUnaQxG9ZX1dkQQJ
	 4w3P6mkrDAlz+4M3v4+qzEaI+0npCA++rILrsdUWKbtPC30+mBmPyVJErM/Xk6elUe
	 E7j9OF267Pp8n6XbHYIQ3+jes6paOTAmT0jlqu97o6ge2gBA6r0rhgEt7rIOhYSAK2
	 mkzMnPKLh4DLRpDNDRm91WexEaSJoqlXqTlxHP9/5AqSLdl6aIUqhSTj6ns+G4Kduy
	 41hq3doandSs+gCmpNYoKlJhEhqOq31PhWvItds15PTUkxGVtZ5W60LsUVciI3dbaf
	 Y2S9OK6fExIGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E97CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133539357.9885.13895498180314820354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b50aba4bcff28717fc2a2da31dfdebf5a8d365d2428bbc194b3e1f16b70cda2
Date: Fri, 24 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761335393
