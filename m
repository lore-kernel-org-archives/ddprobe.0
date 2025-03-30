Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6561F4879B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743334794; cv=none; b=CgRBpBqm37BsgxbHY9OruT9BhCh2SxgySDHCIB96X/NwAOx6JYBuHirX6l3jNz31Oi9OacjmevP2PvTKuSSv3/JgMS1PpJ4JIupDxZjkBnZT5hzJDvpDf4LB/me86+mnUQR4l2dEPHkvKmL69yu5gYyUoZs4Vrc5wHBJWWO5VjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743334794; c=relaxed/simple;
	bh=QuvcMIZCNx/gRJOUTBNEpo7zkTH+uj8EFCk1vLo24Vw=;
	h=To:Subject:From:Message-Id:Date; b=LnzkZpFb2rq0peMz+CTnvd6h1VhxDlPIS7me5uE4lYxxNtQfQ+wvR89KQYyxoGz4j6t/CN7Ag74cfEElSf9RdMGYHnNvO/01S6xmWt7EL7lZl5ApgxYsl8ZSZZ/Ycwe5SKsrlILM2mjrYfgpp/yXF8tMLsa9XW0r8al12ahQ+C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnRRgv8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnRRgv8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E2BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743334793;
	bh=QuvcMIZCNx/gRJOUTBNEpo7zkTH+uj8EFCk1vLo24Vw=;
	h=To:Subject:From:Date:From;
	b=tnRRgv8R8Bo5OeiGRo5oISekLqELA061jmL8R4bDE4zZTuvIqoRlEuJx/ax6okdQL
	 J6SoIj1v+JXHURsTq6ui2yW++Q95jSwWh8NRyWp2/ZpQV2CX5Dsj8oPlMQomUOmTTg
	 nrDPg3nBd4Ve85QYj/5dnH9f1/OfjNq+JjFpOx5f3olF7nZjMeNkvfWf5VCmpGAG5L
	 aeyB940CoZ7YhCVGVgDZZ20rLQfPyhOf3594FHzSM1Dm5EGHaGHWJlNDjauBd4mwJd
	 T054DHFwJGbUoQC/O6iCJCr7FsA0LqkAEJli+A+sd6mmzW0M+zh01oRcN+Lb9TB3Mk
	 srHPsv9fv1puA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC3C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333479364.31363.17956522038749742893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757d3f66e15f641b6fa1b3f1598971f40fcdbe71b516c065513c45c3c885409a
Date: Sun, 30 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743334793
