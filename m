Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E22EED8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782893914; cv=none; b=obf0VRljYIz36TZMX6CF7+HvZi14qGh6ylFI0HM6p4nDV0EPtFwegIJajf8nHvfMzNQ+oAyCQSSLwk/U8w/VnfF0Tdi/KgDUzOtHn2uzRrUjvhr2ShIRcSDxsqcBgiyZOWUBoUq6wz208InDGRHjKTemUC94UFztQ+ZpbowEFaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782893914; c=relaxed/simple;
	bh=g51M6BdW/TAgXuzmPzFlMAALe2fV4J8Gpk48DmZdmTc=;
	h=To:Subject:From:Message-Id:Date; b=syIdfgg6NVpFN9f9EOAQftH5Kj6fWBskJxi05brRf+IKx8xrVTNjZ7K2dh1RchEkFBqquzRVVBSdOrmJDGSWkem49Fd7ZybbDZRIGpLu9uKMsJvOfv6KcxJTocqDkZ+x3wVsom13HYXc/R46e9MjTzFL/0ZWy6xxzz5bKrYDw6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1ZBEUOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1ZBEUOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01DFC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782893913;
	bh=g51M6BdW/TAgXuzmPzFlMAALe2fV4J8Gpk48DmZdmTc=;
	h=To:Subject:From:Date:From;
	b=h1ZBEUOpoFPe0fjk8Yw6KZLuuwuanBh9Y57NdL77oa3ZczUGPDqlYDbJIVvZsOVSK
	 y9LKkwpu96dd517TKp+g5epavrCJBBdl1IBaw33xYj0rasLSNpDOW1jlhGtTA260pP
	 SACjSg4BA7S83GJFlh+iTjEXtm1Mwc7dj2mJYNrJ4L3CYlNW3BrBR30nbw+XYIfEJ6
	 AUfMAXO7lfnMBTA65yRk3n2fgIEo/EXVH2SCQ10yWIF4KUwVXSno7XSHF0nxt6W176
	 TGkbjJUeMS8CtW5Mx/EaTb440Oe/dzo9RguDMJjW74jYbu7cbQTt3NKcBQs9KgHkm3
	 f+Q9cGrFrKeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89E8C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289391368.8615.9989104042304776694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c85e1e20dbc9621a76f3532f404e9b1b1dc77e3e7d3bc96c6ce3a2f5fc5dc7
Date: Wed, 01 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782893913
