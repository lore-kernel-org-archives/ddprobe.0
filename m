Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119F9A944
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764024774; cv=none; b=npgCf4vPtso+gp6u8V/EV49vOe5GLqfbXG+96YlCbt+Vbv4txqv2qbxokyNajUuZmo/ygiVgTDKaEGI84vDbOB9oX2D0WGnpnjEeJl1s534tDn+xWmaZWhDXm0vSk411LuWNvOwNE+b9B/JSl8OaldV807ucvjLtyUe6eK4qdoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764024774; c=relaxed/simple;
	bh=QdbVfPro5ggTUy0yXTxXTZdtPl61Emlc6t6DiWZeez0=;
	h=To:Subject:From:Message-Id:Date; b=mewL8c1boN9ak7kgf+TsVRVU0p0uTskQeywai/6wGHrpBx8D+qj52zm1xqaAw4YpiYEu0VQIFSOg0y80VjebE3bUckgJ24dYHr/gWEcNZEEOY+Y+E20DYlmtFnjr5g6Pwk/lVzqNYpfKEmCxeDWs6pqB4JDli2ezLHYWfvlJ7kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2AHQ89u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2AHQ89u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9700C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764024773;
	bh=QdbVfPro5ggTUy0yXTxXTZdtPl61Emlc6t6DiWZeez0=;
	h=To:Subject:From:Date:From;
	b=h2AHQ89u7v1VmMxuS+m5DaUEDhuX2ySPfIZKpFwI4I8DUPF71FLOOqHSE95Nity3s
	 RFINlNw61R+QXiAlkw26eTTDuNm5QeTFiFtP71MJrjDCFPwuSanO8TW0IkesyaNKdD
	 uptJWHwqoLUcFbxlOO+2OT2eWJq3dI6Z0m9lEqqAZB0xy2Uoz38s9Wntlq+iUyueXd
	 Drcsx5QItaJE9oFafZYqQobqRUHkjcPmkH/BeiHGgUBUUYLUNN3S2sO2+L5ofIFloN
	 vdC49RysMsTcoo5wO5qNtFaaHfKoMvJff4peqtOQEggC2MPsENfYCil5ORWS9yJ5tZ
	 n1LEiyO4no3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A14CFD365
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402477358.3516.15650741224571518883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683434fd919ff7b0aecae178758be2aab1755c8e05c259a2e60ce959b179772f
Date: Mon, 24 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764024773
