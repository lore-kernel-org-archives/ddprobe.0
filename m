Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263401388
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756512594; cv=none; b=MA72kJoMGx57tkn1MOyFpCzvruNJYQUGw0ZQHc89v4ocRvuxwzxAdeUJNdnQSOoLezR9WDJaExGhsJm2GUW08KpaHL1uVJ9MKtcWtlxGLTXU2RY05UrV02ILqCvGemo7X+vN92L4c6ew/CnwFXsmChoe9S8tZr9oAOMJ0QzJZ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756512594; c=relaxed/simple;
	bh=FUy2BveSWUZuVpLOi7cI44Gy/LUeyCaHJ/F09lJ5Kk8=;
	h=To:Subject:From:Message-Id:Date; b=L3gzCjZYhnAlZdnU8kMXOFc+Jj6jjgu/81DxJBnF1ib2s7wTs+n31EDmWlXVyO0c9Rh0yeljBrtC8J2OuHv6Xrkdjj6QVsO9u1eb5ZPHoA9no6DkeZcTGGfKC9cj4upEZk/fAU8lvFudOEXYSvs5DpnpEKqZKsXWjtgjXrsBQ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en95cn+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en95cn+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F0C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756512593;
	bh=FUy2BveSWUZuVpLOi7cI44Gy/LUeyCaHJ/F09lJ5Kk8=;
	h=To:Subject:From:Date:From;
	b=en95cn+rCJkGbbAq7cK1cGBL78npcHGgWRzVn4Ut+NgTx33X675klNurVFR/E2Puq
	 bGlwl5pKKexIrRG5L8liNdk0TY3cfGMb4bacGGurQ8Dv1NI1Gh1QMWg5Yi5LOkG8sV
	 mD/AjMMpgj4xBP2O6XGjFUSafnA2QZKx5urpR5tVFlSSQjmmvAiCKpbQh3Br8ts/Hu
	 PC6ay8bsJbdBunlLbUj/WDec0Lmw+x1JfPspTjUkCJSAUpkwRMjLwbeFjdGryTsUz7
	 hij/MxIEgexQmFBWvzSB23qYH7soD3h1gC9uOgDQX2Fw0UOSt+0Uy6VWMUV20adhaK
	 lsdTHRiPoqDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95109CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651259357.12091.7218704082868301900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff1b8619eecfdac3fc8422a6e84f543e1f977c3cf6d76e7682fef0b2504a2a1
Date: Sat, 30 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756512593
