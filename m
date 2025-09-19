Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337AC2512F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758299994; cv=none; b=eAuLmpJkUlvgwQIt4EiPKZ8w+HxVBS294xGJQR7iBSLdQsvXDexEhxw54ch/Po/QHgLHkWfq4qeFWbhPulonySi+LNCU1MEPcHZViWRlyKPzXDyyYYlSPEiba4UtOaedJjB3CtV6e6uqAw73wsBPIcS2sjUbUa5DyH3Fce78nDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758299994; c=relaxed/simple;
	bh=5rv6cnDpMoMVPfKrL2A1lYOXtAOkSrGq+5GlGa2y2mw=;
	h=To:Subject:From:Message-Id:Date; b=Um7pf6Mv8WoSqewB5sVr90In7YRUlQu6sj5YVieHaKiwl1bnBckKm/4Gb+b4OyWf+dDMLd9acX2O7AzCF8ZRQ5YgBpz2r+gcUOB6F/T1nZxbvPQ9o2mk9zIrqx0Bk4Ik0JZmVcFZ3XOApPNzlEzL2JXNPMpRYfVROe7v3THAQWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoE3OlCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoE3OlCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C2C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758299993;
	bh=5rv6cnDpMoMVPfKrL2A1lYOXtAOkSrGq+5GlGa2y2mw=;
	h=To:Subject:From:Date:From;
	b=RoE3OlCt6MyUVW8hVUd1zc7MNn9fujxgagCxsGvdLzexXWgVOrLSD/xTMeHIFRwqG
	 oz8n1pkPXVlfpRdWJebOC1Cpv007TVYu4oX4UrVQLFSfY8xDf0uE3ip3WOp4gssn0l
	 /9TD9VB8IoEO9b9k2ZVJqmRmzIggVQ5vbvX8xY1PpYre6XcE2sqpy89l/IEA7XTL4g
	 Zn8tLn34/KCed2eSV1yE0hRQ9gGXOphBQGoIgbZgnao784euCOnlZufTMgaTWQ7LCe
	 iVHwqadHk+8W7fmgw5KwImxj76+/r96enlkgXd7chYb0SVuQlBQd0KrxONhJaROwja
	 8B5YHfztMTUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF46CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829999358.3402.17996895979789910314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f429c22190f1ca2b1ba530051cbabdefb6fc78ff0db871b033c9093b292088
Date: Fri, 19 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758299993
