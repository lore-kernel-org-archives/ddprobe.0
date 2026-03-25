Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9CC3E274F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774449894; cv=none; b=U9YERMe3EnjC1BQ3NME0OBwcEJQEPkhL48L7UFxCaZjosT/GeK7D/T2/gk+SqQBFhQTOshcVRNxALV+T9NjS2zzc7pox/T/vo5PxIZWfLONX/SUenUqnFgJMMOBVZhj14OJZuk2ZSPR9H2wsAU0mURGHCSfYkBPgHOVr/xgRKlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774449894; c=relaxed/simple;
	bh=C/Dgy19VsenrTN5ZA9sOUDfoqD1YndMRQXip69F/SPM=;
	h=To:Subject:From:Message-Id:Date; b=j08oc9CbaDvrPq4CpeYYajOga5Sgj84NtXEYxaRdW7MsrpRfzfWkh7iqY08UStN/ttidShcnIwGjEbUF5jk7aJR49REyjVxV2sb8iM7un1ZigEtEkAfurID4nqtO1H1tBTq8SdTWozl9XLwRNOZaXIDWwr7b7rFIeJmGzGlxwrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H32u4fpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H32u4fpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FEBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774449893;
	bh=C/Dgy19VsenrTN5ZA9sOUDfoqD1YndMRQXip69F/SPM=;
	h=To:Subject:From:Date:From;
	b=H32u4fptAtqv6yy91dYZUU+/nWJqLQxam/GHKyGi1ip9zZPtT538m4/X4EgvWkTUd
	 zEazj8Skh0BoNSZpYLbTv9/uRnSNh2d04s1mLaBSupBZtRHfxuN2uIG44CBmqG76fg
	 fgdgxWxbyPuCEon32/kDyDqpDM+25nZu4lOS60YkAbB9jX0tM9Lz58DCVPXv5jUXoE
	 KYjGNzGEHwV2stmZO3yp9ziR3mf6BdmM9O8gQXczbE7Iay+/ShtmBVrd4WBgekUMSI
	 Fk57xOwsG3idqG33FNPhN12NK18Eflqkgt//LZ/YBxgbdd9KQzEVCS+O8UsYxl4bmr
	 OSAJ7gCa1MPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE1109C027
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444989358.8031.10318166589564630474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcc3f62fb417a1bc3051a4f6a2d8f520e3e46bf1d574b74525e72f4213c78d3
Date: Wed, 25 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774449893
