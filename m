Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7A414265
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712997563; cv=none; b=ank3z+QltYWu5nrQ9YiCSzy7iWePQ982q3u7XNEMc1A0gSv30taIMaWZ+3+/W5vhkKaGd0r+v33UGsqHKFT6R7Z1BF/j6fv9DF82ktPkKf5Wp5PVSRZJYixaKmvkaOamGBhdENBpmSsM1FsQYBcYzJxJJopSjk6eS6jQz4+MUJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712997563; c=relaxed/simple;
	bh=Pgj7n7BuS2FXKA2vYkGuhGJ+5LRrysbLfcHZeP15PRM=;
	h=To:Subject:From:Message-Id:Date; b=OIUFBEE15suBw52D1TzK9iH+dWksF5rmt6662RSvV7ytdLgwj7M0pxjwNbv/korZeqYbG2ciKvCB/dsQShzvjy60kobypMQ+62XFRbD77c5Hv1pl89euiNSI/KmKRDPay6Nw/rXIaWwy0Ywq8nVibbMOZ6flzhNulxcQdvvCjV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTAUa/bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTAUa/bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC6CC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712997562;
	bh=Pgj7n7BuS2FXKA2vYkGuhGJ+5LRrysbLfcHZeP15PRM=;
	h=To:Subject:From:Date:From;
	b=HTAUa/bkqdU2GxhITXcylhksilCXux/jGMN0GHmNcroEs6y3sk5EJmX99g9oe5hVq
	 MwHlfHzlje8wS21TvyTTaTYdkd6GEk6eRWwEdFeg6i/v5JPcc3pBUaYxpEvfgWx3K2
	 hEAn3YehVLmrBErWmoc0kOYGb+ipD/hpOMlgLdXJhmlRESj3Oplofh1177Kc31qQ6b
	 FJKYBekhVScmOPIicXVyouO3NCtWkpxT9vxRolYJIzsADBK60rh55nDT/pQFRJ8i4q
	 p8cbl5cMt27YLK1KvHPHaHYYSowRGjkTWHVJsHisS/NGLvXy8EMTL8zIWA98lxkLqs
	 5MMXdXsDtyUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC5CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299756275.9701.1803845598969748471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74080d0b3649124f6e1fd6c7d4944ada5224e816c00f76292ce65650a8fed3ac
Date: Sat, 13 Apr 2024 08:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712997562
