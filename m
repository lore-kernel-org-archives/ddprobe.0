Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C61830EF97
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778058454; cv=none; b=ptYTAAkBC9GlkxA/i51tDppp2kGgpYW6n0c4KSH/WUeNjQHN4v/+k8QM3rlhKNjjATOZpNr1OUG8DLO8WDFQc/iJtfeTes/0oO97gbpghjc1Vrt2pFN17cBjtVScHBBku+fqXQGXbSXoPI/r8kJPQbv3RHv3yARaKxSwppRDm4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778058454; c=relaxed/simple;
	bh=0FviYvdRFzNoXFJClntUeFsuagbVwtkuM4QAlCIT5l4=;
	h=To:Subject:From:Message-Id:Date; b=ADJzYF4unEvzp6bUWYDY1DE9JVyLNxDXZNVdCilvkwtZD2DEpppLNBdpjVzKdAMevHXI8//KsRKYfdYRrbyBaosyY20LD/kaekzCJYxaGeTpDuFHzRRaNYtU/bBXiWU4itvIYiPIgWTdLMj3+bSgtgISvb6WSl1YcOdMElCXSsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIvnnxM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIvnnxM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC8C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778058453;
	bh=0FviYvdRFzNoXFJClntUeFsuagbVwtkuM4QAlCIT5l4=;
	h=To:Subject:From:Date:From;
	b=YIvnnxM50y9jELQBibyLeAFjcWVYvqbi+3ZslgO7m5vJTPaHAimq2VJul9ZCSSaZ3
	 5w2rQiNxGxtpB7SkZscHpE86+0AJfoeoToVP3uuDQFrpvKNGxa5T7WB9YPLJ54hLOn
	 iYOYcr0Mmj2B6/BNqWEhmtQ+hFx24rOBew3BcQdIXXYkU6xP6eH9yD8kedN8drUXj8
	 HBO3WZQbht/nM5Ja/zzUiUq4TCpMxwKoOXoWc8DK6cAUJLpwXV+ZOcOMi4x+UIYuFQ
	 Dm+JQ/u1t+uKpnpOObjy6M3XhL4Z8GkOkNoY7yTk74kUMcuanSjHuPuqrFtBv869ry
	 KickE0/7z4u5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28ECD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805845369.30523.13473408771226717060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b44475b7802ffa810f1d93f4ce40a45c185f5951d787025f761afbb6b409d6c
Date: Wed, 06 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778058453
