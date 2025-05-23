Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538B28382
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748016594; cv=none; b=eCffdfDCXoDaf/KvAgKcAEqRQQla3ZKKDE2bxpWeJVBuucnlrQfZzkgQsaphG0pqRVF5KSS8yw8HFQnn1WiUeYOoqz7D4uCT5Bvsm3YURa/u7VIP2nvaPD4AQnCPY3DMWvICsDbCsZB3TtkKOpG3abmG80YbA0yxslu1mmO+z2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748016594; c=relaxed/simple;
	bh=FOd6ph4OILSAEFX0ic1OMNW0qXmH5rD9I1eBpypec28=;
	h=To:Subject:From:Message-Id:Date; b=uNBUNvdJ6lr5MKnACXHAZiwafcsJwWH0qHNuX7keVDcdJps4FZLRHjsMeEaazHDFHXaPQxelvKR7lkDyHCw7uVt/+2v4Xk1MphDOnNcBOiY+IsQUpQrKDyITK9MFB6PGuYjcyueY7wPZjxWnVgJ70hsRe2EL8HbTYS24OlpeAww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpKZ1GfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpKZ1GfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED95C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748016593;
	bh=FOd6ph4OILSAEFX0ic1OMNW0qXmH5rD9I1eBpypec28=;
	h=To:Subject:From:Date:From;
	b=cpKZ1GfHmyIuVsuRLrge3wvT81YrmqUlGcwXEffBzm72sNoPBtrCQUvAwL6GeqorO
	 qXKeO7ds5GZBRwjOO/H1aihgehs4HePbyz843bggxc93U5+dm4x8VMevfdGtp+K9hY
	 zM8ZwIA7nhCI/fra6odPUojCeUxXqW50cEr/o1k3CvEPTIaP2TWWpH7RDaivYdZuFr
	 tvaOfFg9OjAfH0l+ClkvhXd7guTey7NmGZ9vfcLdw1vPT7ZeNCCuZQh5pL87ve9eAg
	 KRINFTqtpxWdIu9h5uN1sm3qumMxfOGirXfHbwx3c1hbRaUp+UjduipJ7e0S7lRPNS
	 5mCV+Y3Ybqhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90924C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801659358.20467.4010635716230553747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579e181c4510c74c0ff6b05235cbaf67c9c5eb33ff208a18f708597448c67d81
Date: Fri, 23 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748016593
