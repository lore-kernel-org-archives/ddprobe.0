Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D643C13F1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774942494; cv=none; b=R7EsWc+ye25rdNYSKOVjRsMsiyoB8NwcfY3Urv+5YFgNX7HapjswfPu0OcUc0mJmMHZTMLpvnEzpq3VRIwwQwr/jmQ0a8eZ8tu1+yE8v9MAlMWIqpUjva5wGQwLj7osiM7B0ProB0XfR0OLeMX8QgGO7Vl9dpkMXVz1cHq+sDK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774942494; c=relaxed/simple;
	bh=bR12oib3LrQnWZndG09wSMzmyxsQMEBZXUwtW7Ug+D0=;
	h=To:Subject:From:Message-Id:Date; b=OZraWKCIXy0E8EsL3B8T5p9vESrgykkWad7+KmhXfloseym4oghKzLF1Ws9zQyE4aau/kWpcJKJBTA0Mh7Dshe5T3kq/ihtt3afatfFzUh/318Oxb8DjknfFX4kNO11kAsNhJXBT9YnsZ8Y9QxOTg5hcO7iYqL0WjQV6O1mBU2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/e9gjuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/e9gjuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD9C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774942493;
	bh=bR12oib3LrQnWZndG09wSMzmyxsQMEBZXUwtW7Ug+D0=;
	h=To:Subject:From:Date:From;
	b=U/e9gjuzU1WJ5Hg4hK9XnR0rLIR2r0b3nDDpv0z6Vlds8pDXmm94v1bwsvlYVqWyb
	 gOgwWzYeNRf/Ax3GOSY8FuU2CEtShbkuUR24HWi9JbMdQ/8YXGPdoENJBJdhNBY0ad
	 rIxg10voerQH+QxAOjbMRSm9/JpeffvEI8RXd8LF/ZxfKFvBbejVD3CKFyfjpre6Wv
	 REFdz4eiEfh3m56A1BwcxslDoek70Zx66NgpXeK2vAMVIXN+6BDdOubw2MC6jUIa4t
	 zE+FEfnn6lGP56ZWziWYL84wmV9WZaQarY5q507ryjKGM2cn23nxOpU+ENn25310rc
	 k3/jKPegTXwHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91467FF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494249358.19178.9766397619345297523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f68f43b47738f77a6263225dd5a5d8a9692696841c46d9023a467b901c380db
Date: Tue, 31 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774942493
