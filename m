Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478CA18C900
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728467754; cv=none; b=Zem2IKZOQQLdT3M1+CVTwXovo9IuLljh27U9jhrHXZQBqaoxljTEh/76E0ML9v5H5opNx0RlGCbVXCT2P2nHq5gMge4Nep95mg8f6RoJZOc2tmzW2AezTG4nizOyJv6X5ZEX8xYcKUtn2YU2BXMxJoCvwV7XlKwQumvb+k4nERw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728467754; c=relaxed/simple;
	bh=ow87ilFJpEY3iI091b6VwTkKl+Ms0jghnOhGpqWB1kI=;
	h=To:Subject:From:Message-Id:Date; b=fMYjdGN5UKHVYL7zKRBwZMdzm6lE0iXkNwhJAqoZW7IIPtR6gjZ/fz+jNhdRIXOOxEFCmUCXM+yNMPMqYN9pQCdmpAvIQuwl+pOHL4lfjvwlgDCeCQmN7HYzi4t9MlLggEHwBouaGyh0JPh/1+ZaNCS6e6xOTEaJlXSEjr4bSto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMenvD12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMenvD12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9DDC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728467753;
	bh=ow87ilFJpEY3iI091b6VwTkKl+Ms0jghnOhGpqWB1kI=;
	h=To:Subject:From:Date:From;
	b=LMenvD122LGs9cLkQ0JOQGsFnzDwBf1lfkvfP4/f1uqeRb4EywJcigwwOIIEjtC9I
	 oTgcXBZbay1XXFPNzb7JfzX1HZUl0XE0wq7WNBuix8N6icWWQqHSjQf4Wa8m/zTpj+
	 Pfax5NwylHxPMBlX/hIcJuOvtGOiYmvr8zomFWKoSGqHCKLohWNveLhhYHkFB8LTUO
	 gTJ74va918hVJBxoUMDI/9+Tyzq4hHoHq9EQxLm8VpO7DY0H4vBuEIZtLMCxFJZDGQ
	 Dotd5b9OPjRp0DTIQdyQQeox9GtH9cUD68F6TWy+DUB9mr/R6G7B0QsG6EuaFEW3vy
	 ZJUSNcdgAG44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A9CF0439
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846775359.23120.12035563534627798678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affe20b53defea04b0573e4317f30ad022070cb1d900b45added42fb757b440c
Date: Wed, 09 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728467753
