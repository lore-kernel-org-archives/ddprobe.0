Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256C30C632
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778067454; cv=none; b=sdL1Ureg4tekyvdB+fBjiCPg0yvm+yIwaNM3/0KSZpfzljffYzfERySZceh9YqYv6LTNaqUHE9Utw9gX2btYRwzeMDBOnSoVG561CnnzBFZifLKb3Reb5eEeTT7MvqpvOPrbJT3zrCrTjQNAwhF8nIBWUXoA47RrA6FhGh5vLfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778067454; c=relaxed/simple;
	bh=r4UwRB6WhPQia1EmCNHq6Nu9Nr/cfP6oOFs2Nlz6bMY=;
	h=To:Subject:From:Message-Id:Date; b=NvD8XnoDFNsxU+2jDkJngcr7ReED78dFR1+1qK5nxwxVDCKCHV6RQWEwvl9qbmcBGidBZ8eL7RWrpu3B2VYFlnQoSLu++cW15eLqw//kJNzYKsap6NWBB0EO9tzdm07jcDmAkgMGGxUYY0Zq1+zgcYjbmZlkRAEcNfsj1bhtITw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo3sD4uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo3sD4uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9335C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778067453;
	bh=r4UwRB6WhPQia1EmCNHq6Nu9Nr/cfP6oOFs2Nlz6bMY=;
	h=To:Subject:From:Date:From;
	b=Lo3sD4uj5h9reEJTMV6h9+dK1/M0yEBSkdEvgWxf/HChyqxy94WdhdWiAoia4xeFr
	 fKHPyuCkYtUHe1t0I1++rguog5GMo5HZP49XxMKK3fg7yJAnk00nTky+h5Xw6cNd0u
	 okdUZPyoX+ILMpS0Y4qZrXImPRWDOAAAkeTQDBLzXY5FUVqtfoas+sSoOjDxLX9gob
	 Of59UyhNzAZrN2Q2oEqFJtxyHlr8dq9MxsgrU0SFSqj26HdI1ucBPMbeKXY8OQm2vW
	 9ZxgCx45+Az0kTvrwW2gEs94LqFqYgeKSBhl3XspoWJS4gydD9FwP+ebWCsViMeNc4
	 BdX9HgWOx7Dxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDC6CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806745369.797.15719147679024872338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfd793191730db99c9d6a58195d92e0343bfb36433e0e1277fa077933ae8436
Date: Wed, 06 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778067453
