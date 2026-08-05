Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB540DFCF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785923434; cv=none; b=oWlinZbu7IQvq9AyM7fnMo04Th0zuAdVxcTp62af+WPPuxiHPVUlWofvGQzvjJXCjTsREAIUgiDBoLpx/C17/YlSu1VrCdwI/kLOCHFXi70sirH6hS0Cw/rtia0ozJb1oA4FMkvH8hDc+O6xHlvDrqTCVy8M6yHcVvYB+9TyNUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785923434; c=relaxed/simple;
	bh=lAuRG/N7FUAHkiWtb6ipvR4G9Ftwm66qdPCu2O9ywBA=;
	h=To:Subject:From:Message-Id:Date; b=Qi4+dI0T6/1TIOTY3r0A7wt0px6a/aZwbSU3r4Eia3F1vOGwUVLq6r2kiXXEo/j092H/aRmn5EYvZHQ24lPv5FatoJjdvRyrPZbEqRrEhAfD8qpT3f0nZ5YT5QQQIhFnjcPbhsKXBWQ4SNMmGPQse9w6TL/q+a8N3lHKNZxfbPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2T44DOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2T44DOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB07C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785923433;
	bh=lAuRG/N7FUAHkiWtb6ipvR4G9Ftwm66qdPCu2O9ywBA=;
	h=To:Subject:From:Date:From;
	b=Q2T44DOcpHxTtSS6/AsOaj1j5aH4d7/tFORnDQyg/Vpi+LEv/aOlP7sG85SPvVvKq
	 hDp1wMFkpG8MJN67P6VPnwg7DAVHzP1XefBzv8RsjkZ4HlUwmWzyL++1DW/jHFR21t
	 TQS5JzjcKP4QGlSYRY7wiYfHDmfLeq6vxqqYBllV7/5KSeFvELEBjH054xQ1eWMIfU
	 NekNjs7CNZUcRc0YjVeK/lf4GIkz8CVOrytfxDLT9SMDO6dkiM27VkVLUByBxl1gxi
	 ly6EAJcQ14UTBtmcmR9KNk6uN+v+c/r522e5xxlMIDIN+RJMwq77oHIu1O58XmTcem
	 KjWIPUnD5fzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD79C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592343369.19329.10598676167744665774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215755e32ae8ad039d4d60848993e07a8bcc21ec7adb4a564a2767c21770f898
Date: Wed, 05 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785923433
