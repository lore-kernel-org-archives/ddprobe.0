Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56F73C0600
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778178454; cv=none; b=rFuUwvIq9hw4ipHGULODBmLzpINtAFA+HfkmO98RNzJkLmiKd1cTpGgvyc+00BpwIyYt5gdx6f8CdSz5As85nFQTnOb6WLfjdhnpzIeoX7KAodYgrMWKDjvYMBM7Owpcpq7GljYlKKSefYEyNYF/r7hcKzEkVXaLYxjRGfpyl88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778178454; c=relaxed/simple;
	bh=Fm5r/CDCQGY+yRsN2PF/c/C/3m6e1MQOR3+s0wAZeio=;
	h=To:Subject:From:Message-Id:Date; b=GFFvoXg7o9lB15VsWkXVRFARVuxBNIsnsVxdIQdZGokZAn746n2dri5CfOyhPHPyK4FVs8mcJBfNDJXsOWJwTTscpsVloutuS63MyVjKvF65znAOezJjEtPtAzULHAeT3DZvxSghfTShh61u6hZkbGvqOhRiYMvdxdIqFRWRrZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQod5HLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQod5HLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AC7C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778178453;
	bh=Fm5r/CDCQGY+yRsN2PF/c/C/3m6e1MQOR3+s0wAZeio=;
	h=To:Subject:From:Date:From;
	b=GQod5HLSXQrXaKd5PR07o+q/y2XN82Ls4t9Fu8hZcASPL9gKEIHXL3BOpsG7/qk0G
	 OIVQ1rjV5H9TFFJLKJ9xh9HDxuA7YhcYD27Ic7Y0DXfZOlnop85c+ZBZzVRsVepgnK
	 JxpAHPkNocoL/OtWRWedLi1PSsOWDRXyIQFjYBadSRnnj59SA+RCeJm0sBLTCgKBn9
	 Kp58O1YtOlbUKE4A31I+e3mNkSP/rXjcM2jAVjiDWUYpe+I2iDAUukOCRest7+8J1K
	 Bag/WGCRXFND0BlZTv5lBx2dogkoOeMVc08SE9u4WtbpCMyPD7zyz5J6OElVVEH5Il
	 9hciZwIT69gEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F02CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817845369.12026.3522717393384672887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b94ea553f7082c7134c4130938e82609218b87e43cda1b28445650437154359
Date: Thu, 07 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778178453
