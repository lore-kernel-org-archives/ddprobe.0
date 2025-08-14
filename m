Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CE3219A9B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755191994; cv=none; b=oQOkAHtv2krhD5e5Ip/A1r4GDCnfpLWIGNBAqQRcclsXBzmEWfuuld4Nb8pq/F8IktUe0xqqvt2i7PZWLw/G2yWdq+Xn+W8hbP0w4Dr6SLvpq/BvP558Z/PCQVBGGHqmBr7cxPd/iXVS2YvffmWokQ2su4m0Il2++ja6IepEbnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755191994; c=relaxed/simple;
	bh=Tth8ogl3cVQBMJL4XeBgA+1qFSbwzLUhe1fPwwRC9CI=;
	h=To:Subject:From:Message-Id:Date; b=GJk1pZQII3V30NPrufrt8+mgHWBZUo5EZoRJZMDp0y0I++TYd6nTYn4ApkxG1aPNV7LvRckQElgNg8qnG0IBKiVDIieW9dNgPt7BGPEczmMwlJecLs7WmXatnNIwZtf4Cv7D7Zu1mrjuAQE8SR6qSuWgx4NF2H6/33mrlYU7vIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlyV/5hQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlyV/5hQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBB6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755191993;
	bh=Tth8ogl3cVQBMJL4XeBgA+1qFSbwzLUhe1fPwwRC9CI=;
	h=To:Subject:From:Date:From;
	b=KlyV/5hQXcsHLI927og8IJ1jSuhCV0gI4BPT5v7pcLd5o6Oah8rs8aUUO8Ta0UcH3
	 g2tcYycCK+WWOqC8ZNEl56rq/dwdE/jdIUtbUVWN24LPBz/VfmejVJM5eUXBUDQHGX
	 lWJZj5zE5NVbeVBKUuwFOiYsMtjd9KfqZJ9Fl3i3lfmcuUvV2BSR7Jubc/JKuWNWID
	 SBOPVVD+ljH4Ze7kWNkQrU2tfP8+4szAZf6FBz1Jfuc/X09Gjhk0z7FBrsrIvLjt0S
	 Tl5kERuchq5r3WWTYsRK3Xph0HooO6PCgVDpfE+Z78SsuxTQ341jTD+y7EfMe6pYcU
	 I/14PPNtNhpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF40CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519199358.8416.7880362768830374018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67375f2729d8a7bf26650647ae4e664516cf0672ee4ceaa4dfe304610edd9c8
Date: Thu, 14 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755191993
