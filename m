Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C463822AB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780605274; cv=none; b=Ky1oNpBrAxbGKh3lel6w3ZXy2XEoH9EYvxIvwB/Z1hF0/C4iVoxkzHaH0yFAvPza2ZEAZNudOAPqBHbEbIx03n9HQ02YH7wjrKz9CJ6OkdLIFNbpNbtKhRcgJ2KH34awWDGoASbW53EtxhNgQifTk1VRJrNC2r/WlZbRfiJPAZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780605274; c=relaxed/simple;
	bh=Pz7Lyo2PHAyiUYTmcX098GsKJFEVVtE6C/dpm87yjKc=;
	h=To:Subject:From:Message-Id:Date; b=QJTvbYePylsOuHPa0IAadVaUZENOgcl2hrwnQ3VS7doP8nhHVWh+p0nzMAGVnW7fXAl8pTbhArOw4G0OjnWQ2Gwi5RnGPrKeLddXyzramptLMVUoUJ+V+VjhrMHnlngGZ2Ijybd3vxtvX9dfYCx9VC6qUnezCN58BVcE+JeM3kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koTnKod3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koTnKod3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8197C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780605273;
	bh=Pz7Lyo2PHAyiUYTmcX098GsKJFEVVtE6C/dpm87yjKc=;
	h=To:Subject:From:Date:From;
	b=koTnKod3XJJi1GUV+tUUD0/KBXhNdJytmB4iw4UfFIETvrNKWAJ0eA7b3cqtGGF2t
	 jfi7dJDtrJwbaHrOgWhsLVXgATPQ9bquCgpEIp3dZgF0lbnCy75CpQJ9hE6zQIOkWA
	 j+NpVrhxYYhHOi52CrKSmpB16HbAwt1vvLSFuR8mALH2d13zrx2oO+201bmGYOp+sK
	 HluDlakZX9Ddt/MLO/gElb5b4UbzaRKM9F943PXvEGyeDswiVJJiFonOrI/oytbfMx
	 sBbddR/SaSbgW6xfaXFdZaY22YeQgxEYe6QwihLUd+fJxHEH/CMup3IlfoHrMsO088
	 jScmfTScU3aIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E8CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060527369.26661.4153921630838229907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c9321af3fb9e76670766a1c8d3287a693f0a15004a69116454a7772c0f3d0b
Date: Thu, 04 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780605273
