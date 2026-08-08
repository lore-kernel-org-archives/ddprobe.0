Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4B2BE656
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786153834; cv=none; b=NPC9x4DMKsDBkAJjEB8GfnOmSLAyZ0V/15d4hx6BjmCZC7TMM88053YT+rGgH5Mj67XsRtNoO5CEhsTWEV6bh36Ju514SMuLzTcxMKyUkq8QJMvYrfb3sSkWFgWjYWCYcX7L7LK6WRdzaS2Au0xTWBYBGHi5IMxFxsfycE6QKiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786153834; c=relaxed/simple;
	bh=PVQjL5jlVuqgdMbIVa/6CR8HTtIlch8m9Ja8WojYD7E=;
	h=To:Subject:From:Message-Id:Date; b=Cct17DBGRgfbUFZ2Ja6ol8FNHp4vW9sotXPxRtzUsShu06F3a4njAOB+WQLTUblhi581YTjfaJJnE582ONetl5Ep0JNGGktGCgLgn+FW4ubhJfRpdI8GxpyYOJzuLoztn90ZH8+JBedX4wvjETa5bGuKi4VgHxbW47A/neaPPeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rscPJap8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rscPJap8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DABC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786153833;
	bh=PVQjL5jlVuqgdMbIVa/6CR8HTtIlch8m9Ja8WojYD7E=;
	h=To:Subject:From:Date:From;
	b=rscPJap8kKrwKEdEyLrWv3wjDqh6onEGEmMZajGE93uLqWYlCuovl6FfiuGxIbTQ2
	 t+1jBwoge3Gb1AvmtoLs1WmQdl9eJRMU66SAlXOp7NjAmlHC2a5+tbHmJStNYkVNa+
	 5Dbl4iSwZv+v5qc5caJF6gKp9UiVSypfAReM3fD26/HeJu6beNiSIfKg+0cq+cLsHY
	 jG3yEPO/j3eBBsBC4FY0QCISc6OQDSzBuMAGK/w2U/haO07EbiucRW2F8VOAF68tNN
	 nT54rxqHL1+LokAdK4NgNeYrLkfzA5hfhHAdG6KQddRXrY+8FUuLiF4NIVnD0oxaCZ
	 z130RPbsYYG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB6C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615383368.14856.11111834357996639474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938ee98e48a78c98b2d4f2882a68551030ff22379b42ca97cd8a433ef6a734ad
Date: Sat, 08 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786153833
