Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F781D5CFE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748491794; cv=none; b=R2tjt9RTda0hyKdfFSZTVkMiOTTBSR1787oRrIsF45miLoI6qBNSoA1ftXqVqV+DvncL98cI6H1llH7ijPn7qD0dhCQ7ozD6u7CjHxOmhXSEMN/9lxmm1OlhCFMy2tYPzyQ40kHIBWv4OQgGmz5MU5n3HS5BQB73l5If0dVYIv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748491794; c=relaxed/simple;
	bh=OnaIIqfvLG3vinb+aS7RDqLmi5b8ltr+XEQ6RqXCPTc=;
	h=To:Subject:From:Message-Id:Date; b=CjIAIav2N+u0rDaJazF0b2nBcMK6mll+F5HL1tidpsY39rYBGIM1dsYQoSN4ivUuGEOlVRLPpC+NjkrdOnZwPIkRS55PjeHp+cLinEkdCrskdyiVVmJkKP8NYS51axUwUnGFkg+6LiiztZSulbQI+3FRvaVN96IVBCqg502iDKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJv7cS4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJv7cS4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748491793;
	bh=OnaIIqfvLG3vinb+aS7RDqLmi5b8ltr+XEQ6RqXCPTc=;
	h=To:Subject:From:Date:From;
	b=GJv7cS4Yy5Jg53h0SyGPglbGpq+HMrJG1iPgPS1FwtbMf+zg1IVXdRzyJH9XbNpMB
	 WITBrm+zf9I76SzjDUN0beo4OdIyQlh7MaqU16yeyOWIMLd5LT9jjwJEu5v1tKUTGP
	 /g5Um7UmTpt2ruzx7FHtb1ztGobsB62HUTnzM0LhiidO/yhR2RiZs3AKCQzqqT70AT
	 n4PbgMMvKZrrTMwiG3jA8wtqNjwkTm9V370zj94bbdbX+Lja0iRf5Hr0/nOqvMY4F1
	 JjukulYPR7XqRTEbOig3grA4WDX++X1MNWHLWr3B8cx5QNL/GVFi9j1/byqHE6gfob
	 EyYJJuW+DxlGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92551C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849179358.1324.12783196482565920377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe53084d14e690e8b0460a45b51755e342559e99ba351116148da923f79fe26d
Date: Thu, 29 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748491793
