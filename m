Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB061A2C19
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715974343; cv=none; b=OSU191EE/utSd+mo8Ydk8CJVhLcCX+owUO+QRzpoXbrJQwrnYn8SdGAFrBCPMuptam/hrbazOX+vmJ1EIUgaxeGjZlhLXhI1Q/2F27WLd4ZOrxBPcIANFJVGM+02rRiHPo+9obmMihTS7iYej7Rjm9V29iqqtolyFRliWXz0ZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715974343; c=relaxed/simple;
	bh=HN4qdJJYTFTM5mZswE0p1/+VcS6Dqqlfif0oNzerU+8=;
	h=To:Subject:From:Message-Id:Date; b=I41JwzWHuQnbkkBUwEAet+5q2jCU8cBvfbQFx1BTzrHsk2rBcGsbmwiNSkk8juLX3zTWRp9ZjkZ/jkRUSmhsfkqUMHSqEJQNRZhzTVcX/anBLqdGhynqSlgG+QTsoQ27d7nc6bKLUDW77cNdr2KvCIx9nljPdCz5fWNtJq8HNI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm7RNU4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm7RNU4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB949C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715974342;
	bh=HN4qdJJYTFTM5mZswE0p1/+VcS6Dqqlfif0oNzerU+8=;
	h=To:Subject:From:Date:From;
	b=cm7RNU4jNjavnv8nSgU928E/g0W+PSGLr9OpmY3cMAOhIxGIMXkL3SDAOkpf4wc6Y
	 dn4jURVXlXZrsZrk/t8ZqSoKS37TLgiyzYmfoCWXv23cg1DfbrSk3bwFjvaYj67z6Y
	 mCjZfOa/JGPPv2XEhrAkkfDnMtiJAD9RhVxDLC35Pfxgpg3H+qjjPQ/WuKL8X/sqo/
	 r7Z5Nyy/HfLZcEtomX2bLcFaYqrxunLz7r8fI2Wf0+8sjr93waaOVkQpIX2szvlBNO
	 0QeYZk+h86QIcUU7O96xaULkZ4PdhXmktiMv/XUGo86VpURDH1WDIP8z2RGsFMuguy
	 m5MgoMxHqc1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F64C25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597434279.5613.8289707090045415918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2df6a9ff34862bef3e62dd0f93eabc5719caff6808c33aeedda4b55cab20f4
Date: Fri, 17 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715974342
