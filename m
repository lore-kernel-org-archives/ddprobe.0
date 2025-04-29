Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F34209F38
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745967594; cv=none; b=Zk9tTSpRjkmf8lQpckrhKyNviLfzuRkXCB5Hib0Jdh1XtQ0Yt4nn5YP6A9dD/ExniKwwTwWRV5L5lEXk4aQZ48MRA8UGplK8VyIUzvEgUejei0gA3XafQfO5HYLSeQz2pZz0Vc59Cf6xvGYpTsiTTtu92c/8f6ZnJ6NQB73WCLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745967594; c=relaxed/simple;
	bh=kCC2WmxmN5Zkl6GrAFDcb1A9apDCN34yqIBA1gR4UyY=;
	h=To:Subject:From:Message-Id:Date; b=Vt1wDw/HYPrrIJO9DVm9xHlaN1QXN34MZU7qn0ZrFqEi5+riY//K+B5IrOP1rtF6tOPHiOG7CPxgaSeKoK3UsAYV2QiZCx6agYvRoeQKs2b5rQzRFKyluSF3soVLlEwTDm/5jb2+rLqrXuU82E+ELcoi1FCdy0kt0OjJ3Y5Ffl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm6M1A9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm6M1A9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745967593;
	bh=kCC2WmxmN5Zkl6GrAFDcb1A9apDCN34yqIBA1gR4UyY=;
	h=To:Subject:From:Date:From;
	b=Nm6M1A9HG1tu76yBSxneVOkJjSFCsl8ZGkA/HbMQSqYASx1GSEm16R3upv8JLyPSh
	 CR0/0MKU7K9xE6TwufiqaKUcPDfPWnahrNV8rqcEEOFEvnqmGnDVel6+/eWxuSf6ni
	 osYV8U826DrImmotH8tBp4T1Y/SeSkS+ZkjzWI6GYx9mhU/Lhqx9lF+VU27Bn7siKd
	 69CyBesBTVmfEf7db1FjA4pUv7T6o/5+PbzwrBmWBv0IAcq+XqGUgVCj/B7Z9RDyTG
	 xXAu7P5BtPyuGTWS/hnLEklE/d92DUH2F4o3YedbjbXVFEJlSSQMatO3SPFjkkdKYd
	 QOeHWLENGyx5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D3C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596759357.30958.13648512155457084177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e039c1e27f9f2476d6ca9a84d773d6a25c1f70153064a606444f574754382f82
Date: Tue, 29 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745967593
