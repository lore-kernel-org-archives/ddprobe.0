Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B04360
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735223154; cv=none; b=ZHWVqGY/LQF97nOr0aSCQ7PjG/SpDHi2j13L3gsTyDqPZLXiZKcSRMOoddPxaLZZs27XD7CbEVxA7aJP7BIrrbBqDgK4Y3ru5JqXz2VHethYwocCW3nLC4xHfYX/GEOKv+zw/1yV/t2UUJdpkWXq4rUPrUdn94OXt4kroKhuTfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735223154; c=relaxed/simple;
	bh=TSnmp5Rb+HGQ/BKlY2YUxQ029cMxFhEwPjZQbg8E93o=;
	h=To:Subject:From:Message-Id:Date; b=UWxboTtzrzg/DlG9Ov7vQ7nIZktarYuJ4pD2CDo1QdR41rpcdi012c7e6onSFtrx3TeNS2rTC04xh0Ie0TedOa0xgBaKTq/rRLOh4+KMpvNNX6CpPk1eAN8HelpiNRcVNpGctEaCj0ZPVRu8wrbbcuhiZ7HvGvLE1JxvrxZRtBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+GynkXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+GynkXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA049C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735223153;
	bh=TSnmp5Rb+HGQ/BKlY2YUxQ029cMxFhEwPjZQbg8E93o=;
	h=To:Subject:From:Date:From;
	b=K+GynkXxvLcPYoxs5qG5bF4GoY0hEujQHml0wrltl+oVat0h3IkBQrZx45Wd6+P9q
	 zyFLGd4oFufJun7hdjR4SJ8AE2OhFjViI5L4+qhv91lZiIYBsZ99ZGRVu+y9eEWxIU
	 Wi0GnLI8np6Ef0I7p577FyaA1gflIjeER0jYidhaoPbLpbEpK2Jaa5Nh6tr/x2swNT
	 RnqkK4qoIB09lvv13iLRPyQtTm3lYIBUNpCk2JDKKcBW8X7Y9egF3UXWlW3qPcSJL0
	 F9g1nZj/SXxHWTwEXMQ5izrBtHe6+5EwRCwfANfgZ8ywuYWEbdt4WZAk4caV4xA4Bx
	 O4BbvW5HjJOrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CFE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522315358.30362.9395948594378663983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e098b4a00a02e3908001a954a6fdc1c400e4cd3e1e0765cc797f8806badcfb2c
Date: Thu, 26 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735223153
