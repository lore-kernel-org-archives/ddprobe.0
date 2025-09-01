Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120FC120
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756700394; cv=none; b=gheBL82d5qBFi76awohkbt7H2ni8djSpI7a1pKdLvDVJ7B1rfLUDQc7sjieqmM48lq88A1zRN7z8EgpIZAIWwsWWAEYl5R3/kO8R2FniBvJcCOQ9JNnZOQc9pqYEY3zs4ZFIOm7jvI8FoE9K3SwkDxHoVEwk4ZF/D9LTU4pAe3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756700394; c=relaxed/simple;
	bh=N3LY9EbGn7OUd6iFQP8wrxfSHrVJhHubNd7yrUVqzhc=;
	h=To:Subject:From:Message-Id:Date; b=mZYxuIfDVfXUr1Pi3shJJDJ9wtACLwuNo4VryjJK6KjXTg63eK+htegmogYqlx2GgVQFjaz/2yvhC78EQ+LMMMz4SXyoSw5zfcBLjjRcwE0dPPLPrIeOBmuzjQXgR4IywE/A/qHxUZFDoxLqPSqcIrRGcyaaK6t4tSsHuedBQS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBc/boL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBc/boL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9161C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756700393;
	bh=N3LY9EbGn7OUd6iFQP8wrxfSHrVJhHubNd7yrUVqzhc=;
	h=To:Subject:From:Date:From;
	b=NBc/boL83D+2GcMEvbG1L/XYwMjVEYdzpJeMjga9nCVGyAVh15gDh88imjRfg6ifB
	 SAzn8DsPy0cFi6ZgNolrrs9geAjC/7zRVVanhfzjN0mw2mlYUKdG4y2R4uAIa++YT6
	 bzyPg7l5JgQsqdCxuW8rke+DUwmZbNzcLG9r3D3VOdyVVRXAOgaVF4NG7RUVAalKrr
	 r01oIxhWtEZ5JDetAlXEXZZiZsN3ka77GMuvLKBOypQmQ++8HDVeoNY8t3ECPqw/Dm
	 q0U8tnoy1hXVpPrmmKGfPJh6AJSWeqjd+Q5deeEUlDav6yzR6O/7jqAKIHnWaSPu6n
	 LyXYYSippbveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2DCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670039359.28956.13716389688329256488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b913c8fc03f80c3f62740a1629ae9bdc58fc2e211698ce0ede9cd751c8492db
Date: Mon, 01 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756700393
