Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D35F22D7A9
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789966834; cv=none; b=oMd/3ITb10W7dBph+7JhccVODmxbHIWDlqXLl53RwHM5BTKKGElqhWF1eF2OwKsHhWiO9pAtfygtr9zgLS9DR0QgjTQgxyfe08rTeIjUGGz27bm5FMryxssp/Cm38DWFzwqnDHnIoe2fQaq1//hxnYN5DCvyhmNEOvRVKhXnvHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789966834; c=relaxed/simple;
	bh=1r8t1DDTzJZFBxW+Ip4Hn2FcVj6DbdQDG0Jwc4EymGQ=;
	h=To:Subject:From:Message-Id:Date; b=gmH/+cR/VM9idjHAk+jqih40/MriZoJeq7Rnq0tYhYfWCeL2fsYrbOmp00kRYt/ijPmA8CbVIsnObPKbfuuWOO1dh9rI1hfDPQAiGOTHOM2OR0ZFEoNKG9e6oxwJ8NB6EFetb3tUIz8wAjyGhgbP6r1w88Epid4hKP4AV8L4xgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZKPfGgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZKPfGgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37AB5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789966834;
	bh=1r8t1DDTzJZFBxW+Ip4Hn2FcVj6DbdQDG0Jwc4EymGQ=;
	h=To:Subject:From:Date:From;
	b=cZKPfGgWQmhEhJPxcWv78mzh+WC6zLhr1oKMAjAHKk7mgh3CxQ3yCpTyuxH6/BA/y
	 oaqh5qUSrya0BSp6OOw1+rXqekgorUJoKjeXcTC+ADzPmXLhNmE2f2hLlpR968JyMN
	 Fx8BlZjT8zvarI08tU7t3teLDy4tQFVtVx3qZni8f/ufx83d1YAQoHFD+2URTadx24
	 gLpIwSR9cOs3yuHCtm7v3Hr6nTew8SGrBfHqPa0SWwAlgrkTCaasMIIQkWeWGBfObq
	 N96Iffu9puLBIeltRdEvfn16kgDWeR4VI/XNwBknXtEJqLoTqQuYGse4LykGNXTw2D
	 boiKhwG4Fp2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE574C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996683382.21711.9764965131658294039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2989e7a00779760bb69fbceb7942d0772bb76dbb40fed92bb0913a5eca5f79b
Date: Mon, 21 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789966833
