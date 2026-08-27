Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFA112F585
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787822434; cv=none; b=sOlwg94nDpSEm2ZUdzmNeauZL/0IPNwDJtqGPnngo3ZZ3ehdnoXLdWrSzO0mLQ6D+kJsiOBinxI1O9vsh/JZw3SxVbRMuNW0I7fDvjmgTwHs3wXB9v8zkb/Jp6HpNmx3t2KnzzrJTkoSujx2lFSkShI6Fg7VjxZYoideqrL8+WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787822434; c=relaxed/simple;
	bh=1KV2adzG5Cm9ujqkX6DPxrf3tP+SkiUYtWFmTvWr5Lw=;
	h=To:Subject:From:Message-Id:Date; b=hPn5fi22RnrUJ6J1q78/GACP/AirTE1lms0tuxTLS8o69837u0euMrZd/dDF+9f7wgS3Oi+gVn1xZRooV+7fZv9rrXB0IHdN32cy43uEXPISY90W3NIrhHXYza98hHm9NkL/puGfyoAaDTKX0mTtxadh5qBIvRuczDtxIrCmOIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrkhdBB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrkhdBB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D5AC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787822433;
	bh=1KV2adzG5Cm9ujqkX6DPxrf3tP+SkiUYtWFmTvWr5Lw=;
	h=To:Subject:From:Date:From;
	b=FrkhdBB8+9B2xlo/ScAYo6YJ6J4R3jwvs7NLY6UsM/JEwY6hiQffHjiuzzdceNBdl
	 0MCpSBAJGLprXcPBQqK2XvXXDBajwac7tdvLtGRHi73/ftQl3LvklowQGYvEa9mJIR
	 wSJ1v/NlPsFAh3IVZVFsRM+lJSpbjA/WvvNnrxkwcrSpPvezamtigLAmZqMsqAixqk
	 GoWi6K8ZHJouCXOZE1cFhfWahSmEs3KkXk+AUU6xRmcDZnsWkT50FxO5AbVIO/6e8h
	 vUpfaHt/dqoAjRI3E7tFJHBvlnIa+bbibs62PGgHxGlOk7L9BWEZGu8WTk/YhSgzOA
	 UENhWyuf44PrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9DC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782243369.17066.10483651800950637610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225606a5032b306de01b0ccb571214ae91394137b3fe0689be576bf4f2c96089
Date: Thu, 27 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787822433
