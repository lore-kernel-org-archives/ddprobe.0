Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDEB21373
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727735754; cv=none; b=t0DLifGaCvVIMNFt6isb1nKCyKCGwIySwtUYimG1HDikAAUMLdnwWGVYHYNciwZkFHpeOTU0DRwqWp0hGZktZqOZRmW/temWPZG7CFmz96FtWh3wlEAcFeDqauK75nxVR2GmB3jU5rHGvSYcnEwVY3aT+UXiSK8W8r9ywqCCfM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727735754; c=relaxed/simple;
	bh=mptGNQeFqkT60ap5QEXn3qTC2M2PIgcJcrZyQUpHrH4=;
	h=To:Subject:From:Message-Id:Date; b=jTYvgy+eC8SuG1EtqqtijA6FjjjZ8Eq7AZnPY/rHWKtcGujXcMgnIdTbunJIRehSJwpoerlmuaD3DN6m2Ci4mluyFKwgwVBa/w48y9LaRLB25bh3r7GD6+pLcjs4ebalOUYFInjMVUnMIMWfCmZpRuW/pMGY3lIQlZ2g8uzO3zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoSyLHof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoSyLHof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40E8C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727735753;
	bh=mptGNQeFqkT60ap5QEXn3qTC2M2PIgcJcrZyQUpHrH4=;
	h=To:Subject:From:Date:From;
	b=AoSyLHofb1IkVpTrUG2bz8OfSx9/zHiW6zqF+PodYTctoBTJZJAG1qoqHwCRoVojY
	 hzkECeOm4YCZyuajVIabS0+a7MF94bM/4ngI0Kk1dHFX/1vIYRw3rH6ap51qh1eQ8f
	 KAtLwC06ArsGqsDxH68h9JGrbjVRCT8Vo+0mmmpS56RaOYLCAtshxRRCEjbBh2zSzK
	 yu2B5h1a6/dppukE9TAfC5/njWt8SDCmtesuEqyWYoH5YSJyum2emy7j+9pvP/UZl9
	 ffm+JruF8BL3Gn8vH3OayTk1kxxC03/lYKMLEZdjnpI1Ctwe3rJM/yJz7aiS9fBUfa
	 KNgw0ARGb8R+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5E7CEB2CB
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773575361.4967.17375577977216652919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6554d58c7e61fe78ac6c5b9a448fb85579ab8fd175a53d101067897c243813ab
Date: Mon, 30 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727735753
