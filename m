Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F1A1BD9CE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751272194; cv=none; b=WB2GMV0NBcx5ySdp1gCVwdUIT9hPMuFjeAMjkAlFGW/1KDgt+NJNwSd9M3B/9WhVko++9nlj1r3Pa2RD26yttM0HcVwvTacPD+vO6jo3/SD/XtlHDjSRUrHdBVfWlBkVQroTuh5RQE2GB4yXGJQFTCbZ1HV+y+JGTNr/xWbPWPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751272194; c=relaxed/simple;
	bh=rZhaWFQX1i9T5z3SJLqxdGXGP/iSs28XoOl5Bl34p+Q=;
	h=To:Subject:From:Message-Id:Date; b=ZIDMoLM9h1gei6zm6+LuBPTemgrvBf+9mFERTf954tFnKNTFzeRVDUZH9ubRZxCyH6lwTa5+NzUEqmIqbyPw/tTy69ytZdY2XoWgGPDUU2FshghF5xR7RqVeCsfOXvdIFo9NaapKioqqZaohYOSopXW+VGrXN7y3RUMvinq+mQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR2hTZ2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR2hTZ2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE32C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751272193;
	bh=rZhaWFQX1i9T5z3SJLqxdGXGP/iSs28XoOl5Bl34p+Q=;
	h=To:Subject:From:Date:From;
	b=GR2hTZ2fBZ0E/c/bE4DchlvEYp4+A0jN0tp3zaI1ea0lJIDlFZJjJcAOw3whEhRfb
	 DgUbi5I4IkbfVC5DWiKr6hADnOHBgPIoAkGhY9CNxpNfy8GUQREOeIPJ+qggdfwtoH
	 lyHu8fqt2QzvEIDezfGE7qG52iu0J1vYkkwxmdOz+Lm/iiFJnPF0Xg5x3uSDpBcL1m
	 C0ndh7cu60ovDO2r/RwvPVWzFxHgx87t0g27jQ8Dgj6+K4q7A4aPJySRvbi/oIA2Gl
	 ALh+kRAjOWks2PUcYg4D1a/H64k/KWHniXZmyX+QfMwy1Jp1Wc/5rDgmQz8kPzHi+V
	 IC8REqDRNpcPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E6C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127219360.31153.8420251018277978139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943287bf7173d34d792895a8c4e012f788ed2c9a8b317cbce91c34ce3d559699
Date: Mon, 30 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751272193
