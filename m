Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D077479869
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792052434; cv=none; b=j1DZ5d9C1wI7dFZ97NqpgUi091UaMALRhB7p65KAfCOuIs7WiiSaUgk+NniaUkTdiHTVk2sScKf0oJ232sGmxrMyTQEUsZrEL+nIhXEnxYGnhmfiNW2wDUyEgdFIqelJ53HGGDo2xmJgxT19EUeLHT3ndbaf9WdF64VR9NWc6QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792052434; c=relaxed/simple;
	bh=3V6ol0JPn3x0SWVPA9s8YmqIugbEedbsZHnhmANH97o=;
	h=To:Subject:From:Message-Id:Date; b=qtnuCXusbM8277Eu9Puhk/HhX5qEb4aBUWHmaKllxW7nUPgHFiEU3fF2fLmTulOb0yvLGjoerLMZmt9+RuVkXQh7ax/yZu2+LrpUYuDnFdU7yJAEbW8w0+wWZwoTzQafPNUgOdqIY53E5t4jgstNV/WrdviHqtqjkoeuriLFvz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xnw3e5Rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xnw3e5Rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD791C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792052433;
	bh=3V6ol0JPn3x0SWVPA9s8YmqIugbEedbsZHnhmANH97o=;
	h=To:Subject:From:Date:From;
	b=Xnw3e5RnpJwCLOv9kQwftcIIJdBXtWoovhJCB24avkcMlfsfGYtWKFZlNfeS2pcOa
	 6YAx4AuxLtfEy8jSyLPcqIfEwI1uBI3oEaBmYuS5quuBJgHeMJmCKmr+XYluFZeXmK
	 5JrWp4sHspns6Me//Z8bVwXWkxmgCMALY7FYOvoFW430alk15ozZ4bbpCE6Mk1ltS7
	 XSPR4PtWCt6t72z+ER3nYR8LC7SdrTTBis6zauK4V6ha1+D9ruVyc6cG51GuoVnxbk
	 bZJodYRLGWPSgP8HLPvYOMPVlHQ/RrUCxxfHxQa0OFB8BAdMdShJexO3TmTwJxo/CZ
	 S64lWrtLlu9Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA356CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205243368.3901.3008693182100940710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6a41ebeae14f4983c7a6c96e4972ac7bedcf350b8b33f81a397d765b66609a
Date: Thu, 15 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792052433
