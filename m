Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFBE4C74
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748969394; cv=none; b=MsITeorTYkewNneyJA/LxOvH45RL27tvK3vqQ6ShiB54Z8SJOo1s6bvVI3kQnEAA5Bwtw3G5Ur0IrClzWiLJ4XcqSUr2S30PBZzXN/95UHjGobwTjbbo9v2k92sIXU22Z0lsQkEetIGpN9RfRpCGVVhR6FnDByz1JoHagQ94jJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748969394; c=relaxed/simple;
	bh=8kgYvXCDxPOxtQ04KUDXmQETRPTo6x6DyiycuGpqcTY=;
	h=To:Subject:From:Message-Id:Date; b=Q3kDZWYHPYgTrKTYnnZLKSYdeodYBdWdrbHLZEGzrzYJpy9B1CdHH1GufksItUuJMbjRWrWMnyB6LFYlp3BEKP0GYsKbzTUnWHivruR6jsuT1M4MOJI5ARnwhtd0sBJGVmKkpmunsQZxH0cDcO04NpJ3AeUMEIdNpLCuh6EVTH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7MUaQI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7MUaQI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748969393;
	bh=8kgYvXCDxPOxtQ04KUDXmQETRPTo6x6DyiycuGpqcTY=;
	h=To:Subject:From:Date:From;
	b=C7MUaQI3n8WN720UhhxhVn8B34qYrzHhDN7LrWHb8vMraSHDxVPuvFTLvjljiIEMD
	 ch8ieBiDKo/bOOFC/jerDVOXOn3QS8HzcA3sVItklJh2syOUgGnTCAlaY47Kr240DZ
	 Us2KALwpt0WvGOe1KSUzs20VeMAHbp/kkbDMi2HtpITmNQZXaWdy9iuzk5jXw5eKmH
	 dQa0X2tXTqmunT01a75xr8E7N7NqrTr+werluROTgLQgo4CWj++JZrnEDIQ5u0KP9o
	 L4zOrwCe+Wm4mcQH/yTix8fW8gF0Rf9MUoNI8VwPSY1DKvpUwDt6iptKb7I3l+LQ+M
	 TZf5h8/sYu6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9305CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896939358.24356.5873566039676878552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c05df89a042917bd0b976cf17f4679a739c3bf70566d70bdae06821a74903f1
Date: Tue, 03 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748969393
