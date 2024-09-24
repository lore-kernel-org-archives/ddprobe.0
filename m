Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346AB1AB6E2
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727196954; cv=none; b=YH/4EKdhCGfmYoX3vXfofLeETB3dYqTCk6pcCiSYHnWpaThZQbEf6uEyW1DPQX8RSgvRXjnLKe8F5fcXE5CO9b+4tvbZWS6Wmw6KUdnOfrhF4VYh0e7wKyXKTPEkSziraA/xhHdlH+IKDWKDTASDq8U4nHDpDg22dq1fyte+hic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727196954; c=relaxed/simple;
	bh=RvW+g5nOygdkXfOlkRYl+Xo9DB36qGTXdf4USjS97vU=;
	h=To:Subject:From:Message-Id:Date; b=tM2QA4hmdCjGsPxGMoCS5maL+FttLMT9Qow9TfEB6G1iCbAg4l2/Vq/ofLo+fEJ1S/uen5MsD0aiApd/+0hBy2dwu8oW2bah+7cLVsC1X7VXwrbzmcDSAUZL/MAYReo4bDdTA068+EhKFGc+XDLZucWUv64j3ciQ31MViTuR6OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSGgqN6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSGgqN6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC3BC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727196953;
	bh=RvW+g5nOygdkXfOlkRYl+Xo9DB36qGTXdf4USjS97vU=;
	h=To:Subject:From:Date:From;
	b=GSGgqN6AZvN7wzUYeJFWgo0lhs4hD7Mp+CMv4AGDWO1c9BAZoe7wQu9OxnXHY8uFM
	 w7AWlAUQXYs4idz6XgY7WJEjrAaI5IZSI3Z1mZnRpBvUXv9CVvIQX7PdclO9qx5gKs
	 2mfPLxN34+UA3xD4WfkCW4jH0CvncaN+SBtVsY1f33KPvECUAfwg0WLUsEcRuljJuQ
	 aBoXhkhwP6DgDDAa/9Jp/KfmANWMLvj8tfW+e8yij0cA5PrX3aWB0fhvEX7xhuMEPH
	 jyLAUUmJX/YU97EczlxAbcI4wlz4qudT+f7Xw7x2Afx4UlLy/n4dMJk+NZBbFVr3nQ
	 ITwk4lAWqbHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A00CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719695361.25184.13358412643542692652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83830fa0fb9a6870b7244a0631e886dc6a984a9e74a0090b2147a90ea16afb1d
Date: Tue, 24 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727196953
