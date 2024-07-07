Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586F023D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720318584; cv=none; b=heXXNvyPnEPQiFp5Q4WVmlKaoqz3sIcXZdjFO/pPuHtv8O1NW99G5XgvJGr374j6tw4xD1yWF+qntLOmwxf1kNaifYYDO9euCoPbd56Fy2HMhq6w0Cyq6ajXq9eUWR9VnTpXPJPlo/E+KrAVIzU8u7bhKf/KY8Iaf7hVgQyLFK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720318584; c=relaxed/simple;
	bh=Gs+moFv4SdYyYYrESHVDTvBVmYOsM+Qu5CIZ0HTfnOI=;
	h=To:Subject:From:Message-Id:Date; b=uQJ9xm6E0QH0P1Ax5AZPLmk4UTrBcYXfdlTQkvJ2HZkBc1N+X3Fd1koqAUX85e60LVGFzHzhmXmlJN/wQGCQC+d2P7bs3xy2o1NBa2xH17sq8XDSnXgnp0PKFh6hgTLZjIbp0tcxqJHRCxIu8D940OsGXQH26MzJxLVlXtv/Nfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tws9UOpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tws9UOpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91AAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720318583;
	bh=Gs+moFv4SdYyYYrESHVDTvBVmYOsM+Qu5CIZ0HTfnOI=;
	h=To:Subject:From:Date:From;
	b=Tws9UOpA3l3KrQjCEq+0Vok9JzQukjMu5qUlejJjobgTpTwcQdvGgQMkvGlCfcqQ8
	 G1QPakVFQ+W7GTofopuXNXTu1+t54ngpdzHqdZ/cMoBcFxHB1kt9RuKqR0wz/sl3UJ
	 hQBkDSJON+d4/9TRKGNdrrFUPLjHA+5uKvnYogtVTAelmICi94R16g8QYtRcoA8fZ7
	 YXE9NaI1zmrJffjzX41gdYtheCC9d5EFcXcS2QuLqKcSbXhbjnSmxEfVkajjzC4G9P
	 CmqE1MA/lhhNlUQiBOTu952g7kCnTXkavILuvwpzWT+zo6u1Ieb0vygeKDHz5pQWKL
	 i/aLx3uBuNtGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1305C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031858282.28109.10614648862535649594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f1e510a5933ba7f9d57ca63ae3f613deeadc0527d2db9b31b3df76bb550fff
Date: Sun, 07 Jul 2024 02:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720318582
