Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421A7188736
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734863754; cv=none; b=UAetr+PltJkyK7eNsjuSsetVJESTpfG41amyvuzhI2UgfAYAmIjHreeZ0pn8koLGmXMansLI/xkv4zliqqScqTHA2jjuguP8tkhODIz/ff4JB7516suordwID6kGBFNap6m9YWzVPMrVmQ2YaVbb+eXn+QVhE8w6ExymGIlgs08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734863754; c=relaxed/simple;
	bh=8+q7BLNSIMHF4Gnoh+fSPXzSdNR9Vf5CPz4xU8bcI8k=;
	h=To:Subject:From:Message-Id:Date; b=Gp0jvMcpNFZTjyclaAn19yAhr/StjWo8DT68yyCDu5S0EKD9PwONkL1R/wkdhW7BV6vifAHesJzV0GCkTru2P9fKZpts7RMj4G9/+z8SwPQCSvbgBUF1u6dmEfgUwaa88AvXrRhpB3RukX+xr2B2jJ7CJ+73vh9og7nj9pgzoKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fadqfbc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fadqfbc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7AEC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734863753;
	bh=8+q7BLNSIMHF4Gnoh+fSPXzSdNR9Vf5CPz4xU8bcI8k=;
	h=To:Subject:From:Date:From;
	b=fadqfbc/j421S88/1EXOF3IhRQ/QNtZmOsYNVny+WeO4Qv9rgEDz7YYq922M+9nFA
	 OJQtQysJXJmkKzi8Uw2IS6lfbSPPLPsQGlUx81FLWTvxNL10wx6pLCMzeIRU40onEY
	 gxqjueHxCtlIyKfa93rOHzhGaOg8A/Vr1umaUH3mSXw1ezjgMvjWxO0HO/PNT1Eshg
	 rDwd55u1Nijm/MEsrQnJLxcadjdhMzoZ8XGX/qQFAa6QL80PUg4OsHxPSfq2awByb4
	 BjGaL64t8d+cvpOz4DubpCggD64kzqsnnb22KzI/2O3DKWKWbHC5wEa3Zzz7NVf0hE
	 3Q+HsAgVNCAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95499E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486375359.5654.11317248155971377626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54274c60445a907791b7f7efb4639b7339a7352ad310074e0493f6b60337f145
Date: Sun, 22 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734863753
