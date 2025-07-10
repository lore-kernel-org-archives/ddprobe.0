Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7642594B4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752154793; cv=none; b=HquEe6dhB/woZY/U3rSYhrulz4BWfy8/zQTJVwx+2pFaysztxa8g5utRoz7brFdc0TIrIsUTQgr9kdGda6QqUM5t499kpCh///1hXxXjW4r0amdHx7oUc1q6j8t166ATDXuG9TkSQeS0+WjjCyMnj8pPVU5Lk4V9AdR7nG/gOiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752154793; c=relaxed/simple;
	bh=whz2zf5RT3QQNUrAZby75mI2+yD4JSpwWbfk/mn+Nug=;
	h=To:Subject:From:Message-Id:Date; b=P8W5uxvnnaYX2NB08lTeJ+fbL7qdpASApmrLei0cpOR/5FP801eG2GO/jhxtEZNtQMtTsx4n/62nGsYrVGqLk7yk4rgp2Nzlem45eRJ0S7uQp2t711pLFUg/aIUc5hgXe6cRVQ+vifEqksziZXNfdyUGS/o9LCG7qflpN+umwVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJDZQEQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJDZQEQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752154793;
	bh=whz2zf5RT3QQNUrAZby75mI2+yD4JSpwWbfk/mn+Nug=;
	h=To:Subject:From:Date:From;
	b=lJDZQEQh6NNKAlovIIljLA/WUcY+ARoeGoY+5fTprIPfnhNkNWorFOahwDung0qEN
	 kM5ecJGJq9mRagu6S0HVP3SNr8pn+MVHatxT7btgAoWGD/N9en1cYskgFv18imOAKe
	 X23S9X9QtxN5HR0IHYlVbDaQkTtC73M8jVOHj7VkHYLS1WefBb0/3c0PyUJzNDPEVe
	 wwArAHNdBo2gncu8Zqx5Q50R0o689DqTFLZ1HrWev0HKDsmL7LC33KozAqXDtz2R6h
	 OwP2I9Oyh2ON9sJeDVLzXy2h+MCPqbnruEGhbOr8R1cUjls55dguQDbpdRir776S8a
	 N2nq/PB4CIItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB67C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215479358.10794.1182353429829495050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3733d2c8aea3436d80f8cef16412f5994767a33bc243bf9862fd22c6278198d7
Date: Thu, 10 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752154793
