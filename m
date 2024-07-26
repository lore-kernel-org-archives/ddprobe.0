Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DFC17BDC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722036954; cv=none; b=WAFcd7kHAnDP1orDGCjV+BLWjDDgRGvyrg7PnNm77REq5jAkg6gYhHkH84MxlSyXrMeEZQasNCFDjRRgJ2WVDnO7/AkAU+HFGgFOcB0B56s0F/7V1gKuMmPbCjvtPdamWw8YFTJ2nezn6SyTfa7dyg/moSCyKYAODHpLv3Zwg38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722036954; c=relaxed/simple;
	bh=9mf0xwrMUABldJ69trg769xD0SImJHOQeFKdJmVMNeU=;
	h=To:Subject:From:Message-Id:Date; b=DSJFUyDybvC4ZKOoFH3qFKyeru87k7OYr/S6kJw2KLECdko3Z6epvmzkg+VK/HsHwH3WzBXYaMEscZSo4I3lVHWif72IEtyKLv6nabSDKgDz2gWWCrluu9EPnn2EgN5x4SV2a3l06SSgnh/v03M59RCGEk31opyvQfjiX6IOEsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izR/RwlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izR/RwlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4532C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722036953;
	bh=9mf0xwrMUABldJ69trg769xD0SImJHOQeFKdJmVMNeU=;
	h=To:Subject:From:Date:From;
	b=izR/RwlIlNjXEQrKHthGmmHdaRAJ21AqZowsJWf3jIog4tupnUbLdcjdRwxudfe+2
	 mbTWKwuwjU773zLtY5gHl2pJo/Db1y6ubeUjOnop4k0e7L0XvKktRzONjescP4Zk1N
	 fLNxTwDxHVfIBMgsUnh/QxznhRJvK0RP0NWpKw49wiqIOphkctRr97+EDgbS66qLmu
	 GXey28p/PLYEX8fcdYb5mHSYc0rjTQ4IjXBNu5T9iTCWued9t6I1xcTn4qP/vdsUV8
	 9ZY8mWYhmJrFSxw7oY/hBLb8hfhon+KCdMqGrQHaXPCZrquoBz4Lv3EG1UWV4WNKKW
	 C1b/f/WKJ+ZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD96C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203695362.8043.12194029582646762678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37169a944fd79762056bea0b21415ead92007317e3c784f21ebcd18c66a82d6
Date: Fri, 26 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722036953
