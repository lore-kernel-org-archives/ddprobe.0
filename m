Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF3F5661
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756945195; cv=none; b=E43d9NbCJ3vkYqjtn8t7rE3Rz2ZLMZQFmcUZCWeD5JRMce7fqUGLgTWgjedcGqGpeiipS8kVL+2/LO7eisXt1ux2qN27p+p40Vhgfg8raZDbrsqsx1m8QpiAfgFWAeoF3F95M0fQapnBacZQ5Px8Neh/QMJyYoFCAWwTnndYoDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756945195; c=relaxed/simple;
	bh=AZBvH5hfe9llKDRqmf1XE6DS4jNbnL85e1Umuuri6ko=;
	h=To:Subject:From:Message-Id:Date; b=aVO5e7yVAWoRy0xiW8LHaYW5JdHb2R723FcAKe9htzqlZEQAn6TXl8oKwgvCd/spGBkST/nyc/t3BWvqWqqoXI34UpwlGEpnxA+iYz/5cR/uXupPvJy6vPu+FIk6aN5ai27dcG3himdPNZ5c7DCBTreur4WIqUgQzg5YQBHfJV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHtXvQwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHtXvQwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0595C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756945193;
	bh=AZBvH5hfe9llKDRqmf1XE6DS4jNbnL85e1Umuuri6ko=;
	h=To:Subject:From:Date:From;
	b=JHtXvQwlJ/fy/KH6W9wL7NGzJ7YSRpaJvznj0MjrSKjaUdNqYC7WN3I7mpK9sjp87
	 PC+KBgHiQ5EmS7tfxzBGRnTZnx92JyiiDypKSug3ObN1wO3VHwPsKfR9bM1mcplaRS
	 G/eOu6tBasZeUWm7eA7pVAq7bdsBM8SeasQ35bdOgzciyIh7EAlBhqbBt70TyLpKTA
	 8suelnElaBqP0fFD3TXMx6GUiAac/D0Zo8T0l+nCKpXpqJhlwQ3+sTVqxKI6H+y4t/
	 RUAE0n1erMDMsVHduE8qoldPPRUTiBKApgVczOaDBhhLVaOL9DnIwthbcNDdr0dItn
	 KRequHv55i/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F640CA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694519357.9586.7760615312157466857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4207f05b09b30b3cf145e11a4c223b2435a1852e9e8397bf1f66a2b79d0bdac
Date: Thu, 04 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756945193
