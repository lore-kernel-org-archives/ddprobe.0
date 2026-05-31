Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E42D376A02
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780224874; cv=none; b=H4rrFrjoU5uGlBG8MeV70eXox+PURHWFI6Z1V9rr4+qreF/t8Z1BYqwjETHMeYmVr7YY5y9/1yW0Z/O4U7ai/zM4ymmIuh1QcdP1uE8J2UjCyUJpng8SO0eMsX4S0L5SL3UW1xvgB2mzjXFmdRFR2KWqW683SMrzZueorlUMTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780224874; c=relaxed/simple;
	bh=1WBbX6RsMSkpNWeC0bv0XGohkyXTgzqRf5VII+QQSg8=;
	h=To:Subject:From:Message-Id:Date; b=mcHlMOEGaAbvYt2x6REbMEq5DVY59HPdBBSbsb4sADBdxsSrL3dyXzFg8TyHudyx/eukkaixGwvLAUs4+mxQIRjVFNDQzX0kkHGC4tTW+5tp+ad51bAsWY6jcHk76wdhMvCkjUSUM7u1VmHISuFtMg2TVNXWOP/8VbymSOxqg9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faRj1dH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faRj1dH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C9EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780224873;
	bh=1WBbX6RsMSkpNWeC0bv0XGohkyXTgzqRf5VII+QQSg8=;
	h=To:Subject:From:Date:From;
	b=faRj1dH4EUUVCowsBBG5QURDF8AtzwU75b51kjR2Zam3qCdqKQSVZW3AKagFUHukk
	 lXWNud0nGllxO5/VYBAI70lZZHIzneFtDFxNJ3NHImdPb4xSjoWSNwPMa69x0rZitR
	 V3leKOJZOD0Q3RX1ZeQ89TAzWuGoPz5jGOL3YTlxdC0p9oEAArjeXDQLh37jJx7zae
	 0CRnzzpS5Z+2hd4GI0Qt7daq9Nvv9k1w951bcXqLfxkFXtvLThzl1Oi1f19LWYJo8e
	 WihQ2TFkxX4PMbdRhEbXqkqMuT13hcf9QrBd56m6F6wfbCCdiOIAHaWEZRn1Ijft62
	 oKoGvxpXnPJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2ECCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022487368.24861.4086188492042308607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9928c06892f9c646cd6449366d4171f61fcb9cadc4a28c0fd673247455dca948
Date: Sun, 31 May 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780224873
