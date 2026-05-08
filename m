Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F629286A7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778216854; cv=none; b=gyCLsr/y1Fi2DWjHo0swjoc6crHJmbkJOxwlZq8V2Eq/SbuZK/yGlKBPrRvWGE4mQe1XxXkRCxXnFVvRGRNqHTdn0AxOsYF5LRmKJyd9ltCugQmcltzUcNNkwWlYLX+wN0EW7i/yFLZ7jB9yO++OTHie5AaLBjDqFGOY5Ijxfx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778216854; c=relaxed/simple;
	bh=EA/rDPUrFYi61SlrR1YKNok6VolskGc7IytxYQjvLfE=;
	h=To:Subject:From:Message-Id:Date; b=Fzbs7hY5qaqXGwo5Ora5ZgOb6/CDA5tbulatFESpJoP9ZkzSeSKqffbIxN3f5MBQ6iMRWKpaumW8V+qo5xCHuOQJReUzm+chDaKGPyZNtC1wQ8nIZgnB8q0K+eeIHtOJnKIFh+cbcD8kSRGpRrSLtbyN20A8m7sjnxbozXH0lj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNWurLIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNWurLIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD34C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778216853;
	bh=EA/rDPUrFYi61SlrR1YKNok6VolskGc7IytxYQjvLfE=;
	h=To:Subject:From:Date:From;
	b=KNWurLIqpeQH9GO9w3/CixvoXAwuAY0r8/L3Ea20TSzNZ0XRwG3Jp2UALOou5QH5Y
	 ZlivhxcJMOEzCjbKr1TgMQIFTwmPfeFLDyx9KKafw8eFQ1jdjqPIPl2QO2UUeOUjpd
	 4gFac6EJn2i6ZAwWQtX0Wd4U7wQZLC8C+QjbKWvcAO3Dms+UT3OBZyOk4n0Wgj2haV
	 2z+ieqGIqrkjDMDoTZd3h0Z9ng66/26eksEMV1EEpCJykD3vVv2ylQreZcrSfuHas/
	 FMy0wcLspKNlELHr2hZFJcVFxG3phzV+iVxlZHnfBuS1+m8pVkaoWmsWG5HGzg2+cK
	 pfpelx3FDgexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAFCCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821685374.23109.7843156155132520128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ee3292f15c0f0ee9f298a9b72fc1ebd5adfc3500a8dfdb4a4e7f62a3f47e1d
Date: Fri, 08 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778216853
