Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59C33F8AA
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768150434; cv=none; b=hBBN7YhMuR0BuOlxdL/I7rnxpLwmwIIo5zXmtcmodRPfVyg4VUVgFIbzHU/Jt6ONmOB/F2eI3+fJh81cuq8sYPmnO0cmiotiXjOCnOnmF9Ml+pd9PQgVvGR/5eMguseP2bDcdznGNV9/DxoEEsLVnYOfxhXRM9IlE6wAWeaHFSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768150434; c=relaxed/simple;
	bh=A4SQxtrzlGFGwsye7yJxrjpAAiuxQQRRBaNR84nUu4A=;
	h=To:Subject:From:Message-Id:Date; b=HKmI0kXOD4mXC8uLS0WgS68Z8QjwP/3+qTLJRBBNKW4vo4N89qeMM4tOyuHYYASDznvudTJJiYrPYiEHxwkDMbipSAIWDz/pGpuR1Z7sb98B2R95hKuxGXwrPH2PX2dkIk8jofRlXQJ4Wu3U4sa/q8bsQQiArC/5lMBLBm2Rp+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDcYADAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDcYADAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768150433;
	bh=A4SQxtrzlGFGwsye7yJxrjpAAiuxQQRRBaNR84nUu4A=;
	h=To:Subject:From:Date:From;
	b=PDcYADAa9yeQnssCW/cZ4B+cfgSHkNOSIap3jRGVi0a8hcjM0ilrYzLjAm/vIxKiV
	 2PxC8Qg7R7wAclgSio7dK9WmbH7hA2MXWpQ9b68PCxyOdLu4RAJP7nCGC4k9+YArIt
	 0LQUauTiVxQGPYjantZpGS3VCNJClt2kJU1dQfkhir6aBFlyiiZ+hvBZ7ZW0V6BdeL
	 /pufROHe3n4cWrU2uulsMtloe4/IpkY/Bvi210vV2pD99wE/MjR/5vUz7N/rm2jyh7
	 aqx214iNqKTfYmHFfRMxliZ0fFjhcPqD7WoTxkMbk2LK6Y+SNFHtqCg5b6xZbqDKjN
	 Hb1Mw45Jy7uUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7ACD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815043357.24182.12122993612093267668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f838268c9ba020ebf5d6902d38ca31f0d051cbc55fdd356af61561fccb56bd
Date: Sun, 11 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768150433
