Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703F1448391
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788789634; cv=none; b=tykWok8Uj3WREMb2Ybd0ppsl1qqT09FxA95a5ZU34WLfEpCU/cjubLTakJeEZtu+moQuHUVX8HMl2LRJ9Mtj7VK2kfZNQAhhBYG0opQb0Bekzs7FfNdoc2Y48HwY//9Ms8YwLBbXOuNmiXSBTB9hhIgCtyqWARejusX/leCUvdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788789634; c=relaxed/simple;
	bh=QMJtcLw0+J7HMqQpw45SFUOBawL6zahmA9pJzx1hzgk=;
	h=To:Subject:From:Message-Id:Date; b=aWb3FPSttq1N4QOXC7qI+LK4kYCEGfktGrM+Z0wGaIgiodwnYtqnNlsiuXbreG/gPyIlu6qrMVaXc2x2LY8EtlmBatDA9qwdNBCdJ213PFWYCV2y+hOui5ufU7e91k/m0/ByRVL4rutqYRcvu9VWUMgJf/cXytocCwf44MaLTrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oseQFyPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oseQFyPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA2EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788789633;
	bh=QMJtcLw0+J7HMqQpw45SFUOBawL6zahmA9pJzx1hzgk=;
	h=To:Subject:From:Date:From;
	b=oseQFyPbzpThkFW2McJ+dWzXxbh2HeIZG25V5sLOg3KyAKKK2OEBkAbtHwbLLiJh4
	 UUXe4zyao34z9D/5LZJEeAWlBF+geB6roULyQ9IZ9ZffO7sVjT3wqywRH6LRIq+6gN
	 41If3Dpjbn/kCdBfWbkrSeFX9BecOxTVvTzvdFr7R1s5+AS74AF/wFOVqZoqqmDP77
	 sobr0Iy92YXM7pan6CjbdpwIZouV0okVQVSeZCN/0iJt2Fgwh+rP+gHK361zipnRT/
	 QYmvN87icGhcpXsRWL7YtRoh5jygZY+P0+wAIs4q2LDutR1SzymQ2Os7PckgNsU96E
	 U6IFcPGahJHgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B411FC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878963372.27994.6621870719047857715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b977198c65efaeb0f8259ff4a03ea606559e226be2d085344f9f0e05f43aca
Date: Mon, 07 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788789633
