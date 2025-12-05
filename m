Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389F217722
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764970374; cv=none; b=d9TzHkqUZ3KuZwZ6YU0g8Jo2KbPTy915dRwj1Ne7RR4iLY3XGhvz9A6a45jArzat5/RK3oqbWvA8xNzwsVTAQRuwkyPsN2/CpivJd5y9gh7OG2gL/g7W4FobIyv1MLax1rr6uklJMYvGtHeU8xCj09UU2qMDkmot1LWywFHMjOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764970374; c=relaxed/simple;
	bh=ls4ppKASPrc1IKidyqN+Aq9m+ekMPhJ8RiR5l/rVxwo=;
	h=To:Subject:From:Message-Id:Date; b=XBBT361udm0hyrTWyNCFWqThsaE3ZLv9ZCBeDvUWqKZlU7Km70yjS6pJk6dKX4T/3ppJWaitS+wbVXFh53RL/T61huRqkzAqyHABltx5SKdoW83m/UQsFBVMhiv4MldyCgDsCWh8nvcMq1S/kqfTCszPzNK1xiFzkjXEfwHS6EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh036m+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh036m+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9277C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764970373;
	bh=ls4ppKASPrc1IKidyqN+Aq9m+ekMPhJ8RiR5l/rVxwo=;
	h=To:Subject:From:Date:From;
	b=Wh036m+FQk/XgqLLWF1XuAfDzjbltSP2UvVbACdubsWKNymxAECN0Vk6seO5JS/dd
	 8bsIR8DghRyktOQ5nI2M2t7R3NAaloPgYu7i2HQmvEqNqgO8LVnL9Pq0hDDpic5P2d
	 hewRPCKQ1KyAarKZu4plQeZZ/qrYH/qnOIsaKteMYTb61qzD6y4IlvbDxI4+Ak5ZuS
	 nDBafpfvy59UcSTUs/+kDmko3CS9nlRF5My0UXCWI9G7Z3iFdsmZQeiBUl8ODfAv61
	 Zdp/VVU+A0oWXW3spoPtvFOIiMrdJYrGkqtUqktxpmcq0QONWFvXbS9a22NxX3Ll3w
	 ht0hw1giPbxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB2D374A8
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497037359.19881.1855998359046439805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd41435310a402f52e57fb9d5857b9ccd4341739adf0f23f0d5b1cb1c12e415
Date: Fri, 05 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764970373
