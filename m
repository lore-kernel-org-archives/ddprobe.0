Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B472607
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754205594; cv=none; b=Nn/KDYuhSofAeT1Funh5Nxhj0DbiNGmkcdg4fc2d/qtRV7h35wyDXyHuOk/3g2muSKjhs1cQOkm9XBVtWZhxVMKNZHrnRkAoXekGGX/vke3vq2KTQljnvQWq42wWxFYdah7J0ozR+Eyv8LuJZv/VrczZKhnRXP+WWVZFRnlI6Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754205594; c=relaxed/simple;
	bh=ERP+wzVPIk3/BJTEQaermOiCDcvNv1t7xBrX26KoGiM=;
	h=To:Subject:From:Message-Id:Date; b=Bt1Vu3mYeX68E/K/KbpwukGP+7Obo/B4HxA/hVCycknT5artWoMEIkHicJ9IG3PsgxLQPNXVPb2ef7ryW4wsVHiTFCoSOMI4tGY87TLs2dYAjns24q/wkY6FT5D0pvu2rK8rlix/bKKX/62o/cXdzGjoZhzzUiXDnzAQ2fWUESs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrjzS+Kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrjzS+Kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754205593;
	bh=ERP+wzVPIk3/BJTEQaermOiCDcvNv1t7xBrX26KoGiM=;
	h=To:Subject:From:Date:From;
	b=NrjzS+KdPgaC7ypq8Bu87UigDgmEMatfvLLT/VI1S6X/WYHrcSLoc1IwvXtKDtsm8
	 MXrsknPfBvGZTclK1pObbBwja/wdmhas9wLesqX3QGGFwfXnv/mgo8W37mcCSmpERx
	 2MQSz3cc7UPe3Q/TQ7QbAsilSqlQF3wnvqUbTNjDbS9ZerOvEtL3exo8XN7XtM4tB3
	 OtzZPRq1OvW79HQHPPSrnkCInfOr+eiQ5kMMjeJEWddWcJlI/q3ydx3GA6YzbbXcYa
	 EDyGS5F3tZ35YKRECJUsCk03oKfOhXn/0tGKM7iZasgXCHX916GLvninO5ZdzVKWho
	 /maZ1e29Os6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE6C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420559357.30152.5028305109463575096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888a5533702c4b6d642933351e319644539a77127798523655da4bee13f7d6d3
Date: Sun, 03 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754205593
