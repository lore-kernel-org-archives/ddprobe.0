Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313B22F30
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754618994; cv=none; b=IY2d+QyAcgg2utCz4oKu263aEujwthnWj4nkzZWQn1eQtdPi+KqztGkCDOvMehiU2J4YK1byhCfzUTQIIUCnlaqw+42WWaXYUniqWMUvN50/0YFs4ByrqySNXzl/QDubIX9+9erUCHLFS+MNr+FhioF5L4gvJOkt8GWQJKZipJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754618994; c=relaxed/simple;
	bh=nJjJ3nIiAL1oWMLtiho9gYAQ0sGrXzTi39w26iVrJ+o=;
	h=To:Subject:From:Message-Id:Date; b=CtBKGdtNtER2G2D29pFCq852j0335cIxJ3EjRPrd/DadtL3Dhi3vouCfc1+rHckzWo573CYB3vTBWukg5mQWagU2pWQjOYlQQfKJ2LD7VBh6XBWbiqlK+CAP9bVMR05adB58tJP7cplKT761VoSfPmeGi8xds72iQVPnSn5Syv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBnJowQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBnJowQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754618993;
	bh=nJjJ3nIiAL1oWMLtiho9gYAQ0sGrXzTi39w26iVrJ+o=;
	h=To:Subject:From:Date:From;
	b=YBnJowQx59WYGJ6QedXwr/GZ11hDxPUDDFOBviBqRMz6T63kQztuHzz0FwBNwtHbF
	 1ngzHagemGDze4nS49PYpJoOVky6LEmKIqFwlnRkx+vfkthN83BzNc6L8mdaFl1Ote
	 51BseK1X0EtMcAxIYbivSaXf6GfjYQhKgthlhII8uoDPEzXJCuLCpY2refVrU9PN80
	 AOjQXHObco+YcL8I4/N0oEw8RgtXLbFp1MpqpQ5Lnct7Q/OA6cHCiCVUUYPdTi8qdt
	 BpHTU4fileI22xhnja59N6vz4tHJKzT7jnWjRMPHIwChDNvkXKiSvg9XZin4FyQ6xN
	 KXon65FCdt6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE4C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461899358.17796.6501038161930124490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75401d3900856ca9b6820c97e2f6a08b1752694de45323f742e636af8387750f
Date: Fri, 08 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754618993
