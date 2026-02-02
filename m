Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9EE1367
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770035633; cv=none; b=KMmC/R9dYc1926BcTxhfyzhr7vTb1pZONs6vwyMDJkkdpqOhStAkTlyFLRX25iVNgCnnr9Ioe4Fv/0Tth5P4mKAqhBLD4+LuFHELWb0zGNnA0PziQonKyXORbcYwj8ugBw1q4XQgYdX0p4nckFq0rN7VYlmV6E0tZq5J6HD6IGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770035633; c=relaxed/simple;
	bh=YsGUb/parPEhdZ/gAbXoAKEy5Vla/3EEI2Iu9PqaBuw=;
	h=To:Subject:From:Message-Id:Date; b=BKZUwd6M62zO46mMFHqhgIk3TpwATlZ8f4/uzps2/6HfBTNgn4h35CVxYyWiyZzmKIn5yYNK2oH7qj36yXcqdyoLyRPPehaTgk79dQQy80yUwMx6ZhNP7P9G2LvxgVp1rbsytBJgYP9Q6+8IcRH5Jp2Wwaprk0dQf5hh5It18fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q91LPfRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q91LPfRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DADC116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770035633;
	bh=YsGUb/parPEhdZ/gAbXoAKEy5Vla/3EEI2Iu9PqaBuw=;
	h=To:Subject:From:Date:From;
	b=q91LPfRa7dVbrgm4TsQNsSVzc6UIXJGWVVIO/7J4kdAsMEOB/AuXWu3bc94f0u7er
	 c09MdkurEsa8MIH0yYS1MVmXhms07wZQMM0kuKscdOfWa21y7eLCkk5s4+R7h9YlhX
	 fpKN1Jek53UKoWXffoFW/dnE/qsTxGESH71aha+/qTB1v4+aE/WR0+HgoeGO6EEbpI
	 6EYZCQItGYnazp7gGnJosSA1rQR3cb1a/PamaWDAPmNt+JbhfGR9+dfcNlDA84pty6
	 m3yCct0d2CSQP7lmQIdXM0G92WDdf0WMMxOprd1x6RRajL7N5J5t/p8AHxpMyPWABI
	 b7VRi+gV66ByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4614E73158
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003563361.22478.334182269746153973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02dbad8b600ff032efa33d04702f52337d37da00e9e7ea9f2f87a6ae5f050d25
Date: Mon, 02 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770035633
