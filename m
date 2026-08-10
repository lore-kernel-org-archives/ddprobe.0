Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1473AB28F
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786371634; cv=none; b=jzJ6ZnhdjoaUcr5oJLIrPfIlXaEO53bXhpw+reqiocvRy8tHlgbi0mZO/ufbrXai5ZoNaFegbGZGDD5lAlXDQN5CdkSc0GlVZvMPcbOealhcNKBu9cp9hQ65fHL70VMUDQgKhJbyLTTnr0RhECts1cFwaXaNyQrSJSJJg1F9if0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786371634; c=relaxed/simple;
	bh=rxzBp6pffvpg7F/mjTuvLU3K4WZuWi8c0Gu4eJdqrM0=;
	h=To:Subject:From:Message-Id:Date; b=I3w6FwRlOeqhVzUhTmcVbP7K0f/spEfYd2UYxTkoRnhc06nJy494MwkHYJ9BTRJh5m/uqbp74caul6bXFuJ+2FIX/j/4XymtJ4tKWOet9z7+Hz8y0/MxqNE0/8EfxIqnU/KvpWUASJj2fuXPFd14ZahhMbFD20wOUp9DUSZjvP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTl6Ce0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTl6Ce0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A5EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786371633;
	bh=rxzBp6pffvpg7F/mjTuvLU3K4WZuWi8c0Gu4eJdqrM0=;
	h=To:Subject:From:Date:From;
	b=qTl6Ce0Ac6Kehp9sXigAz7GcfwvZwB9hbu3IYG7y84HVl/nBr88Io9R609Rh0Mt3t
	 S1xajmptnziqtiJYBtHfiNMVeIW1u5FD04vbHwmlVfbctYcMvsPa1+ugAoS6kALf34
	 3ObWShcX4xFaQGXkOXljKGpTNTh5Ri7+kVaihldCunLfmxGbXOv0y5mxi7davY6PR1
	 bBMxo2pwvyczxdTNGestAnLs5e2NBg2s/6KUPpiT4OXfqLA1A9B2ZWH9D50uVQmxrB
	 vzEVE2EcXp4XJETXtfIdDGc/O1zP6np50LcZGFB3F4EAluaUBftqxdkbVJ3HRFQOLu
	 ++xsnddhk9gBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE4C5AE49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637163370.30105.4806892392759072476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a958c4b9c504ada41580f942781416dfbb75c70510b65cff0f85e09e2fee35
Date: Mon, 10 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786371633
