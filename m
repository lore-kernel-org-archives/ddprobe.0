Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F04C1DFD1
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725204954; cv=none; b=m4hMuK3M8ZQdPwXb7/ZLxj9BClw7TKXMhRQeMCpv7g3x4WiJmRJKYTGZ9wcZ8vk734Qb7gd8ola0zrVL1EhcvLTqGOODtaBLcylcxoPgq3ogesaWs/7mBFBzLuUP6yc4U34CrFFBxEMP8rG60iMNZetQ6dV/xIFZtn+3KjMFT4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725204954; c=relaxed/simple;
	bh=fP5cWimYy9/EhDGsxh+cjWbzaeqQKuTybYX+KKxzDIU=;
	h=To:Subject:From:Message-Id:Date; b=klvMmfUbelaD0vw1gjYS91o6H5Lv3/uOHhTv/zOiDt+uLkRUwbvKdSLLT+Uyt0KfAR9BJHmTvyqJhXT8AfnzVItSxj1a8eIljFI95uWXcsODF8Q5G7sDdXpYzFuhbtFYdsNEabnhLmFlplPuqhvt8lwpuuY2wYHRS/W+w4hvS+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1hqUZeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1hqUZeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E0C4CEC8
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725204953;
	bh=fP5cWimYy9/EhDGsxh+cjWbzaeqQKuTybYX+KKxzDIU=;
	h=To:Subject:From:Date:From;
	b=L1hqUZeRlexxJ6xVmOnYM/8Ysch6iUSEfXX7qBe5yjuvtXt7ghFHt765eMr3trwX5
	 Gqgmjv7vAn2fMPATcF+FJEOFlPGTtoNfQdeTJJgo7eO2KuFw2WaZwkwLJRuaYxVTYg
	 kM71MFjPv7h75l7C1sGwX+KJuFuwFB69UUWPFQ8XtK196ksQt6fbr0123GVeTDwMra
	 4ZY+RDQYKMdbsn4TN4gi5BwvhN78OGCTUMFkBafzli0Ta1Zz+p1zP+SityDxDrRCcI
	 turvIhhFiLqE+hUV+2ec9xrpSIoj+o/0WpOAlC0a9EHiPfBui79dJSNY4jsQcNpeVq
	 cHEs3vXlfS/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F06C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520495358.14790.4516069170864283620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11de92cba5d05c2bed28c77c5435d89d4b4437b793a4eebb49a01194052ab3a6
Date: Sun, 01 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725204953
