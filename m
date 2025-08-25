Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E730102F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756147194; cv=none; b=auEydz0Y1n/6j+C6IqG1q7I3lkQE+F59gstaUa957A3Fvx3aiaIPItobdlidke7GGQbWyBHb0oU959BHqhyL+myZLTrisE86YORHj4JD90JVuPbHFMowcpRMQt1AQOI1YatMfsQDFh5FF61BaZ32Y40ECccNZMs0NhpaqLKnp9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756147194; c=relaxed/simple;
	bh=akuXCeMrv9fDT5zaHQf07gxgFKsWS/bADwIhIHWAQ/U=;
	h=To:Subject:From:Message-Id:Date; b=mRXsRKr0aCm2PkcHYryFjFLGt/wRPCOKi42854BzWoeU/jh1nXKjGkTJRKCn7xVUMZu185VOrkgZEMtHaEFr9h+g4WAcEluNiQy23mXbVWrVtygfBSYsXvMH/+ARZm9U1aBuMC+sYX+bTQOELeUN5hC3XJihiGSpzIqHqxL6RRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5ONtwj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5ONtwj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756147193;
	bh=akuXCeMrv9fDT5zaHQf07gxgFKsWS/bADwIhIHWAQ/U=;
	h=To:Subject:From:Date:From;
	b=r5ONtwj7Qdez0oS5swCufrJAlaWYrhRbQMNP5v0RBAJNtee0Ch1SZJZe0a4oVJp4s
	 EyKG3u3GDWX2PSxpjIUTZwKlaCoBE6zdIuC5ocDk7hwZwLtlDf5QVk4+fwvJZFHHbr
	 cefCweLPSsyeHhxtEasJ4qL33tZG9W+JcN7jhEn/g7SYaQO66Cn87cJEsImLrjkWaO
	 C/yGK/JgQlGapAguTmiEPFhJ+aZw7iDnrSnc03jZzsPRxF/djqAKdJy9DJwaZUV/Sg
	 6If4pMEToWv63ZLV+dScb3XtKusNjYSEv+5gLthPs9LgpCmtgfDUUcvrxnhvoNBJne
	 hCw4UMSlo4aSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214ECA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614719357.636.14744676369561727918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f4fc18d3e4f2936e7f99b85e42a62692ac634e9ee4f1c41c32513117d47ec9
Date: Mon, 25 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756147193
