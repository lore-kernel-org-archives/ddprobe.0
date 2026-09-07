Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41422372677
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788755434; cv=none; b=fbr2pFtO9j4UXpY1DkK+oYGonK/vbTUdEBA2B+ICx3p8HpW4R98eSmuBh46j+sZZSKWOvVECyTI43CrxgveTir7oaV36OVbLGdiH15YXD7nHdCkU2s+bfC3kgtTWtUy3Vfhhtx1zaIwE8rxvraCnksdyagwP4gJnUp9wkJr2p7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788755434; c=relaxed/simple;
	bh=5zIUeH0U7yiRo9FexGy4D/D0wr9XyjqVilf2CbB81WM=;
	h=To:Subject:From:Message-Id:Date; b=HY/7DeAtbOp6dri0nogupGEmgSO6zqlkoyDBEEl15lk0D/jToWLNbp/Pm1AXwyCsI78bHScUDa2+3hnL1Vb010R/OK9oL8C4ednEmaOUw7eO9gBPMu/85l5KYpPonzwKbs28rvU1DQvBTNUIdDHL0jcncXDw6p9njB9cmq6XuMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv5vuBZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv5vuBZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C84C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788755433;
	bh=5zIUeH0U7yiRo9FexGy4D/D0wr9XyjqVilf2CbB81WM=;
	h=To:Subject:From:Date:From;
	b=iv5vuBZwrTslDyxKxbc9jqCTnXhpZgoWuHz9O9aGLOFBhbS5uzdW7nZDZEl4Fs9Am
	 MRs6X/N1DdUVx9vsGY/Qqzgkt3ht3URqtmMi3rui4WRnkZ+92Y4a7C2D0P7HustdWU
	 mefifCL9y2yu500Jpyf7MKZTo0D50+XMQ6HJjxGi9qzFF94HjJmQbTEEPuR5zzH8ZE
	 NujBFwY8a91h60Fh9+JKLoXwhhxeGKp0Ij6wr4z/2hmnHaL2crQ4Y6wD4mTV5SSJB4
	 yZjEA7vxTQTAgFh7W+d5frbVeiSQeyOcKO9gchE8OgLuCkEZO21KO50q/BPrnGJf5y
	 Ke7AiVGgGCc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A1C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875543370.5723.5616850224861179141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95591f5e562a84fa672ae404b576349ca4970782c5dd22cf3ceabdf51cd276a
Date: Mon, 07 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788755433
