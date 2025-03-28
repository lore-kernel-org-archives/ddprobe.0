Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B916213E77
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743154195; cv=none; b=Kjqottr65fHeXP65XY9qsnNVFig+Q74EcczM3RslTagiNUrJu4eJxVBN20puWadTGNRn0wt5blbgSYNatxgl5TL0xrwAnqdAMzu4JWgE+4DmXf9r+FXuZXRox9G8CylTu8pzGK+KucSs2849d1JxaurXBCUMwEKGGl8w8U3ePkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743154195; c=relaxed/simple;
	bh=ItdfBrIAoPSfMIjnxvqaWj23HftPZ83nmNYW2HeqoSI=;
	h=To:Subject:From:Message-Id:Date; b=H7kVfmnj4J1bHSItHqZDlITxxk259XPBzv4QXcDN7v97S6HL8T4Ip5OBVi0WLo16FvNJBKe0lTj1+VvRDJoX8HdfT6Tg2x4wiJic9Yma/tQLFUGQlupfQ3prUiHmJZdzak3uVdeOYLilH7RU9Ll/xIpoflm70mU5lFH8auFFihg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIp0aZyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIp0aZyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0CAC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743154193;
	bh=ItdfBrIAoPSfMIjnxvqaWj23HftPZ83nmNYW2HeqoSI=;
	h=To:Subject:From:Date:From;
	b=oIp0aZyPBt6F5ljOgd1/y+fUei7vN0EhWQGgxdueUYHj/hknIBT9Rwh58ZiLY7qJ4
	 85aXwcVm6qcnN5KCipkFySLIBUdC27JWw7fVMyHPVA0ojjcBgxQSR10rfCHuM2X6Wn
	 yqR8lFpdhwFTQZkaNdumxDr5cCVvQnDzhbjhD5YfwRmrUXS6vhx6MSp6tILb0d5grG
	 K1gQW1ZCfpcEfo3DOPJQVCW65/HVGYBBpHYvlkcvxat9r9F1jS3TS8efPN+E6VQwCt
	 XDGOx5xs+mufRRV57C5ANP1EtkXM87he+by3PGCzdqmHNEJIJYzDlr13m1K+Lz6Mup
	 04qda88HexiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26DBC36013
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315419364.14745.16100128714227248694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc019935586a0624f0d215cf34aec4c98f6dcaae66a56af5eaf3792ccf9079de
Date: Fri, 28 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743154193
