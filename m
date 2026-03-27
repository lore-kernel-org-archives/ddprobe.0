Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1775F24BBFD
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774653294; cv=none; b=DmlczaZ/jGMHedcY8DJoCsbtbviAGuR7h+BOCIqbrUgYe5LpASKQ5RhAw8KjOPb2IgCBojTarTN+35H89jEnqDYyng5kAHmsKKpAk+SPPg+B7TKBLRqiNvyify9bhpa/8WZqHJ+sMGMx+x9mMRPLN8V5KL76PZLOzCjklsJ5brI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774653294; c=relaxed/simple;
	bh=4FW6VNxhbHF7EusJ4EE1f2DwQqj88fXMcXhY+ONl9Bc=;
	h=To:Subject:From:Message-Id:Date; b=iodKWDvdC118dGRU7t24ZmyuJAEzeowlORLh16zV+ZaTGKDiT4IEVE1+FgVwSzC44aUXHgQzObL242TtgKziDQICtrKqSRtcpQhcaJD2WEIqfkWn4MS3rYCHDRCfUAwdbmeUH49/2x3x6LQa3WqThpKnauZ+qa2FboPajY5XKc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nckql6km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nckql6km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774653293;
	bh=4FW6VNxhbHF7EusJ4EE1f2DwQqj88fXMcXhY+ONl9Bc=;
	h=To:Subject:From:Date:From;
	b=nckql6kmrRqrsWG1WCmR31b2IOhzf54Ly2kJeYaS6sFNtQFEPlEVw1zxeyi9HnVXx
	 3HI2vclMPDrixzez0VWuI48l+xOTFZvNU3bDEaRqiHXGAw4/4bmvzyIuLiAOZNt7pV
	 fbEOkcmWDYjdIhkNDpcPJqoh9y810JwfJ6T8TI2GKMq6eNk4rbFke5AI7ESNCQ2bRC
	 L8VtkyJ1MmTeIY3koVaMMdYlHUz952ZCNOq7Ht95FrlMQKzN+UTgI0Hq4JpO8e/mAU
	 XSViMOBTBxoOoMV/vyOqnjK+fESTu1cVbhsyZ8BBK9VAFqaCxZa176MAZp2M2lXHVc
	 qaIjc9F6Sen7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4E10F2876
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465329359.2143.12869344372620855357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dfd7ec20bf03453f0d8e1896a5955668c877c5c7b2b995ea9231c8791962be
Date: Fri, 27 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774653293
