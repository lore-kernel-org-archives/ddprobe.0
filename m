Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF8D2AD18
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745293195; cv=none; b=Dl1RN6Qikk73hFeT8PC3rkOaerzz3Gst6KMfvenxk84QScxlcQk6y1o456gzpNKc4sVJTz0czL74QB00KV+jl/eUKFXcjALvWzp4SXcUmBoruc+yK7q4elqjSg7zQox7hG4yXg7q7YFLzqbyp+j/sag8zYlKY/zlKvC//cBpeWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745293195; c=relaxed/simple;
	bh=jkJdiKKPAfXlQ0s8YbcfR41Wo4UX/ISX1c5BYWDg408=;
	h=To:Subject:From:Message-Id:Date; b=qZ1PQX0/YppEemgDN4A3pUEtUQuaJpnyzAlBIzLgozP7agHuIpoHu0hT6n4/suZuFKSDBlZ6AmRyG6VF7kp/YgFfm+ZXSJcZMFTZMkRbyLjDw3hmi/WgiiE3oDzKplyLrQWB7WMBj9nVjv6O8YjJzKvEesr4Hqt8hC3Hchw5QZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gylmJz06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gylmJz06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B140EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745293193;
	bh=jkJdiKKPAfXlQ0s8YbcfR41Wo4UX/ISX1c5BYWDg408=;
	h=To:Subject:From:Date:From;
	b=gylmJz06edmEI78LQmhsf0NOR+tRHUID8rbLr4ygTiTcQJEAAZdSah7n/GS6lWh7s
	 JBvVR5KXR8N4ZXoLDV/zgFohLdqTeAZhrLsRz6S4t4kAUbaQguK8Xl8iqCwOGF2uo1
	 Rwxl3LuZfqCTzhHeEcXW4qSlKf/6pEi924F2eJVgWstun3CGXHJLIhFqCPjLuSkiYx
	 2+ZPqx2E5ahyxx+cqbshPTYqC3QRqJ1JYj14FFgd3Ysy/sZDPsHVULfLB0PE1PwtnM
	 gWECVzro0MbLbZOWHxM+VygO1V4NZY5/thtILgOm3pLFWwOIjYLftiIvB81olqwwgk
	 xr1kEfpuU4tng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C68C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529319358.31744.4014455836485585106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85593e3086763ebbf4e584a3a8e57b33dd4690e3b9c59345edeff173ded18676
Date: Tue, 22 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745293193
