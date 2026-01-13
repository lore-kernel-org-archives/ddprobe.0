Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2466310636
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301034; cv=none; b=s2I/dAUv0Pfx+N250zlMzbV4ndPJL706oixIYmp6uGqBdkwwUk/T5muYk4YQR3xInPCAKaVmj2n9QT8ITfFbCH4F74r97EanuIdfJeU7gMeQ3CgmyMk04b1vhH4ZajZMGjTd2dbAUPXIUyMARkldjUqRoYH609xdrF0ywEnajC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301034; c=relaxed/simple;
	bh=pQwVPCjvs7u5Y9VpUc/kenXEHiD7xmY0hMk6RSt0LuY=;
	h=To:Subject:From:Message-Id:Date; b=R8zYOAfxyb7qSqY+Iw7hQfvzs0SFJCTlpWTiJdMPOx/nS6f0X2tUWN0TnioUYPTMm/yaARsmkZBS6/LZmmzlVjvEP8J2hU4FIucJf6WVlcsg+T8OYFb8h7+y3lBmKagHBTyFq/wdarQP3NaNxWoqhYntRvj9IZPuujkfqFSLAxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwv+sS5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwv+sS5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E072C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768301033;
	bh=pQwVPCjvs7u5Y9VpUc/kenXEHiD7xmY0hMk6RSt0LuY=;
	h=To:Subject:From:Date:From;
	b=Uwv+sS5DscXbnYoUr8LNzSD6DSVXVyPIljlYlnUhP9ubo0B6sclttnV6Q4fQT7Ltx
	 Ixkqef3099Ut1IQ5Um9Jk+MWXKZAxHZ+cs8MWU5D9CiLlYRmDLjwyrNaJbepjDLTsg
	 clXDnwh6gXAbPV4jLe2ojNiHgcFPilLmTY4s8R2DZ0GmPqa8WEqtvJkRv1sIfCuvSc
	 IfbvOc+7HL+5fkBpnPb7WlDgQ8pPNPi0ldzKzSWR0KXAfKhe6vipZYFOX8UntS6H/g
	 kCyZJ0YnmCsVzZ8iieBVztbEDbB19mqtWWnxiJeQJ2Yd599Ns/fs+0herBOTERQACc
	 RaFCljhe9MMOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F712D0C84C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830103357.30307.14432002345751014323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38462f6d7d311db428882f729cd89205e494544465280ae0ff5c69294cccab72
Date: Tue, 13 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768301033
