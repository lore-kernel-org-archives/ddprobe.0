Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3341C6FC1
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720352783; cv=none; b=uyeQJdEjffHJ+KjKqpg/bK8rO7nMIImxQAcut3rURiNMc63b9K8g3duY2ppwZwexQsStITMT4zXfQ0Kbo6F8Qy8yrmBbGEz1g/K+ds4yF1SsrRDVyS8EgQqKBGTUQx3ac5ZxICguUfJS/UmUiFrj8WWmcLPdQ5WRkmMR9EVLdjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720352783; c=relaxed/simple;
	bh=0C+PIehzRliwlIPw3KqMMTRNpgi8oNCnjo5Musohhxg=;
	h=To:Subject:From:Message-Id:Date; b=fsGS390RvQjdbP8d5YIoK2he4bDW4x4y9YuI+bovZYISVj7el26kYzF0W5RJady3U45SvDCJ45RzPvM6bOlTCtMy7Tg0ynq22TD+avuwm8wGv2O52HJFS/dAui9pXYzqIc4nvfhniHu2qbqXbQzw8vzMS1DIwUweBYx2PnHwbHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awj/3AeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awj/3AeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D153BC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720352782;
	bh=0C+PIehzRliwlIPw3KqMMTRNpgi8oNCnjo5Musohhxg=;
	h=To:Subject:From:Date:From;
	b=Awj/3AeRLNVWMWLRLRWdjwA4PTU3NqYDLQEVjomJE3iEF6XoOLL98Vg49QbSy4Wvr
	 EYQe9T8vHcW5VuaQMoQyZBkFv2wMBIk2WcjaKy5rSJ35NewN6jgwsynBE0/GNikU6L
	 2dsEwpxfg8XgTcMU7vG7mQMcAQZr9LiG0FBEUmRSS6tbOsUIOgUxCmcR4RbC+Qy0t8
	 aoxHDbQPde6qolku7ddkK42rCuluIOEwryOsettPTM91crRRTsH49bLqd0ax2zMuvj
	 5/41CCVVgKhNBNV5v/mwxB+Gc/XfCdv9JS3RdqVlG6sXSAgXlS1j1hjm7e3zdSOsGo
	 LW6MrYRr7d4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC16C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035278275.31331.16693548161587972495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28084146a3ae264b076ff2d40fbd941ddb5d19fc70a11e26941a82cd349aca0a
Date: Sun, 07 Jul 2024 11:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720352782
