Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD661A9F8D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773982494; cv=none; b=FqlSwbCan6r1xLrwzDOhUJ40HJYmNrZCPkbJgbbotLz5CWXQCw6h78T5dDMXV3N9x8p6klKcIsWjUahznD6VgacfZcp1yOv3slbhhFernQCY7/8CUVBmEn+083jHe29PlCPZqBmIk7Ygk5un6ELGMEjsh7iuxvTSbPHbu2eo9KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773982494; c=relaxed/simple;
	bh=hMm9asi5ucHDrsrvtqLPXO0y0qSJveHVAInh0fUzf0s=;
	h=To:Subject:From:Message-Id:Date; b=VNAIms2nHQCxrsdDJZqMnZXoEAG+i95lAA1kPtr7bxtQ+nyq9OFcPAocChXOYl/4fysNYF7i+UaRDixyDn8+gLZmxZsy88rjZJViGwAbcujU0F7bcmAkVaAnKQpsG4u7pbUqwW+qEk4hBqRdNYLvqIqvSX6ylvKomdRhLZa0b2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/EJU5n4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/EJU5n4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A08C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773982493;
	bh=hMm9asi5ucHDrsrvtqLPXO0y0qSJveHVAInh0fUzf0s=;
	h=To:Subject:From:Date:From;
	b=n/EJU5n4bOOz3Nzlodqg6ZAcGJPE08IgXS97TmBPSdq74KQeutD4B+PtncpR3Yx7R
	 WyIiQqTHf43zxdMU4BBVb8H/UM/yue5Xz9UWH5wGV7EoR5ebsSclF0bG8+bjR07Nrl
	 dUFVdqdipmxVMvMlB7P3Ek8X2WwJaK9phk5WOE2HfgMS4rDFee0wMfCfs/Gq1De+mQ
	 QLhsm1Mku82U6fX98TjLuZTrHHrerHQQGdUu5YgFnzgM4tJcQvjq2U6vzl7A7fdYQ4
	 IgOyuKPgA7snKBfTXyWHIgsZAGCl4bcCeBO5TmDdt+60cCt6ZhCcb/11ZSx5ZqBZPB
	 b09HCDCJtKQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0181093172
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398249362.10634.5811289836428549179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b78b602fb5a1a9931f0464aae67bab576c1f0346e1c161d4aee8fffde209bc2
Date: Fri, 20 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773982493
