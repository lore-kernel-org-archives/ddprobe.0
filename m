Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA03E4317D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747519193; cv=none; b=AAhvR3i0PQuNu7gpO+bymfTGOVLWDl+UXhgNtJ+9iOoF8Tskg8yy6/LLsJ6gDnmR4SrZ89MYR/pirW3th2/ZS0UC/afr05qiDP3o9a0csLaLxv/NbsGmekqOzr1MPoTp63PzGjHOXPTUl9n1Am81YYZtv9JSGRL/Lxwu0UUUxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747519193; c=relaxed/simple;
	bh=U3JjCPsmQXwNszbKwwlCHjQp9VzsI/65VuIndHMyQyk=;
	h=To:Subject:From:Message-Id:Date; b=qVxImZ7a+/uO04SgMtp2yWl0Ua95TmxQh4x6TxCWAQggD4eiEUaBeN3p0rRZH3JItv5i6f0YmKTcpsWclDSnVhAjyV3/+PVdZQdWvSdqcJ/bJDVhcw3EpafSGaViex+iCLekZUvROrlLbhmWXWd/cJoTcAYtm14FuNmlNcuEQaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJwVJeWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJwVJeWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BCAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747519193;
	bh=U3JjCPsmQXwNszbKwwlCHjQp9VzsI/65VuIndHMyQyk=;
	h=To:Subject:From:Date:From;
	b=iJwVJeWT/OMnGcNiSgUZj/yP5b7FYEXwYe0PtaFl5efndnzXzpUMu4vnRQHnHXQ/K
	 +lZNyaT8l4J48kNeL9zOxMXdxcBdvzZYIPubC6TqOUh/zOB0IBbHyG6kRIZyaEp31R
	 2zd2OuiDU7SU48g4FNwwqFe37PFox7vQTQUNeQHzaGlYtc0OcImDaWJzeQI7cIKRhv
	 HGatYHOxzRSziSYyRMigfGcrqGGVAyfJxVq7vAo+m8CjB7dNr37DU+7yb0R/EtHHLr
	 x33ncrVBMYzYt3wXYV543EhWsYzI6PF5QtNuReF0x/tFmMssBt27zZM8oFbgGatyOK
	 MILumzsXl/byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A6C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751919357.10045.7967647153503064661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835f25ec0a55656315faf056d6f341e4b53bd3b0e53c8e433596acbe9ac5bc0c
Date: Sat, 17 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747519193
