Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A0157C9F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742957994; cv=none; b=ZP0TQESBGIUazh6f3BJOnpHbTgo2o5qf60FjJVEJOQGvVTrXD/SIpAREeb+nRDLo25yFbVSLO3geLsXlZyGY1RSFg7+5Ypjdyibe6KaitLLODxyGQQ+9yH4mDzQBc2AfnIkO+sna/Uoqyy33uYcDoT2Jr5vfDLPsiuJ5dPI/Zcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742957994; c=relaxed/simple;
	bh=vh5P6T8uR3CDd4Ex32uDrmLKOKAegMjon6m4ES/Mu7Y=;
	h=To:Subject:From:Message-Id:Date; b=JQAC6iXgQNk8NqtPMgatzslieXP2n1jL7cnbwuTpY77L71kkXToGV1iVYYU+uoVlucRNtG1RUoTdVgPYZAWltIcoYjem9LCindmDkJV+d+TioEkJYW1QO5tpZGV/PkOf5r33XjT8z9oXUWd5Wxm39Uauf9uCmimEnpxxS9KzO14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQhrR94w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQhrR94w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5080C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742957993;
	bh=vh5P6T8uR3CDd4Ex32uDrmLKOKAegMjon6m4ES/Mu7Y=;
	h=To:Subject:From:Date:From;
	b=cQhrR94wQ2zN4CTTJk1aHSvjbnk+PW/dKye8gmiK/dKV9t8/9jiLxYCo1xTPeKGX5
	 S5BDDSTD6oNN1PlAZQFBd1GN9E8TkFsL0JrrJKxPnDHBSjG+zpVw08dIiu9j7zsMDR
	 DGivV2KdMas0tIukn0tQl4n+ReN3DnmqATpmZneiGO91TbXjw5blzDu41MHA6KVqae
	 bXBImrtMoezPXjW/Bz0jvcgJ/HwqkUel7VpdmOUXwGGxhI2lJMfE+foz81hUAd6C+l
	 6B29g5Pk/Uo0y2qZlwbttmwqTafeTM80dADsKxGCeUjUXK1Zc9If+MDN2lv/dVVXOd
	 iKVSyqgLAZ5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8772C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295799367.9959.13221168606938444811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1746a1f568ec4f6bd2ab71ab5615f02509016a39348ac872ec37e6fc14452c54
Date: Wed, 26 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742957993
