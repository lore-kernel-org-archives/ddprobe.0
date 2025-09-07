Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFF9139D1B
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757224194; cv=none; b=tIbtqcpW3v1ArFLbxoZutvHFmB0vay3q5V5uebVVuswWNyljJt84K5GzO9pQ8mkZTEh2rkMxfOgjNc0cLjWkLS3JAWERxwht+TL2vjjDXTMwzQBnAKRE8rpAIL64TUVtNiFTl0X8eIkDwtZCZO6NEi7cK/7v6ivmEgtTgxkFC/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757224194; c=relaxed/simple;
	bh=A6K+2PJ2VqCZlCRGYQZHXPKQYMl7go54j8YXmy3FKkA=;
	h=To:Subject:From:Message-Id:Date; b=KHZNXSz0ntdURMHeJtZgDDNxXQ6joYotf7BDleT3N2Jvf6/BBoqQPygc9Go2ism89LD4fsDnw5SbkRMTQuaCkxa8cLL2ou3F4FLBgRY4Dv/xeoogj7/J98U3lG3Jzz8NHxVksxN/3eIBJ/KPdTEEaUrSQ/68y2N+903SfLO1zkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4l2MOv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4l2MOv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A83C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757224193;
	bh=A6K+2PJ2VqCZlCRGYQZHXPKQYMl7go54j8YXmy3FKkA=;
	h=To:Subject:From:Date:From;
	b=t4l2MOv4NmBw02pCPq1NgIrWDduYFC0eZMXGyS/BwZpZWF4G9Bp7LGGwAUroDIxK/
	 GyBlR8qZeDX5BssjOEl+WRnKIICtZsKPHlPVHh1jClHKITBBQxWbaEFKKJC0L/FBQK
	 c9qZ2l9DVJKWGLjgQsPX9IaRBhawYMbTZo6zE7PGz1yxj/5tKmeS8nleVfUPb2t4FH
	 oLD0m/hQbUAisdfgjwgVP05TZ+0sfAwHLK6mIjO943J4JE+yz4JvQq9UNVuymGc+T4
	 wUjsZaplb2SoljsT7pHitdDeFIoFt0D8MLP97ysfrAdcn5gn6t4omwSupkumdI0Fkt
	 +ZTbRv+2+bYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93124CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722419358.8216.18181241384245664435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48378efc1f8c73a55bd50d91c3caa129598a5fa9a445e29291f57fa67de4d400
Date: Sun, 07 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757224193
