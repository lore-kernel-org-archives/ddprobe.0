Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B0361FE0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720827563; cv=none; b=qgz4LSrnX4hHNO0MRhHoR/RkT8p/owrNUWj9u6MbJs5EfD/8i+yL9Jpsm94HsMjDkU2hzt5B0J+rJcIOJzRnMBnvbpMm0pzaJBpyWulOgRRj9MrGHwUW7wqs/mZlMCXWRvneUs/JA6illeGLLrIDYrfrOfkvUdnH7rBSMpsxewk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720827563; c=relaxed/simple;
	bh=7cLH6mrP51IcFg0v2gaIXUBnNsr2oAZdmH5FllSAyGA=;
	h=To:Subject:From:Message-Id:Date; b=qC/qULPDBjho5OCkdRs5d65FS3uWGCGa9rVmqYVfGizR/SFoyif2QbgtybZ9rapKyZ95Q5J9/UMk0Npc5spJMlvl42PFBV/mikiK0zz1Ny32jzN8YMjcjHWB/2yQC58lV3K7A6Q6hieNmRaHHTxweXZgYY4HuVH3oLhBLJNDEOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kno1HlQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kno1HlQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86C3C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720827562;
	bh=7cLH6mrP51IcFg0v2gaIXUBnNsr2oAZdmH5FllSAyGA=;
	h=To:Subject:From:Date:From;
	b=Kno1HlQ4XfDEO3ZFjsm0O3pCO1pWO72+2I2ESMfNq+k/7gkIC1XbXRjmY5WdnkRbx
	 Vx1x1fWBPgl3Ncrzp04vfykW0qpHHC02StyLhlXvg0507H39RbI7zWxyfEZZOw997S
	 gyXLXFxYuuixCtFEDUsqDNwXCTFuzTdl9FEHjY1BtVC4qegV3klyQXN7cNW1uTt9dg
	 YkFrRp+lf/842s0OQl5pPERvWpoGrOpFGwSmAiUns/6d9t2fTO8+PLb5WNbUzBJNiv
	 DO+U45Kv48cZBocPqrpVJVkPHmqN32NfSbin9qEd8FfTTHoZ57/AcLEhSDInsjecqe
	 nRm9XcKUj1kgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E51C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082756277.27819.3720444862874945989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f6df801bc26dcc877c8fa77ce42afbaeb7b83c7632415b350ec90333ccc798
Date: Fri, 12 Jul 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720827562
