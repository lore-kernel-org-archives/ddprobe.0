Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EC547F2D1
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792386634; cv=none; b=WXZCfw7fKrCevQVZrBcRRrfc9uNN6zmtdpIkeRCE/sQgLQQewvjbCy7zk44R8lKIvbmD4uP4nwSNOSq2rsAyE7Tzqlwa8F0Df8glgJP2MU+9bX0wbAPPHjyHn4IWmXRhYNs3W7L1zKFVM4pZTdUVbTDfkabKiuRqZizz8BmSfcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792386634; c=relaxed/simple;
	bh=DzNGPVezaSKy8Fu4yW8CuhBFdZ5vOGC1lrTY+3YU1+8=;
	h=To:Subject:From:Message-Id:Date; b=qSY/gJd6qKc2lPxWcHJuuY9B4akRYwETrwQikrr7PRnQRZBM/o9vdO32IwDexpStS6nUZg5vMYiPXC1RZD0RuGpUnPgOrsJQjpdheR0JbIYK9V6Wb1NrTw3AU3b/Ku7IG/MhModeUOPjZCDT1EofLPru4t/YfR1GcowpHtwWwXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfqfkvQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfqfkvQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBB0C2BD00
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792386633;
	bh=DzNGPVezaSKy8Fu4yW8CuhBFdZ5vOGC1lrTY+3YU1+8=;
	h=To:Subject:From:Date:From;
	b=dfqfkvQscK2QNppYU4BKurx1/UvTKbYiqqBBdkx8pdzPhQQNwt8pLYeCopNZUcthE
	 /zQWpQs7XSZo0jKAhUj0PLwdkienwk4Ft+Hb/xkr22AJ+wJhJr2Ebu2Vwr9WqPuS/E
	 ljT7fNYvJK8YyroZ5b8pP5w7ApF2Y2YhIByR3LqPXlIoVg9IZ/+iKL7517tcu+Te/y
	 4y9CmZ7nPV3dKypuBKYIsGT8TVYEpKjtpdbCDnRBczAb9asOS/pwSA1egTM60kXetN
	 4Nr8HQ0Qcj/CzZo4wZYvzKFhzB5wVNZOVEeYG8TCqXrF9kY/fri+fOjIVzTTUI4v5q
	 h0L/EDXDceKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CAACCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238663373.5102.1381621556170435191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60101aa6bed701a56b2ebee03266fa5c6d934c9e2144aa70d1f07095dfa2a82f
Date: Mon, 19 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792386633
