Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2053F3093D8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786914035; cv=none; b=rKWPTKS4XRwTozWMJ+2PSZAr/rBKIUD3+Mm1Ck4HzE+umGZuyzqOeSCfUqRJ90A+m/0PjnGfstYcUIgS5Og3Noj28GJfZytSX1lEqdKWIcoMMQPvYZLCjnkwGj8fDAUkN4EuKEso28sp57dC0WIZ1A/L5DyI+S2QoThDMvJ2Ydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786914035; c=relaxed/simple;
	bh=2OzZEiKTQr9MToI+a56R5XsXOGPXQ3epWqmL92rwO5U=;
	h=To:Subject:From:Message-Id:Date; b=PauyXLDmgKteQkdI87qNWN052/34BAYm83NFMhCKV9vrxxgaKHTOpRdu2Rsn2QKtWwUMQUAxrSB+fpKzN2yfor868JMfmTTucao6m5UDeENJkvoYsSyhfzb9HycDjSXyJCtFdT8ZRSl5pDtSs29FNVyuH+IQ+DgDfG8IplhUZIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oO1u6F+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oO1u6F+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51BDC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786914033;
	bh=2OzZEiKTQr9MToI+a56R5XsXOGPXQ3epWqmL92rwO5U=;
	h=To:Subject:From:Date:From;
	b=oO1u6F+YQP2SzqxLyV3ccwN8A6d/5qTgijZHrXtbSHZ3DHZ8ytGWDTYXkqVRDzJpN
	 bWfyS8di5dK+w/xwp0ZC1ER3WleZNFAGtfYbS7rgwUguZm9nuEVAKvI9MvPS9b74Qq
	 dS1pKAyidmI2iozVIqENlXes46GBeAxmZfiDjB4lhq3f/4Wzw++N+nyC4uvZeSrwMd
	 TmmRloObFhP9p4mHvos34jhXuMgbHuaRRkAM9eKicikvAkA9podCXJKU7IjFFtnh7w
	 ctUEF67EWpdvb6XoeZqW6VV4agWQlaQnvwQtnetSbQSGmIeWEzF9ZZ1DQEP2U8JF1b
	 20IWRzdbPThNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE3C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691403368.19065.9205779722656079424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d2655655477031c3066c9b6862bfb909abc73a5be945f3b40e437f50978177
Date: Sun, 16 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786914033
