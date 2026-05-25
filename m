Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE28382F2F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779714754; cv=none; b=XUwe6fBZuBGdeXGeyx4KOS3jxMMrNk+Uov8TdKaMZuaLojfrmMpBUydqgp6R/s8Iw6NGK7kgN23IZq0FqANwnqpQBRqZHlJtSMOfl2SSXS2b01qSMVY0NiSffYiUkx46eEA99D8/DRarJY7KmKqox0/O9GJ1E2C6vTzGmW0/0Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779714754; c=relaxed/simple;
	bh=CGVsExr+HRmehFDLmyCnI1AGP/Bdb0xndRnS9SNeJXw=;
	h=To:Subject:From:Message-Id:Date; b=hJqvHvRZYO/3d/8cPNLgpIY3v04rcMtq7YsXaq/TvSUAlHnDO8DspLx2B7l9qFeS9ABJgrksv2x3/xWgVwvVNRae74/hpcGcP9Lr2ifa2wnLc7GEPLBy5062JDpks7xGjJJ1jZIUWBl3+zxhXnJzz4GI2VQAjhVMFH2DkciSHI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVKatRDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVKatRDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779714753;
	bh=CGVsExr+HRmehFDLmyCnI1AGP/Bdb0xndRnS9SNeJXw=;
	h=To:Subject:From:Date:From;
	b=KVKatRDNetwMcJ6HoOC4A2pGhCNKR1uhPjljK52BoDoMPnZdPj645eX0TZKrgoz+B
	 eTfp2ExgrF8PdPzAIAiPv/1+ug8N18OPok9U0q/5ifXfJD576mxDdcVtY7olJqPXMN
	 /fGAMYr9jp8xK46n1VOmezPP1Fhao0IbM1APZ91Lk3bqrzDEy1ZJQKGn8h+NjcwYty
	 lImj22XToSTA9kB/6NDr/59weauC6pOUsetXG0QsJLkjeTQJOnWt77PvJsqOmj0guF
	 Fy+pgX6+5yeSkpMUBhJKjzP1Go4fmRCX9A9GnIe8enaBBKqwLNdDmH2WMS2JAN7q6D
	 /QtcYuTksgKFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4FCD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971475369.12264.16194802300937349762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c2361058a2d6e76e3085ef56e2b97936bf3fcdfa2c7a6b5351821bc2f9edc1
Date: Mon, 25 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779714753
