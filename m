Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC61224B09
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756268394; cv=none; b=MfOrVUEEn48riiPoDGUeL60eVjDpUVe5IhIO2AQD+CewnyUG9vHDjzHSawalTqTn3+WniUEPvbJyPHBgy80P9JDesd0WkdBK4EBzyeCzvLTVoy6zNatfTrpffX226nzPkxvAegYU6wcjCLme0mP74D9uTvdooWHzpSrdEEd+++c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756268394; c=relaxed/simple;
	bh=bzpgXQ6hVAkP3NS//Owp/ZnuMozoaULdYxVjpL2CZZw=;
	h=To:Subject:From:Message-Id:Date; b=j569tK2gmjvvqeeQekslEf2e0U/3ptlt46X7ZlvzIMGfDvA0njsmsgLABX89cku0icbxTUdra1tmo35xitmflj+k8XMuqcTGQHM2fn6ZQiM4EGnncMYeEPUQFnFeS8/0HKHbWKTC9PjP7jgPiTEgc0U18S/YLILkt86dl18qPHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyyrSSHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyyrSSHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EED1C113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756268393;
	bh=bzpgXQ6hVAkP3NS//Owp/ZnuMozoaULdYxVjpL2CZZw=;
	h=To:Subject:From:Date:From;
	b=AyyrSSHT0Lr46d24m3zaRw4UZUBExU1ZViuvdLAjmkZzOW6GfxUhaVxElDCOPPD2s
	 2+eZaoDS3o0ZeD+KHti4doXtkh8QyIuahfQ98UrtP8OLA1eSyiQf1l0o5UeurEjWSY
	 JNOG15GvMmuzCf8Q14t3vcgBKfC1XxrXXz76k2QgiU4cUCx71e5qLbihDK8Wuk6R6I
	 2L3WGS1iocyCMomixQiv1TeyB0aEZ2ZFOGyytb0VoWRo4cSqw5GJtNjuf8+wwptdnG
	 UyJjYbuIKOmRyP2zcEL1FTztXbFbAkpbk33mPjAemxEigtfSVCD0khqoAEDscNQBN2
	 OGGkroZEB/1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626839357.19924.9268432374358048256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0eed1d630ead5c79993ab37d1f9c0588aa5506de17e679b897a5317302bcc4a
Date: Wed, 27 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756268393
