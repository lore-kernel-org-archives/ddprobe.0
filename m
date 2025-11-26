Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366FB63B9
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764117174; cv=none; b=SN6oaTI9K2DXJgzcc2gozgtsykXHaEL3ApfqbG9UuSTfsEyU8JvsDrd0CJUyZDSdYbhN6vh2gd8hAD+aNlBhAQ+BQSMUJKimYnruMV2paJtZ3kA9UQBNGqhIuT1nrv4tRwEofk2k3Fk+9lmUbngVdb7IxkDXclWm35uCf+QaHIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764117174; c=relaxed/simple;
	bh=7aKLSKt/RY71ZOWjh8aQ7TX2j5bN8qBKckKVw95E1mQ=;
	h=To:Subject:From:Message-Id:Date; b=dzUM/7FTTvRM3bIxCyUK7Cvtow+VcPn+9SgoHYkOOSUYcO5NYjPyglRLAW3qpSZuITuAr7L61I5IFbMBwrpbp0SulE6zKOWaBN7kjoU54C0k/4ZMN7ZSAlmJhHl1X8JQL3HoVjkucklNsDK527oxVD6m919OyetG1afk5SsU/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sACBQH4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sACBQH4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764117173;
	bh=7aKLSKt/RY71ZOWjh8aQ7TX2j5bN8qBKckKVw95E1mQ=;
	h=To:Subject:From:Date:From;
	b=sACBQH4Hw/44G/Y4NcxBmpC2vA89WkTn8EK25jfoypDOOz2TCM5sgFDruvrsgFNG8
	 eJjUGpSsvMGb3v/zZ1H5MjLjToJrDOtD+tm8jUyawZys1t3r5eizPdvr+QUmEYDBWr
	 3kOTo3136tV3ESL3/D6pgJBadQBEtjqaL2T9WpRA78QMmwminTXvHIhrGkOHkkxUU7
	 BGveNq7mDgS+r8rHW2XiRm6Gp6AnmwgtPkpmZXd8V090IuNsJpBtNKP+PhDqNZV/VZ
	 ye/6Rz1bkfxYpXPBr5yKDZHleIWp/4wrR0mlTUS/ymcpBsUuoEa54uSs6VDDmGCOS1
	 Af7RMl1AznuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D3CD10370
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411717358.10127.806823806713197544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a697ab590dcafb74afbc60920f9a9ecea9e1e755b0f0318bae7d78a1c2ec1f71
Date: Wed, 26 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764117173
