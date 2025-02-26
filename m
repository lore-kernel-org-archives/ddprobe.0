Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FFF5028C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740553134; cv=none; b=Zn1TxggqID70kPWYMlUs4YtJ+tDu59o/7/lQ6IRc5n3/tTtLRoI8i7791SL17eLb0JIrjiocsYzco6D+vrqQU9RNOMC2vXYD67OUM/uHuRyPqMfprN4uYwxcnY2XKv3K03JdZgq2a3SeTuk/7abW1NaaXuJHcj7gcFoTrojVpto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740553134; c=relaxed/simple;
	bh=Vz2JKj3HmBqjZbcX/lne+Lp5Ijqm73rLHLb+bLz+dcE=;
	h=To:Subject:From:Message-Id:Date; b=urwYtwXzFkyuovF9WnniTIivf2/Klfp+35sezWn9oLxR/cTOM1jBYBdcJ4So7S3wpe/N56IDYH0G+t1QlaIzFU2QjjieFDmFVdZKWjiWgEF9BSb0MKrzcu8WDiwNmVPlbkv4eX9/mpbG+ZW4j82nq0UNpxHRwvAGhNJ0i9sd8KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krfEHnxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krfEHnxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFA5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740553133;
	bh=Vz2JKj3HmBqjZbcX/lne+Lp5Ijqm73rLHLb+bLz+dcE=;
	h=To:Subject:From:Date:From;
	b=krfEHnxd6LrybVIZmVWZPXzo+yqI5SG67Rbagmsu15eIWBhXXb04aN8SN++HXbBuB
	 O0L3XnAwOX32Bukt1kvHeDxT9Yxq4HpkFO7p92/VjXGrlWJ0O8TBbUUJn264AN5E2/
	 thsn+XdVrXGo8Dv6xlLATk0TtpGkBnXad7CVk82zPKwTASGBev3Qg+A9H26iC2rvfC
	 JljuXEKKsdbFg7mNXYxxpM+x/J6bNau6nNTPf/7ErldbFLpLmueuMqF9cm0FKAvkt8
	 jtYhDUmyvfTEccpkdoYQqEzNpU7f2bM5WGPdq9T+pWDCpwTkUFFOgir0U8fdeX+EMc
	 T2mHsZ5KVMvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46A3C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174055313365.10168.6992327495447185497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c54de2f0863d895ba49488881ec47728ba83b9dd721675d242a0bebb3e004e
Date: Wed, 26 Feb 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740553133
