Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236091D5CC4
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751395794; cv=none; b=NhLaLNG9NJZM5IPHGgVNTUVduL/kzPRqp7mFouWnckS6ixnPC76coNuuk2GT3rKyL98n1mpmujWsXCGsKXqJleCUJwlVdiiyIFzhiJrQsBGNrCKOipmSvLtzbJEGzQ3+8xhTVy97dCxNr+XTyUbBTvOwecYkq8A/FlCyH82EQdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751395794; c=relaxed/simple;
	bh=kuglnyJbJvvJSVjx/YwkcHP/q7Pi33rWjraq5MysVcw=;
	h=To:Subject:From:Message-Id:Date; b=qm4KAKyHpdVyDuxsCF0V9AM3gz5jArHfSoyVG92hZ0zTS5zRZ/eT4e9ae1Ar0Q+1KaIZJP7Dti/1WmW9vuqOdevS38J4WSAbwUv3V6FdS5U+HcVSIMERfezqXb6FsnJXB/YZxlmR++8AosmCFu0aauZHaUtUKJQo29COk9aHHYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5qL+yod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5qL+yod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8C1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751395793;
	bh=kuglnyJbJvvJSVjx/YwkcHP/q7Pi33rWjraq5MysVcw=;
	h=To:Subject:From:Date:From;
	b=c5qL+yodzH8+rBrA3kRTJEv8YH+6BMPfKDDFNRhwoyz70mcX0uhB643FKadM+mLJu
	 c3cgscGAk8xlB5n+T+LFJEcavX54MtstZscQNdQvr9xyJO1piwPzCHBnr3Rt5zQMdN
	 vCAJnq0vCbVi/E0dpaC/KoUXRRBaAYklapAX/rs3bx22HWm27VduF/w6hGrJmz8ut7
	 tsCmHy0rLE6bbGMDMu6mvldJHdjhEuo8ueJS86LPIvw4bCLr4lxOJ6/3Ql9GViFgHK
	 EXoi86h+aiznq8FckgP8IPCymkmo6VMP5zCakSQN/KLfCixMJSIQGkX83ZIbgmW9wj
	 kboNJEdCSAvxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F208C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139579357.30276.13923914916687788619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a476f6aca75d57624c3089a8fff1cddc15b318b125010e432fcb9365c16c8b
Date: Tue, 01 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751395793
