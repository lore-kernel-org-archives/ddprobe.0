Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E6D258EFF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047694; cv=none; b=r2ZqR00xycbY5uJ3jzcWAhekEznYoKb23RpM9/ohbevTgKSDpBzMza0udIRrhsJ0lanL5IFrQHQAIn7F+/BlEqLgP2Wpt/0Mh58qkuxW21WD4hVpH36tIeXVA5Vrl98oxLqiSFpP3/X6szdPaqzybGs+uUQo9+lN14MtVatk+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047694; c=relaxed/simple;
	bh=L8zj5t6R3/04ZjTm1lSDq0fXnL5BBd+2OoIgBQL7NFI=;
	h=To:Subject:From:Message-Id:Date; b=AocriQt3UmHQFWGINGAFPoYYLBZ9Vln4VgfqAjabnLC+3RUm0bM16BOMn5RI/5FikeTBPV9B439QB8USizGokSUK+OJeghDGSbZng4rdyneIpGtLVunG9m9ycrOIH4BLZeSky/6bDKooOZKfoFlukShWIbCoNpxZ6euiV3vSsGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZuC5mgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZuC5mgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E6CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773047693;
	bh=L8zj5t6R3/04ZjTm1lSDq0fXnL5BBd+2OoIgBQL7NFI=;
	h=To:Subject:From:Date:From;
	b=mZuC5mgh+I6U0SGdyD2zYaaFfsX5Y9cF1xKrlP9WuzEYQcwMNV0Kg28DLYBYMFBZd
	 a+wUBWP8LutdxbWS7fzlvvx/0I0GT+fuQ5YfvVgnmUuk8/V5QKUUUs/8RKwvIgHAcR
	 VorfTTivZcAU4a2yFAiQy6z/d6/yzNkA2cCbf/ItMK61N6hNSlXE1Ucw+TwdyfWUu7
	 A8tb59bVzkg3RJOeQJI7km+YmrXmy5L5gfz6bO071HnY2Y8HAUQKFPPRR3+EroYB8C
	 J237nhg8gR8Ege7vYqTk5lJp4yDWVoJ2vMrn0Ay/5bHhNucZwU0wBxq5BRQqd2SH/r
	 +QbgHsazeAz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7AEFCD63
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304769358.30485.11121808207783101810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18de115f4bdf7746ccfa4c7b468862fc0c631aa16dc17cb63587cae3b21a6a5
Date: Mon, 09 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773047693
