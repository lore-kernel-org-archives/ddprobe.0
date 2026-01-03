Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38846301702
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767436434; cv=none; b=bynmfhcJ2+qAlwnuEkYLR/F02QJRAlRhMeCgmot/DjX0gFhPMX2veG0U6o8LXA0z5letnTBvI4CrXgj9voFiQnPtrChhHN7MBOxT0D0ha8uSIOVqZNiuAlcLhmHAkcc89CTIi8YY/unFM41zzrQ2s31sDoe01x242oM8E1GGae4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767436434; c=relaxed/simple;
	bh=1wEuz5cwa8iKcux2ULn+ntzKD5CSHb6b69aAQH6wa/8=;
	h=To:Subject:From:Message-Id:Date; b=jf1b7Q726RhXl2kGlONMlIdbYqmw60WWuJEZQQIIXYrdpc2qWexmfDX1wWu4zNvAs8WYMioxsoOWpRJYkHWk4Ir6dcl0T2OSh8dvid9X5Re9rrbjBaUfK8rZzZm9RlE5gb3K2hSy8HT8FXBU7e/Ennl6gaRI66Y5prN+W6ZgkaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf/jg33A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf/jg33A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A843CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767436433;
	bh=1wEuz5cwa8iKcux2ULn+ntzKD5CSHb6b69aAQH6wa/8=;
	h=To:Subject:From:Date:From;
	b=tf/jg33AiGbBqfJzDcXqSesODoR6nYq89+MTaSQyidI1dBnks3iLoFj3nk69OiShZ
	 ZhNWQbmM90K+2Li+cb8M/Rjf2L9VuL09ZhPZ0Hqhdw5EnKo4AMnABBwHyHo/6XhqSY
	 PEkdiITzX/2/CysFZohDC7oTHxGBtp12tAQgr4PvxJ/hCi9uJ0mA2WMl0ATxzpbwv0
	 MjXS2oqSsK7PtlYXTSOCzkpnIlFI5mMkRNynX9T6uqQBf5fbPzgBqKrwZqZBNSfKyA
	 wBhImisy54MjlUJliZ/amzbSkZBHJwSojxBr/rOp5Idg7t3Wcz7vw3SrDHAEtNPjC1
	 rBpoyk0gOLL0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96479FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743643358.29761.6091484793920844103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b91816a3db92f3a022d63481d6be0efb9e207c6daf849865cd67b8803583916
Date: Sat, 03 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767436433
