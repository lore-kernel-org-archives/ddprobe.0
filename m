Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C773B47EB
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789720834; cv=none; b=V5CzXXjes91wtrm4EUjJ+adH21wLaaR8X29r9/tvSLUisbTflUeNMlI9+gaDEfGMwaBIgqcN+/2+877E0tZ89FJ1+0gep1Gfyl3AS6OruDxo+igp3LqqO9ixxhegLJFwr7McLAHCA4iPgm5z7o6ZHwGdo3Aghi48811kvMWFzIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789720834; c=relaxed/simple;
	bh=BU7UxalVIDoZDjOKVrJTaSi8niZ5nIF3mFLpJwqQ1Oo=;
	h=To:Subject:From:Message-Id:Date; b=e+dRV27K3HfyC+oJIIG/1uMkFWiMyPCNav/ucpxBhzF46EAk51V8G3VYqdbh70W5K8f0eZIR6k2Hmoi+LdtjKjYdclUsvT7kjd3FVuiEOaXVriOcUyA0/ewJrIlLadfzW+w+QQBUtDrzOoMd0MIQtjpDDjs24PQUrEXPRqDw1q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMbguexB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMbguexB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC75C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789720833;
	bh=BU7UxalVIDoZDjOKVrJTaSi8niZ5nIF3mFLpJwqQ1Oo=;
	h=To:Subject:From:Date:From;
	b=fMbguexBXlCQ+YwS7EgTsXj3l02ifygY1534rqzfvhLsXZ2H8MFL38RyB4MJ67Mhz
	 jVKPTe+LRqZYBXckl+ao8oijEdrCPHieDfV+/MB7lv7PBFBV8bXWqYyQbYdx9oL1Ge
	 Tii+Zbt6dS3XdtessSCDO4l0teTZpsoDNJ20Hm0O7Cz0Hak9tTxE20ZuFa5vyang8i
	 2QA6bQONGBI1dQRscvCXV+HIunWTFpOKsR/kYltiqBvihcD62syABsaQfUm8YYF2B+
	 4lDTo3++RJQZSQ9XC3c7yRcIllH40QPvXu1ObuXJmvgFLo0IkjWHkOMRCA0AQCvTwe
	 75K3xEzZf51iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA363C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972083368.9037.3360051151901091944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a911e090ba9c7aadbc0849a495606237edb7c1436c551b8b9c2b30ca01a1a71f
Date: Fri, 18 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789720833
