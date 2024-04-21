Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7166A12E47
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713709823; cv=none; b=D8Os2ZzLl5VbrtiJzBkuoud41cjkeJkLbVCOB4GrUxltmsVpnNBV/jdClQeAUVGUSseIk58LGc486YxAgDBvZIYMN44VgBB7Nox6TWA15RXKVWRb+FFED5z68K61YCnSl0+10/rZ2SfuZv3RxpXa4AuJpW4HNa34rQ6qEVe3ZI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713709823; c=relaxed/simple;
	bh=lGImQu12iKiF5b/dTW4ybO7FkGgCjwHPfbgsrzLqOpU=;
	h=To:Subject:From:Message-Id:Date; b=YPDqvTei5E6QFt0De5hQxyj1y6tVJJ8hO8+TC9R/HS/CzkSDM5kakb1R6L8bYXthQs8/Ldo/Vj+EHDBBqTR/O6ioK3MQqavamKQzH5fYqlaii8IYOA4j7eRuvuonQ1+L5dLX7Ayt6bMnDNasqT5gjDluWUdcliV9pc45QUwcchY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/Go9krg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/Go9krg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E027FC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713709822;
	bh=lGImQu12iKiF5b/dTW4ybO7FkGgCjwHPfbgsrzLqOpU=;
	h=To:Subject:From:Date:From;
	b=V/Go9krgVWktF5l30rob4tzv0FUrB77aJp3+E6W9Rqn66eiYKB4Vuwi+CVGAgrS1M
	 OKoJRka0vnUB4VwpsYHRiuNo5dogf/uy8pYsmdH3Qy8h3GhQIpY4w5ID6eFig7ecui
	 qCh9sRMgR/5xOHzqO1xmk0H0Cg9ZfEbicF4DrZIecHGbZosLSrddK2FfB1JG7n/Vkk
	 2YcKqjwPyOZJKc7ObYiFr/ClhBmmCPU19fMON/dmYkRj68zNU6QrY6EZHPkozTbX5w
	 yTU1afbhHzQ1HvgQKlH4pfWRWRGJuEL/8gE3XPKbm7GuUIGN/zSjeXGgt5DFC9CYTz
	 S7OT4OIxprx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BF3C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370982275.6652.17397602794324955718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfac8045dda28bef97edee276a8de61f4b4761189a9db6b6a28abd4ad00016c6
Date: Sun, 21 Apr 2024 14:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713709822
