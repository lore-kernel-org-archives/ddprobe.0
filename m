Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EA23A1E92
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766815434; cv=none; b=oWBOTWIBUWaIGvP/tu0uqaXWoe8Dbh3biqCYzF2nudO8lkOIljmI/7BzEM4mkOoMLM9riPJR4SGMc+TmlzHVajKKCADNXyqJYuZGYx3l0Rl6pe0fQKMbKmUKS2lZZtw1dkRkBN0F6rZEBOYl0DDfLJx3p26tSZax+txLe0smsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766815434; c=relaxed/simple;
	bh=rv4ROcu9bjH72sMOicU2/UjJoGC8xG/M/rRygdm5ksU=;
	h=To:Subject:From:Message-Id:Date; b=btW8WfkJUtadNkUhrNz/nB9hfnPiayVxBRX2TDoTw8DFAWC8sw1PHRa3GcRVGBpc9RRTt/Bag/xGZgVggMtKOFvlo8mXVNkic0E6/P20OX8JB4nZt4UYjBRfIgXPpSmReasLbnyxScj3ktR/jC1tVbQrwPHligcRoNQUouGqwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5YrcM41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5YrcM41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86EAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766815433;
	bh=rv4ROcu9bjH72sMOicU2/UjJoGC8xG/M/rRygdm5ksU=;
	h=To:Subject:From:Date:From;
	b=L5YrcM41fH+otgWN3GJHO6CU5Wr7OBdZPi+gWP3fgWdO1ROA8WL7whBVKDJffyPaL
	 ynkS5ZZ8bbD7gKJ/lNT/VQth7RHXl6HStWTAi4+Lb6ogCeLqrWAyIftBIGwHj06jvU
	 F3xHv3ZcoZJZCWUomv2/WclXWlTI4l7dTcjLgoPE3KHNwxdhlhwhUCKeT145883D+I
	 xbobmjjPKTWRnTk3Xpw8eNvd0Z4buNFjwBqCHoZMa1LwIjhJ5xptd3QFuz6IH0wS2W
	 18lbhJNu6syKV4/yGG0FJyF72tAFyX5cbeHPqNjMfNPPmryMAOUCAO2jQTZ2vxRSjz
	 bcYndEL+jY3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CD1E8FDBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681543362.28094.6257040554287558358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731118633e66b6cf4bb97ed3c32640d5fb1098b33c6e5c0085dd9abe09152557
Date: Sat, 27 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766815433
