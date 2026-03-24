Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468D35DA4A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774338894; cv=none; b=EtS/bjwRs1ved2mlS7MHZTIMdzvkBXJ7edyzp7g5LHhc8tsDPybqUIMC+EpaOrzHZTGSB2HkMPZ9Zg7eUhBmUoH2FarcGHf7mboRih8rKFBoNUvqwrRQAfxD/tzHTvorOzUOfE9yZRyxHbCNWJtPaPZLFnItB5MqweS2Y5xzvHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774338894; c=relaxed/simple;
	bh=2IcC8BV2GHkSwUNyo9LgUJUvpWvyDlH/XSxAuZu9jQE=;
	h=To:Subject:From:Message-Id:Date; b=N/mHHNPCRj1nZ/6N5rb381btn2yz9sxuutosZ6flPdFz6R3IE3LMqmwhanaybT4dmDv0dsSYXIshsJgeM7RgdnofqAXq9n4ou4HcgUSOiEnEm/vD4dfijJwBNSNTG3V1YU/XalhdM1YD6lAd7GBXhC8vt//0NxiUSKZ3DInv35Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzUvcIfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzUvcIfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CBC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774338893;
	bh=2IcC8BV2GHkSwUNyo9LgUJUvpWvyDlH/XSxAuZu9jQE=;
	h=To:Subject:From:Date:From;
	b=VzUvcIfjC+MS4NwHNFbOqx1hGa03WgCkRzWbgg9rdj9vDmshndwXo+F4CRJEhYrok
	 TgtYIDh1ER7CSZRLL7gSODKhLLWNcpwqaQ7d0dtC15gGwdplNoZuQ8HYK0W8rgtinv
	 RW53X454Cq5TQWzsaHyWvITW9ra1CmNheLDzE59Cx8E8lJfx6i6/FAC9GQBKuapXE9
	 omEr9szhlCMnzTt9i8LavXQ6SRvtx+ruF2gq/o21EbtV+8GQGkEUGgv4rqiNjxOIoo
	 7jTWTbdjlr6j9aRll2FPoXxY4/SX/R6WQQQWFbaizSv4d5wlwdCCRKVpE7JMZOOXhD
	 3sPAMip+44eNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B20F532E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433889358.10002.3452179634388437777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cef1129ef7c8abb133d07a1978852d77250cebb025cd89b2d6ef29c1583540a
Date: Tue, 24 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774338893
