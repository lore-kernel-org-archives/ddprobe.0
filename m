Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427E32E718B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783447714; cv=none; b=r3d+09nmPUE0BFlPxvCU4oAiiy55Y2PBf9Tb4YaRtGbK+Q2o90HUDvjy0iWIv0MyQqvuIf9Cx+eZx2vQ//OvVdPHkaynHIr5XrOleIZOWLbO9UaJV08LsHMJQSOot45WuFtv26jvLuhO9XY2FMVrOhr+D5dl/3tpQyRjsoueR4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783447714; c=relaxed/simple;
	bh=i8msrKwJnKPGwwX5W5YkZJ3SM37lQqPbNrw1LMOuhCA=;
	h=To:Subject:From:Message-Id:Date; b=DLkITkyfkkO1ZY7S99/KWQxjPnOKDiqLEZaQ4wiiYWzK2u0O+ml2dZis4MzH+dVFTnhX2RpyHbU3f7UUCE6Ny3cUoajJe88HTYsZhgrnQEXvB9G8Z0Hxotusxe2ptrYBElMGkYOxl2MrhLsGSu0Oa70yF8aWEUFmWXq9c8XQB08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFFpRLGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFFpRLGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA3CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783447713;
	bh=i8msrKwJnKPGwwX5W5YkZJ3SM37lQqPbNrw1LMOuhCA=;
	h=To:Subject:From:Date:From;
	b=VFFpRLGV6lvLvYE48CZ7gAl3iDEwz9+2DX0AWe07dxkZc+czG7gzadjGX72QGpsme
	 BXGujVW+7KQLJwXE4XZRrrMcm9hMVDX+O+8XQhNBs/YzvquVhsvft7Ua4jAQ826yD5
	 i+HL3WdFnRQdYMjLoc36HsxD86O6CE5Lnmh383tK0HKYs8cYr23YyL3DYLaRpI6GwQ
	 uEfhQjIGCll3vAQSvHHjhacdQ+8K3j3pTh8B1huLj9dgJOZRwFi7cTbYOyPAHERjTZ
	 Qb7Il1qZH5Qj88Npql/USKiZF6oe0xagdGICYq8Yim2d6SDdiHBX5b0I3BW0Ip1b6v
	 u2FGJTQ2UTI6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18BC44501
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344771368.30058.9124928895919172800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a17d23e572d43076463f6b78c5c6119d97e0f5b44a44e41960a01406357e68
Date: Tue, 07 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783447713
