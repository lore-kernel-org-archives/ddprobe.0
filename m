Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5906526ED3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766014434; cv=none; b=tKj3XcSzradEITbC2yufrokLU5+Jrr+dnqcvIBMhyBEhNYTe1KiWCs4V6suPw3wu2gGoaXs0ktdUdSaXUMdPv6wck7I/38hLelJqmDEa5FdP6h5QDDdZeCwrs9sePqQSbtSbp2fr/qSJFJpITB0Y2o/gUC/CjFNm5wjI+czBiHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766014434; c=relaxed/simple;
	bh=UmAXjwBVUUX582xQ2ntRtIbZHUdtKR2gPJoLNbjMr9k=;
	h=To:Subject:From:Message-Id:Date; b=USj2+0LWBdSvnqGSLTENUIdvShELnSZAK1jZc/VGxk9J5FD1Z/LbJuhkE3qs3GEKeNWjME2u60J62sHXh1izZLkCAhHpAThNM5srhwj0PDxfh/26Yr3MUyy6IVidN/HoXGtEO85AVoKaBVhDYcou8nyTJ4xoy9xMHoPVAS3/qns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTvhEjuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTvhEjuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766014433;
	bh=UmAXjwBVUUX582xQ2ntRtIbZHUdtKR2gPJoLNbjMr9k=;
	h=To:Subject:From:Date:From;
	b=VTvhEjuOPKAjSiSGIiN6wkNDC9JikwToTII7KQ77Ks75yaUIfYTcGzSNN57MCC4cF
	 twkVE/HqIH/hFtWAi0Rl9AJ8P/tA80d3+8mEmBmxJzHGmxY35759uvINp2dkUzGNWz
	 qzDJGa4CGBB8XOd1EQLjWY2OQaPk4DaqglFmrSbsOOSdttPtg0TY+bBNoRVYvuhm0L
	 mBvUHPNWwo1M8cDZAS3dIpcAEkZOvrDmN7T+MCDZ+kLBVjPeJ55TTh2fyZemOaHzqa
	 i/BdCutbHmjGT/kJbg3WXmTSY/c6qCkHi8g4D/Rqp/hzCdZleRRjBu2DC6N/Gfx2uI
	 dgyeihwzibIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90201D68BC2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601443358.30511.17816514637056110301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6fbf7cfec39b5aed3d76a30b9cb8b5b463b9d4f46f014cd246b41e23f7ef71
Date: Wed, 17 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766014433
