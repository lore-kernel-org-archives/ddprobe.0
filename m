Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AB1AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706236697; cv=none; b=Go+ZOXoiLncV2Lfn2R/nPB0h2razAH8XvEhKTvv9Nv6Y+BlvVVngmzSfxa1cGdScS6zNKqzbneABBv0TKcRkiYc6RWNI8yCAHEr9iDu9SFOA6+T6pnJCxHkwtrGN7m9VKuztO3VEiJs8GvNhdM7ckVjY8yRK+sGXABFEDHToR4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706236697; c=relaxed/simple;
	bh=nwx7CA3kJc5vWSb8G6UZ7IaHXoBGPmJOLWYOxjv4Dgg=;
	h=To:Subject:From:Message-Id:Date; b=Yy6GRuLt4zb7v1RAUgoHGZQSF+LkKVnWqmOBH5Bk4G2GLfbevFmWarDtUWiXgtrggAD6FcnaCz9eXj5yfphVsIXHtU03hwyzCdwaUJ7skH6slSLokjsMlUbWKv3xwffyvu1/D4x3QinVyWDE2l3m8wE8aH1/fAlBW+NF+22zqYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCOPOMPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCOPOMPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4A1C43390
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706236696;
	bh=nwx7CA3kJc5vWSb8G6UZ7IaHXoBGPmJOLWYOxjv4Dgg=;
	h=To:Subject:From:Date:From;
	b=oCOPOMPVzFs5U7mIPUC6R7QkTHXcypol2ajb85Y71B91XPF8B050cRdnBDlsxuP85
	 mwPaL41POINKUR/tjDzbjdrAy0o755F8cG/xg1GfD1avj1hfnqiuyEnMZmddXTqCp1
	 IHkvvtEVD4HkwRVv+MmcLK9hvsR8+T/VI6G6cDc89nqO/9rUC3AhHQOGW30s4ii2eI
	 mIbeANrzVjVm+FmTfs44lEakvemciCYFuWscu10YJ6mO8/FLXTsFrCvxv0eBVQE+Yh
	 8U0d7o7pm/ihcfP+0XAwVncy0mZqsybaRAIQ0B6S86ByeQ9qLfpOpoZyUDXAVE6xfx
	 E40GNXOIpuKXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614CAC47DDF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623669637.9880.3909490721022743522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228c64c14016fb6da1e6b935574be8336d66e59697846dbf079c5883db0cd533
Date: Fri, 26 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706236696
