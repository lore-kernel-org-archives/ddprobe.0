Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9305661
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745721594; cv=none; b=siVqMVaMaScADTZKaQ87rlhZcLcRqlG0wx5ZYLkuRzLD6ALMVVAsunmrIoPniEM+r2P1LLYh1kZcoeirfuNm9Js31KT/DaG0KkZQin0c57ZXj3aZBXWqMXnY//mMLIzRG8LFS+bTbos2iOA3NN2Hx6LXaaYmg8qQ4sCkBKCI14U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745721594; c=relaxed/simple;
	bh=BlsNI+wiVLOAgRhHdJ12a8urxzXEM+SD6Fe/cEBfxLc=;
	h=To:Subject:From:Message-Id:Date; b=UIwUfuFBi3JJQlfDx/qPMMkcDcj71PPs9r64Ih6+99ujJnf1SXoMvm5q6cwId5DU1PeBlULewpFnGl4yW9LkmjuEAi91KPnDD8G9SIdw7I3Xtr7SoylYsFesGJETO6iwCPcGwENZCkDRt03IDcMlxmon8DE9FtmZqLWFYrKsM1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9qytFal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9qytFal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC5EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745721593;
	bh=BlsNI+wiVLOAgRhHdJ12a8urxzXEM+SD6Fe/cEBfxLc=;
	h=To:Subject:From:Date:From;
	b=e9qytFalwWDrUoV6PkRerbkyfc09q5Rm7/Zuhz1p/PwXxLoOvuCcC3cvUkvy7oGd5
	 vKljj3mhe09nQNhMz4e0OG1SIfpp5YWX99OMXnf8l619o8qs2IPVtel7TYdAML0n6h
	 OwunP8Onr+WS2IM1FE8YJOFIm4OjQCnClc13R5mTY46tv0ZyAhz4lu1wq7C+Aq7KNY
	 fvQEPWkyFTo1r1DH5SuZZjHXCbR3yPA71jvJYGtYoe6F1J18KUhfXVDmt8qBSTi8+7
	 IbsELSzJUTWka5juhNf58SqDxvv6mHQrHGY1uPSKtOo2LOLMbNBtp801iqZzBppYyt
	 3x0Te+TkQK8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E808C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572159357.819.13501627305404345110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b933d4111a7ab1c7b03401c1fecefa4bce6fc8d2faa77c186f083bc3764c034f
Date: Sun, 27 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745721593
