Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD431E876
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718851763; cv=none; b=ULJNfOy3mr9nAcX3TiRXrrKo/0zBksXXBKejwWUfU88w9qmKNUQdDlwRrc19m2NNTSjQJz5Q71o3WRj1E7JuN6FxsZNrgc9i+/vbwagWAI5qcgI+K1MDq+dW+3l7OywiThbsaPGSDHExZTFvZchcjjHR+tTNvuioWqluLPIDd7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718851763; c=relaxed/simple;
	bh=q4oMoYRinhfG0TCuXUWZ6aQWd59PN78aAWNUbBennR0=;
	h=To:Subject:From:Message-Id:Date; b=PnjgXvVVabBVbHdLyNV+Fe9AuM3psDrZOXHBdfRxLCyTRNnx0fINsGQLW/hCl9Mfr3xTMhasACWVczTheL/Cih5oZE4hKg3D7aVku44RvSRJDWgi8Cg0Dt+jbcvCIcOD5Dxn8b6uwoL89LFpnNCgwGl/zYqjikiICZSK7VTQT30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5g7yUV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5g7yUV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDB4C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718851762;
	bh=q4oMoYRinhfG0TCuXUWZ6aQWd59PN78aAWNUbBennR0=;
	h=To:Subject:From:Date:From;
	b=H5g7yUV30sA2xhvTyGjg4gcxSoDjSm1bX3BxLY3BtXqqj7Omw1dT5LINZR28iwGoz
	 jC6qX8WwkiHbCg6+RSH3Ws29GUEvGsH9+KwdAmAixUDLK2oSbOY0R1gITEnRoCOWRN
	 1/gvXF/oJQJAAv0uhMM+n9sr4g0Q3HvUCDsJPagoDmEyrWitWip8tfbujKEnMGdg3m
	 NcvEc/rHPCoG+r8/zT4KzN3s9N8KV6qAvO+goD61p+i2J02/3s2omphzZBvI7dV9je
	 PYbHxVUgFjRxMRO6KbhlezebNXC6SLKP+3PY1itaDHdKe3Dwx6071Yr726yKFpRUM3
	 c4KfmH5UXZ5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C62C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885176280.17101.11475712963261478432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734fadcb53149d1965c5022754e7a5b71887fbeccfdbc9b74435f87e927c513a
Date: Thu, 20 Jun 2024 02:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718851762
