Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F678472
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722168354; cv=none; b=ZJlEyhAVObBuMqSKHEr6PM5UpG8NJZHue5EI5earde0eqVIngN93hMRl0uQZZ9DMgKzvbUnvhF53egd7xrO5A4/KctHIEjKP3EvbJ41fDb6Db4aU5mmJpXSwoIWr70hmWCgycd8XIlor9VS9m/LvXLaJPZUfw6m39rR/G1cKbOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722168354; c=relaxed/simple;
	bh=ihou9vG0WSsPel/E7A7t2s0dBBP4DHyaocQM/ppFB/k=;
	h=To:Subject:From:Message-Id:Date; b=qMuEnnsboypnnCq5Tgqu8Lp1ZCmg4Udi9P+1sEZK9++XuliydoIgpjlFwcSqUYSK7tHLdGHqjWhbdc5R6rZ075u3heEsnymnKaghXqHRumithQQXpRvtvzeBzgOrucmNYFRoXpRQ6t50CzM4Xbu+fFCqft9MjgxWObpojuvGFtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfr//3wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfr//3wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7453C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722168353;
	bh=ihou9vG0WSsPel/E7A7t2s0dBBP4DHyaocQM/ppFB/k=;
	h=To:Subject:From:Date:From;
	b=rfr//3wShnQIyie+vQNGKcyrJCi976qiAm3ek9iuWAQHEqqWWCizvwldFSuOMc4XF
	 lEQUj47qlpUCEM9hec3+7rZUBQTMNcd9uANEBaPIIeiNXvWVmfPx7oCWI+XRq3GpMk
	 0xdAk/x+wgZWm2bcaWxWHmsqd7hif4ULFFmfgj5AUfqk6dtzdS/yl9mQSMQ1ffnKgx
	 /M6Iqu5fRpAEDsAMnwGGI6JgBAtOQJJn10CRZfKZ/UulL2H5t+RTyuGXdY/UKWmAIT
	 XWzJI1YV2HISuOWfk3hIb35YCeLyvqcp0Od140cvlWnY1GUzZ7vmekHrh6bZjUTdhF
	 7vLFt73vL+wgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEA8C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216835359.4211.14411184869452088783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fc6f254060fc181943297054ca12f6d79ecc957158017902141933e293c1a2
Date: Sun, 28 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722168353
