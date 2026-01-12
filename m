Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DE4E55C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768176834; cv=none; b=BADy9QKMs/e2OvGTXooLTdfntke860DElGngh7f0ANbAyKiwnepYUNCxPacN2WzOQzL2HcBoGdNMJlzrGwJvjwhS9el70oIzp9PkAW0q1xRW7ZKsAGAobKn9cEZHQXIfggaFYpZ2kYeTvgVDnicgHWeDdFEKyWnycUg3YNfpR6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768176834; c=relaxed/simple;
	bh=rkkGaSbVqWTPtYgYoV5hrZF8etWnyiMQ4kPvnhjW4DY=;
	h=To:Subject:From:Message-Id:Date; b=Fv5qAnS9WOqifb3N9Bql1+n58Zb9sYSM33VIL1n7DwWgENN2LOl2KMwzxlTboIrSWkMwRq+R0yZOceq8WSvHRiV+r1lXr3c1+WI/oqtDGpf+D6Z2u81TNxs7Rwa89anaIf2Q+pl9SfMZyfrIOuMlrQGnFfMVYV58KvckHIkKcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4yu5mOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4yu5mOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768176833;
	bh=rkkGaSbVqWTPtYgYoV5hrZF8etWnyiMQ4kPvnhjW4DY=;
	h=To:Subject:From:Date:From;
	b=b4yu5mOeFczJK1j47yXon4bYmDmkt5TC0PtbF8KQsuEbLe8We3Unxmlb4ZS9OVkDF
	 D3flHGpZ+QrStyUSJ0T91nYizqo6OgjmFmjAE8/35MLZh9P3XhVDTKyWXNxgG7ElWR
	 CVXZ4dSerdTSsvYHJMh0k6LIOPA+fFpC0lOnvKILTabGOaDBNorsihc8NTzvx2hyQd
	 lXHaTSjfJdzls5f5t0lL989lnM/iCCdoWnnO6nKg/wFX2rrsJAGKTkVOnISTit7laJ
	 jdT1HDVNBilZ6W/lHUMLTaXKTaaee86Dzz5HlyCLEgE4gP8vW8QF5C3QErMbqxvBwo
	 GT7tUOzMPPZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D8D2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817683358.16761.4911959473927072483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9f7cfc57b7ca5cf59e9ffe44c4239d0b3b04fe90877b1a6168b7c6c8f13729
Date: Mon, 12 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768176833
