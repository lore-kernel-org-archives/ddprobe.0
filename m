Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415DF397E89
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788306034; cv=none; b=A0xUDyAEhTO8oeI2Z1S07B4OIWmaiPIVo20Di1jjyln9+kaa8/rlP/2X+20/bI5jHlpH0aNTZbxs7bc3nK2q4MSgrjTYN48dhnC29EttPA6PqO3qaurU2/I9px5FObY0Xejuh7TVfiHEVUsPBuxku8LmOawVofHaoaTTm06hoDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788306034; c=relaxed/simple;
	bh=mULGFdOO/TPz55VJSe98Kp+R8v4y4kqOSi5ijSmpVK8=;
	h=To:Subject:From:Message-Id:Date; b=btGzz2L88YVDoQUog3Uu+a4wKtZWd+hxj1B+/JID2kuSOCgqvwfX3WPYJXm0vQwGj6bZ1tcidjl0GIHgG/zNZkH2NBKA2Sb28ZYuDxNq1DeaCpMBjM6ZWjt4o4lQV04imm4gVUQV0hzWl2R9xTmqWPkv8wvRGg43QbJl2awgUZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcUYKrgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcUYKrgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B2EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788306033;
	bh=mULGFdOO/TPz55VJSe98Kp+R8v4y4kqOSi5ijSmpVK8=;
	h=To:Subject:From:Date:From;
	b=YcUYKrgdXqajxSjxTv/vkKGOsVNrA6nurffmcO6Mh6aStzHqy648WvGcDKrldXLzY
	 cwrZ3LCjGZ1TIOC+/toaZWh+G0KVt3DGlPSuwwCW/UbOJ19LO8hEL/p4rx0z4YcOJB
	 Pp6D2vcIXCO3Tem+O0NX8Hh6jlM9G8KkVqLLYK+orQihxoyzBqCabDtyu6JAvmhrFM
	 +lICy3FLTnREfNZ/heGUPswlMh3TU2uP++nJRowzS1Z8yiey2zV1oYgodxFeBXljg/
	 hLsAwHdpaI0PZ4/IYTufFcMZJIG7nKco53TvY2d04iBvT3KaSfTrKj1ftL2w5XHXB7
	 L+AhoXxCOhwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC552C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830603368.9328.12398706895334841150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655779683e0549fdbbeb841a00387efa4a2d940374da8de92d3d652fc624668a
Date: Tue, 01 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788306033
