Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393D31799F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736567154; cv=none; b=Zcl99QfMgd1aFDFRlQUwIdH0VBBnG3PLVOI/1pqU1qk4CLUB+01G1FX/4Ud9QpWkBaMlVNPErkf3MYl4k7rVznxOM23KzAu0ln4PQ8Xb6xiifpviHp6Rqrmtfskdj8Pi13RGaISqqhVZafTgCRT+TCd6VmO238474TWzQzAq5fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736567154; c=relaxed/simple;
	bh=Zp/DrhB3/5i6lEETVVmUczVz9P7MwD/BUZawMm2z8Jk=;
	h=To:Subject:From:Message-Id:Date; b=cUm1mFyTrz/Hp00bVWKUdv7J+Ynqz/RitIEdUoP2WXDaKh1JxmQ1VZI4v3IqjhjcJz6BjhpKGika6pyJbd67rM55NoUujVNKY/ugnRaP4ebKY+3tU4qRJcGbsI5XJSFZGU8956U3qpdu47xQO1fYYjV00WY8Xh9UJkMibpuPn3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IylinRNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IylinRNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F2C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736567153;
	bh=Zp/DrhB3/5i6lEETVVmUczVz9P7MwD/BUZawMm2z8Jk=;
	h=To:Subject:From:Date:From;
	b=IylinRNzGmN9pGoQzzq4fQAWux4A/M2ghGutGboWTCLSjNsR2cDyzxAauh+ioXH3N
	 s9KXJldjQeIWHzKZynAtw+Rqloe1bGBW9xGPjkUoQqMTPJnF54/KtK9lxzP2MALG4n
	 ynAJui2jBBrYGjE4aljILr+chdsmIi5W8ZZkqcrZbM+FDem2TVO4Ot4/CnnGvlMG+D
	 0qYr3ruDd9ZxeKI0MQkYc7l8AOilvs+5j9CyOBWfCzOvWMPgzKYQd1rjUY6yjdpzCu
	 +60v7zXZGo0efGpZOYsHk4wBHkHVA+FWwIHZ+7XM7hBgBOu5m7qRcyau+xnxQUaA2s
	 ZttS6VR9RyPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320BE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656715359.18589.15453537062889500685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864a8ff86c01b027ab36551f111f5972385ad26fa87212728f9f9abeb961cb29
Date: Sat, 11 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736567153
