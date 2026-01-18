Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136F9500968
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768695234; cv=none; b=RhJ9tdsmjSf3xD3vJm5XLDJBird0muZAcH2DX544CvBPseH5qenPrUFd3vjbgNlNqHD+HpWaiOQBi6HCXojAy9G08w/D/FURJAqXzHtrYhG+SA9kuKPVe3ZYdwH1O1WYxq/XypiOlCYS6cekZDoBUuIwRP9S3zmUv1L9s28Pq8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768695234; c=relaxed/simple;
	bh=1+J5dwQC/9lPF8+Kh754bkcTEMdUUsDnMbAuYvfn83E=;
	h=To:Subject:From:Message-Id:Date; b=So+kDFVarWwvtVJkOxjcCE7Qg7dIkfsG20eVMqtujoz3EQqzbPEMKALtvyvQUeyNkNhYnMbpt3IUBQcns9dk5U0eVcDIRfB+JDdmxW2irNaYufosMCoIapdjpXYR+5FEWsueXJ1ZgO7ohK8sxlzvi7NVzYUBJ1lf+eI/2/f+2zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjKO4Ztn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjKO4Ztn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A699FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768695233;
	bh=1+J5dwQC/9lPF8+Kh754bkcTEMdUUsDnMbAuYvfn83E=;
	h=To:Subject:From:Date:From;
	b=GjKO4ZtnqJW5mKpbaPMvndPC9EEAGDVKsY5h0JjQbC5+4weI4tSkRjGgaqpKEX7Uf
	 kxNkjCf5RN6baG55T0Olqpl07JqPWcO7DnEp5jB/utP7ZeqrK8zZjUSGmCtmbvJGcM
	 L2NM3SRtDscttC1JCi4hzfKLoMO78q6FWsyovXEakuh6v2za89EXDtJ9grb0qpWbV8
	 7CizO8lTtcjm/re58IkdV5t8wzTolvsI5r9IyRcTKHuJLkSGtwzmB3PsUwtOalrzWg
	 3Xu8QCan6vSIZ98rwdNwC4zowS/f/AY2wSRzJE9/oWc2UlPoUhcgJSPs0FPDv9/hKS
	 aAnKXxm/lkE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C30CA5FE7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869523357.15039.6307709241026278846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedb081bf54f6348225c312c678460bb8592264b48d702122394cab3ce15d24a
Date: Sun, 18 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768695233
