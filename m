Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4367035F5E4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788201034; cv=none; b=UvdvvFECclsynRbUEw727/2BumfWi1EkUD1M1VTZu0u506oE6toFMm+cbmY4OWo63AorzqG5mlRAxiWDmIhtf64wBefT6HUivxmITbtHPb19YLtbMBjysNi3nao8YOavaQbggkM00KvWdiV1pE6uY9VdOEJa4isAoaG9HYpN+x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788201034; c=relaxed/simple;
	bh=botJEaS0zHDATAvxjyl6xvqMSXzyWbjoW9Sx/RIzQFs=;
	h=To:Subject:From:Message-Id:Date; b=gKPGExLC476iElQwHaSH04XGmRvhNW/u+bDFK8837AvIQ6EbKMDYt+rHeMeguUtaWs6DVHUffGur2wnq8hamcZWtoO8YWzI5W6MVwCOCjuxr69gI4E5AuGqr9EcgQzAMCHRyvXM6QzWmOn1cQd9ElRXMe0kfycYyKyAH/KFQSOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9ihZsHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9ihZsHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D488AC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788201033;
	bh=botJEaS0zHDATAvxjyl6xvqMSXzyWbjoW9Sx/RIzQFs=;
	h=To:Subject:From:Date:From;
	b=C9ihZsHx+zzjfnXe7P68uNZMX9bwbdQ7bf2fqMIy8ylJ3SCYOFAj+Ev2DJpFtFKtY
	 waLEenl4UvYcZWt8BSSEB7QiPxAIqYAmv2KLWUjGfRxaymt650C3ZnNYjUj5dB9/1C
	 j0kfxBmVuN9rO6VdTNKA4dwdya183zIj9ffANEx3tNNOh4pESgch+kpwUg93eKLBB3
	 gXPo9NM8rzfyJ6LR1EYbNiYUpsqi7JiNV+WuFTnh487jzq+ROfQxLtKVaMzv/mhvO1
	 NbYRuVVfsb9LTBGAu44MPCAIlDcLppfwk5OjfowVZJNBZaX6hRcD9qZ8Qmi3Db4D9e
	 bcmiSzPH9281w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19AFC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820103371.25541.2213657495490743504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570c24d7aaf30c1fb8ab31b1ed55014615b546e671e1b81a662caad95f4c49ad
Date: Mon, 31 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788201033
