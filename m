Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F4346A1E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780491274; cv=none; b=LtFA6XSG6D9gO5gG+C/A3+uTHOgco+cUe7h900G0LtQsHE+mN+Orqvz3MP5y468vl4Ef4I2PU14qE4N8/qqAv6riwVdQ5oKjSctkqyFvkVARNMgioaxegzHM9dyTgiWLxLhqJXowC/MMCvcA8QcJPaTqvuRAjOiQ7bP6KnQtAiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780491274; c=relaxed/simple;
	bh=9aW2dC2QrKSrjM0vpwbLgehx8Y5ASV8hb4P3zD5ZX14=;
	h=To:Subject:From:Message-Id:Date; b=dZ3LWGDA8nWT/bReDT+RGuBFWXivTwc81MRfuYSyITnKVCitXzYN9EehAIGOG6CjPY1LEGHxn9VlYIqhHd2ScQWX5/VasAs0o4PrYTT1ElXFdKZe+mKgRCNbLkbO9m66W3yDjaDQ5b+8Go2S6fI3aJjguhIca8tUvbRVDaA2o/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAtfhcR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAtfhcR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C116EC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780491273;
	bh=9aW2dC2QrKSrjM0vpwbLgehx8Y5ASV8hb4P3zD5ZX14=;
	h=To:Subject:From:Date:From;
	b=iAtfhcR05BTvWtKM7DocV/HKyzyiOb0z5LO5/QKxnG59c+wacj3hhURLwjpjYrK9F
	 9zAr7gkfY5NJlzEycuCK5hClMx7/ZJa70Ayr3zpsnigD1zwciQAGiohNCxU3GAOmOx
	 x0TKJcJufex4nYtmXYLj4BXclzeO0s2xE7NVyEdU9MpY2DO6iRsr6xITw3xonayHHG
	 afc6cHPvWziXLG7P2dMFQIAgihZKmBKx6nxrsIIbBgL/UibA77ryq/DyFnaJMMXBvq
	 BSpZZBIQAJPWAiHSmlzZ0WRAal9kdRkpooPdHQqUwwvJpiET9iQY99++hxj9aHfnbz
	 zoyEYD0H34lcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC62CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049127369.22141.5830610278953628078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3951533c2886dd1187c6ffef7e06be218ab8dd072404c487921be4901ed29f6
Date: Wed, 03 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780491273
