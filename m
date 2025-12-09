Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B9A31AABE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765315374; cv=none; b=uCPhaf7Pnn/aEIWxYwzI1HtKo7im4UUJwILQGMivDZL2z37J/dkp0epOklyK/sX2SGxvql78BFgulZK/7PsyErIK7OGt2YBAHjimdxecJqvGVX3JlWPIR7LoHIuTN/+GiQoQMoeM3Hk9NmvF7G9XyLy/TP0efPRs5PMm6akq+vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765315374; c=relaxed/simple;
	bh=UsXtRpJ276sW7NKh3GQDsKfRrnyIgwHi+1UpYt94fGg=;
	h=To:Subject:From:Message-Id:Date; b=Rcg03GdKrc/uiGn4lY0uP1jO04ROMZZ/tYae4zqfWXX0ao4D6uu6XeuMbntwRroB3MAOZ78gpZeVot/pb8p3kQTDQOEF/uJRmfy/Pu4lpB9CjVHfpuecLT/W9WSf2In1T/jBhmKYnMOMDbt970V7KEDP6NmgeiE1WdRCOiYyWnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEjAJzwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEjAJzwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE338C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765315373;
	bh=UsXtRpJ276sW7NKh3GQDsKfRrnyIgwHi+1UpYt94fGg=;
	h=To:Subject:From:Date:From;
	b=NEjAJzwmdbbhLCbgPtNurk9eogBgG2nIGyZ43pzsDVXd75fA8S6FEgNc9GXZmXSwh
	 rdrS5RfgCkDQ4uMmHFeW++IyXMrEJbkbuOp38Fu8zSJfv5dQ1X8FTNEbxBC+yDy8yY
	 1LAwC8QhD8Uh4BEbKXcclrkJ91C5UaEOWrMzhQLxxp2XFnpeSzDF8mMjIuNpRNQTf3
	 Ji16mpeeWEDoH6s5qqR5oVWCOL+0OzM3kom3OE+hJEGAYA2kuqNpHxVRnkEpjtOaoS
	 Q4TZgG2/RbmKUMoy7fq8QGWiJ8ALZRkvRD4xGShPK1m3UlwP/aHQp53g/6KZ/e0vaC
	 /jqF0qMlu7faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B859D3B996
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531537362.20969.15743211365654904893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e4b3e952be39b97b13c9a6f6196bfc6a3e29c3cfaf6141c304a7a83da80032
Date: Tue, 09 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765315373
