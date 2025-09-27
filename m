Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC3D2D5C61
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758962994; cv=none; b=tWWg46h1PunLoIrfYJKXRP8GqUL20644anaz0NIBgO2xO5aVmtJXwNERRHb/N9Krr9CNnwVpB1ggHr+JpGCkgQYe0z01zR1J8uwTqdUPGQWZNNUPJB9htCoHmXb+JhH75m196Hfyi6X7+C9vX3ipiki3+jBeSFsIfSwWGt7GC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758962994; c=relaxed/simple;
	bh=aqEMwHsRS1Uf/+N5X++TmWJFwWAENg2HY7ehIu6b6uQ=;
	h=To:Subject:From:Message-Id:Date; b=XUTlDrczQUYZGjiSGHrCwxjPEe4JNoZ5J2Y/d013dR2QzCUrDLORlhcMsiv1I5UhWs/HcJ+dsH6palhG47sXsDxfw/lvMeVB83dpX/Uhlnziu5KK+FizHI1saGFUyM9rZwjYK906+s2q6JbiUTim3q3eEF1coXvDTypSqSLybvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPxE81XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPxE81XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C70C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758962993;
	bh=aqEMwHsRS1Uf/+N5X++TmWJFwWAENg2HY7ehIu6b6uQ=;
	h=To:Subject:From:Date:From;
	b=OPxE81XVxbjaWTQAAkxlJIHeOWqCj6r2DXEEr9zAR61LZlIxh1SCSKiUShCAc+MqB
	 I9eQ9JMWBBPggtAsDtMyEblbcpPH+XS4SLZVB74TiX+X4GTw273MRrup06rddQEQHk
	 QLVT9y14nfxx0nRh6qSBd+jd7V+xg8iHC7xjt0WT70eVZxtmxQ6cUmkqefdeI3liBJ
	 WzR7xYkolVLMan/JUKEGgx4Qmf47AO02+LoaHv7B8SzXZPZ3zbGqx8vlYiPKAYQS+e
	 3H+oKFz3tOCr3qjdimo1HNvK8GyFjxLEox6v5zrYT9yAdOCcn+3M0cQiHXwRi4JDV5
	 el8frzAdFsGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92198CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896299358.30544.6958733134127438231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26325de8b1b91be0803a1d01df65fb9f925553c8dde84f0e4b7a5bd34af6311
Date: Sat, 27 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758962993
