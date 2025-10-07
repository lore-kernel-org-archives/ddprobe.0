Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1122571DA
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759873194; cv=none; b=N2Ydha6MvAMB7K1xdL8i9eCJ0W7MXshBlvyYHFQY0hshc5Pg8J9gFgp0WB/mgOklRGTXVENOZAX0OWO/C8+PPUgCjwEP1/NFHXte9gFS6B8cAdFoRTSbvJ3Pzei+5LfPSlB3S1o/VdkO+8fMb87WXeGgIOm+XOlLCmhMcEx3fdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759873194; c=relaxed/simple;
	bh=4IhOFTPTi1KQ7xpSsKPcTF2PFrjYT7OJ5LbX2Hl8dj0=;
	h=To:Subject:From:Message-Id:Date; b=UDxCHU3/prT+c4gLMOQpn1pyWTQkhlMLkWF9m77sa6fXJDPto66DamvJL9iMH4bRDR3BUEmSFvE5hB5SJoU9cCvSN5DUfpnbaCPbyvDJmHnXazyKB7CPvDeAduG1MtN7Xx7/kNrDsDyZLxUGEg6pcCldCnjRcFy7rWIw8p54e5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8gYyRYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8gYyRYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759873193;
	bh=4IhOFTPTi1KQ7xpSsKPcTF2PFrjYT7OJ5LbX2Hl8dj0=;
	h=To:Subject:From:Date:From;
	b=j8gYyRYsg1Sy9n3/BEfzRw2U0d/RUG8T1SdT4pyFRg6IRCofVgKZ7nxQxe3rSab6R
	 sjlJ4sz8ZSv2zVDwqgtDSs7gmN5m266xCEB0OU4FsdK6KwfbXbBat+j638L/rmb4Yl
	 Mzi6YmJc4VRpjez19cQjPlk0HuMICaJ+2WqUsWIBKtK6Ndb20XltJRDod/Cti49ph/
	 jM8/PF10tZhpal6rnpBQdIP+DreThdJ4ErO4cLTX8fQDJXm4pKfNJ0MsdT2/oIwjrk
	 8hUWtEBckAMX6YN9Syjcd5XJRKrWMaVh7SntHhT1DC+8i0b5WN0JI2vtE34cbZ6xYn
	 0rEMXfK/toKfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1CCCD183
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987319359.6787.4563816506728633406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28759b1a6e6af67f9fcbca298dbca9eab0863d997fa392c8a7e2ef8017a43468
Date: Tue, 07 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759873193
