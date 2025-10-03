Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16462211A28
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759473594; cv=none; b=XTZA6rztsP64maxHQvOvKXS6DV7pKuIgSiXBv2RyAbBMrnFROyCbyVnhLUYHLtR9N23ZU2EhxpvvCjsaOwMrZ6HhiaJlsyzJM8CIMljpHkh/LqYDn0nvYOKafs7kGOS1Wfnmi1drB/YsCZIxRqQWAckdQK0FUoBOBC6ME72cZ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759473594; c=relaxed/simple;
	bh=zOAeSs6TeX1mvrhf0okgBKzPLQJzAPtQAWxFUATkwsc=;
	h=To:Subject:From:Message-Id:Date; b=ozedejJ0mB9Xn8/eQ1pkI42LkI3SEvb73sr07fJQQt6hAQCu7dnBVNmpQ7xi8XwhkQLVUXsPcYn27IwXQmIx5bLrK3VxmKGDBCdtKDYmMRa5h0RiptOqwq3wFJDEUT4XcaiXech/2fTNWT0VNMcAbUAbBdKak34iinRmKqFd6t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWUkedWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWUkedWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA47C4CEFD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759473593;
	bh=zOAeSs6TeX1mvrhf0okgBKzPLQJzAPtQAWxFUATkwsc=;
	h=To:Subject:From:Date:From;
	b=YWUkedWrFPlB2uG+CLyHqQ8HSeYnu06iINXzFeM7+fmw7IjA2VovDrogr5j1QYnnU
	 4+ejmqw5t7ReCLCE1NHnIQd/RZoDIKErxOZeKNGpQi952DRw3/44UrnrPdG+Amp1/r
	 QibHYdSjPHSOs+x1VTx76AI+nldQva4clYYtBKi7e6hgkk041XohrEDiMOHozrFt8r
	 ltExjmj7jl5KFwx5ejYeEJ3PxNKPhCSvm7y6B2QSrLKCwwk5Sr78mijWX8Mx3xfw0H
	 KU0yBzAq80dVJdLIrGmv1E7x2p1G0oJxhHtjJTxm3Tk8BkknX37FxA0tRAcHle3QpB
	 YYfzWfxPJL2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F592CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947359357.29668.12235346766354779659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92456b7da81e22334fb853dcd010ab10976285d3edd63c790ceaeb5ae5e1a85
Date: Fri, 03 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759473593
