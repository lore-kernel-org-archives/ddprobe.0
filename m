Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0311A23A6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754068194; cv=none; b=Ba1Dt4s3zHNOpyuG2XjUa/5xB2JrLxUjgzzjMSC1GKc9ktxenwStAWAAXF1lsIZJtAprTj48fvc0QL03bPh6KwUqrczl7Y0AXOIidyf1K019XQsHbZHlvWDfj6v9qlDtgski7lpX1nm78dnJyMK43Mc5e7wE0nC14+28ywRiqo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754068194; c=relaxed/simple;
	bh=tmIZmLCL89nDqIkb5Yxjbg6PwvY+ehqx9xvCjGUqwdE=;
	h=To:Subject:From:Message-Id:Date; b=jUIXTyOSGjK9OhiHPzNy/45a5SQrUDajGE+ZBvLxS892PBwQUoUCZ8+ZoCBr7va0kFcAFmK3TVtN7kQt3XoaXCDBSuatOC+Pf4n9loyRb3yAnClibVYc674xA7UELf6BHl9yuhVPmSERkG7e1nBPuL6mKmlFwGYJUmM31QuzHNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdE0SM5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdE0SM5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754068193;
	bh=tmIZmLCL89nDqIkb5Yxjbg6PwvY+ehqx9xvCjGUqwdE=;
	h=To:Subject:From:Date:From;
	b=LdE0SM5hjGsdHZYFVLzfz1JRTovQ7R5R5agwNGXooUbsowjGRovUzjoCJ3yXn4GDI
	 TOw7xj8ZhEyp/EHZoXvZWa9LwzBwyU6BtRsnx+VJrxZDlWf1Z6qvCkwGS/53ONEahY
	 bdtJ2arvnx4/T4ECSG4T1AjZSDdCXLk78Xehup2Hpp9yrnuMmswCAPQ3scys42g5L8
	 gAM+p09WMczkJ3OmqvaLsHYHDQ/bDG5rQ9BHfQJ+qMjaLRrF/bwVtUlhvmO3wuDCDD
	 WL7b3SHha66D7wrKtPo74rta5XIo1ye8cmIdIo4nd4uqQI82gD+0td3H2s5ZBFbG8a
	 wXqgWc2brwWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FCC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406819358.18082.7123141166618232373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c3a7914ee408107a40b28513e3f149021865f39a6316e51b5360242ede06e7
Date: Fri, 01 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754068193
