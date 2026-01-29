Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B160215F42
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769729634; cv=none; b=V7o3koV4Hm4V36aKLpYoLFb04y/o5e19e6MBJHGzceWfEYYl/Z54XBBS28KWbVSEZHQpQ4+NMYWrVHk967MGySZE98MEptF2h8P4RMiuo4WVb7fFgt6U6km/WRMUDl+26O3fdHUQtFDHiLcPbehdggxY/Ud8TJ9gmkhjW4wo8Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769729634; c=relaxed/simple;
	bh=kELKCTlv9F9VyV/IrK8nbF9SxHgCvsz3TqearqDOI/w=;
	h=To:Subject:From:Message-Id:Date; b=EdrPs44F6vkvQWKagd5M7H1tpZkwLgr6T+NL/fxgLzLPCeYyEPj8OwIWmvm+MBxihH7jmH5UK94dgFd+ihfKfdYhKuXe+/89dKuCz1axGkxKpU4VDfcdOIF52rouHevwMkI0tmHk56h2f00WfStCygJTyj9e6E7QzVLThv/q2es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLXRzI32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLXRzI32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769729633;
	bh=kELKCTlv9F9VyV/IrK8nbF9SxHgCvsz3TqearqDOI/w=;
	h=To:Subject:From:Date:From;
	b=hLXRzI32zIYUJqpKn8jjZPsRYHvJp/IaH4DkRcnEml5/+gO3O0cNlHRhE3BekD+Lw
	 vaCyG3LLAOHsEaOw6/WW8E4QW9eRG2yg1uYTV7lJb5p4JXooHBPCpTXs7O6d6KRbGR
	 ciSJ31W2S1R9ximZEtHMGOSKh0AzO6/PUmmSs3SQ3XH0Y0pUYvBqEtkWiiFF/VCMhP
	 zjJlPZ45WNWLTqZubs5QGha0+ECdOQLBXK8FxiKm5YIZekLJy3XqnPfFjGisYjvYAi
	 1Lvn4loVFwBejZam7OyGtQOYV/2xG6gup0whPNajy/xrqiUaK/n1yYHl+HwwAem5Cd
	 5oftebgFLn5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A1D73EA8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972963357.12519.10043378298485844950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda38a52e0f084835254dbf67d12e455f24dd8197a6f9ee8ba714a90f8c6382d
Date: Thu, 29 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769729633
