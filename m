Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0226C1E5B73
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769417634; cv=none; b=N4cv/kUKfRbFU80E/3WNJKv69Ur/zZa5HZOpE7RklENbXps84WveiTXSwPs1Nt+MN6FGQ7tPiF4qKRW6R2/mB2ykmKkNIhvYsA+OqQRQtx1PBXZl7bDOFQ305BzrdZ2RCPptvCqCNO9DGRgV2wnVceGBRxdAMnvkLA66r6J55rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769417634; c=relaxed/simple;
	bh=xf1gcJfl/E7dK3EksVtHDv4CVw0dOuJ6N9fAMhvnfUk=;
	h=To:Subject:From:Message-Id:Date; b=Vufq7hKra99ARG5mYc5yc3A5ecScpIuqr8ywhP9KkJN1Vm9ZV8ITibeNsJfDlrQgEcUUW69hLlD6eUVkiDmnak3uFrd2p2DOZ/MN+GBa4LF3njSSKbVDNJLYjay8NmOvUvC7JTLtQ8DZj+ahb2NUWnLqhmlDbTIZwVUzE8SSgJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBUlfm91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBUlfm91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B46C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769417633;
	bh=xf1gcJfl/E7dK3EksVtHDv4CVw0dOuJ6N9fAMhvnfUk=;
	h=To:Subject:From:Date:From;
	b=WBUlfm91bSfTdB5i18jcUUPGDuiYd7Khg3YKEF2r8JkR1hcf44c5/sVgaeCb8+k3+
	 5mvi43X7t1bDZ2f6ZfjU51cC9DfR7MxZYVvb1fptI11JXNHcqJJ+8rQs3/OcEMnRuZ
	 qcHMa/XUX3D1lIq+ZY/A9SVLfWXnXpk4/4+6Ceec9pF6sE0eVk8TgTnY81R41I2SfO
	 9NREfNegKm8PhoDIZWb2zAEQWKIE3JHfEA3h/E0K8hxEu031MLaj0tMexdIpoWeDV/
	 FVNTYEeFZ6HXb27UJYcyjkh2xz7uehUYOYV7joEuH4PVSuloSFdJereB1QghsD0QqT
	 GbFj+EJb9Xs/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F7C88E75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941763357.22232.6103845638986412980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28acdf6cd08fe538651b705af31641558c418b17695963ab048c311972924fa7
Date: Mon, 26 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769417633
