Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E51D555
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747157994; cv=none; b=kkGONu7Ts02TY92KPecmt2wk++7Sz1vQIh7zZwaxr29m5VYnlqldP4IuWDnzpcwzB/0md2KFJElCQOFyiIujF5jTVG2B8m35xLWweQF2BgRXVp7hfM9vDgoXNxOd64Ym2JTXOgeA8I1gP93z+Cjq1Y8fiiRxadUUSbfy+/HdveM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747157994; c=relaxed/simple;
	bh=CAJzVcng7mGPih8yQhFlm5SbiHaRZersUnEXPZrKdEg=;
	h=To:Subject:From:Message-Id:Date; b=S7QgL6LPu5VXv9Ah9XFczyp2WlXl31MaLq4WmlD/j36b/px8dlmXX59mISosViqe/ICF+vobw3fiLKlYTolRgyWsREq3Fw6j3dQZHkAcUOVmDcA18irIwRnXu5Ob/I/xv6jVMve4iFOgIAZfE2YvBBq1WwCXpFVHFnLQQOgnmrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cap39YS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cap39YS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3618C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747157993;
	bh=CAJzVcng7mGPih8yQhFlm5SbiHaRZersUnEXPZrKdEg=;
	h=To:Subject:From:Date:From;
	b=cap39YS5ADcUfFcetRHsXJy+gjbrSx78EhFrxT1bOKVJZL0elgoGFPJCOBqwzXbhX
	 XQZ91RrUldDLSRXsU9fwcjBqWcmASVg7iGcywArEFd8ZPP60+v9zTZsuKix7lS+Kka
	 8GDx9yWTjVG5ndbki25WaPqjRwcADhC8NydBiBdtAe80QKZ9h+TBgto1BG2+7lDrkG
	 2gjAbJU7RonL2Rb/uTtdVUKO5JUpUQpW8CwHrcHCMDbapMZVWmjfA6lWbCUDVJR/Mh
	 qyqQlnx5byP3K8AyZIiM6b9dCzba7UJIklN/W0Itg7dVykc2ui/93MYv4K6FVmuvhV
	 dy4Z25k3jdWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90565C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715799358.28395.6624089592839764288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38903284f26ac051ce326178a5b4fe754b6123acc72e175930b57a54778708f6
Date: Tue, 13 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747157993
