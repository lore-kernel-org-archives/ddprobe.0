Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13370139B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753834194; cv=none; b=OfPX/nFwTO96BK2h6igLC51GmfebJWmfjc5+JEEAvkFDEnB9RponPAryRcohyGCqGOG9MNAt0G5hBYNGm3gXgk34NOwlPvC2FOZmXuoJ14pkYxzPZl3k4TXsVy6VvaFiOk0En8IC290Mv0f5BFstntn1EZArnnXgaFaN+wIDlto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753834194; c=relaxed/simple;
	bh=xYKVgOu/y+3bhEq8//Wpj2wNnNVz9nNOR1LyWwSF7fw=;
	h=To:Subject:From:Message-Id:Date; b=l2W477Mgmf0/bbpNKIDmoUu3sNOTl1fT0q3xVa523XmWvKa2r2JrbK+xLrqcsfdFnbwjVnielzuKoJSSBUSrO3j81Qdn8Ws2l4u4Ts5XJJRN1Y6ny4TjgRQV3RtqEzOkk4P+aoM1CwL7ZDJ/QCMY6Wih9qBvB655UWaJqVd14YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocV9TjjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocV9TjjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4612C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753834193;
	bh=xYKVgOu/y+3bhEq8//Wpj2wNnNVz9nNOR1LyWwSF7fw=;
	h=To:Subject:From:Date:From;
	b=ocV9TjjPvvH2PhJ86Df8+gimpQ7/3b/kA9fbGf/gUgfwoPUWTMXrT1MTvNLmx37So
	 2Ov65qhwzDzAUREpfIEP4qkN/fF9fUjzyLHgCXZ6CDReGJEfpIia55BuYsGMxl3HRb
	 F7iPOESzNaLhNJCTY5loxZR4claszAOOIq2uMpPQ9+os3xbhH6BotYSzUG7KOYq2SZ
	 vXkoWG6pNYhk4hWS0E5/uIlnt3EhEljgyazu7ToeQlYwUzMImJa0gG5mr9rENDMRal
	 R3MU1+TosDEtkWindn5cFxD3F1YO5D6zLKM7urLlqUOquuGwefkQm4xwjK0ntwBuXO
	 gWTav4B0rFMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7EC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383419358.4227.8674641219770151305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9136722cc4729300a26b13438603052f5837ee6e882ccd7faab5ec6f54e50783
Date: Wed, 30 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753834193
