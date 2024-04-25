Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707CBF9CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714008683; cv=none; b=E4XwpYH1Dg9dM624iJ6sTgl3YurckGSqFINTeP0pMf346qy5ztCfvPTqMRvnKFCGne9pW0WM9HLJBYnCL4JZPyrsAHYYm71wc2hBs6rVeIsinfeBrZ9AbgOH1VtPgKBrX5QypMOc+1yqbydL4m1NNQrKcH9WknAB+Xh5njbJn1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714008683; c=relaxed/simple;
	bh=G/2v1SvUEaxo4pCCU0Mr97PZuP/39OcPlio6p0vnsJU=;
	h=To:Subject:From:Message-Id:Date; b=e27HCmBj9k5+I+zskEZWAJi9wfVTpODxXSaPqNyNHwRZEfgm1HWnGAj4TwuTsvWsvqbxb8F7Do3tNhPByuQ5h+Cfxknm3risbPIz58G5RoQCTtvyQM0HwZ3o2PcR8IkPg7P0gscUGB7mDsLS7o2bnDavOL1Sij6vMLfadNAjys4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNLMSKQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNLMSKQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFD4C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714008683;
	bh=G/2v1SvUEaxo4pCCU0Mr97PZuP/39OcPlio6p0vnsJU=;
	h=To:Subject:From:Date:From;
	b=bNLMSKQ6BSzhqoAritXNogHp3CzZUwmeE+yPj/H1BlvjGMtPble/wL5RRaJ0VOpyj
	 D4GXa7n00T0tdx+GiyQumN9FZdcyTUHXQmEMJKBXCqRttSZnh8SevtJuR0Fekbs8Fa
	 pTkShajrNfPowTtZcIeICRpe0PCiq+RQUKgjaU6PNRJ4mIQj6oDXOiNIKjKdDwsQtm
	 auI0mgWOn5hTrfvyORxgOp18b+QfTNnwcbQ7bB1hwEqL91+tj2gxABCfO3jttA6/Bi
	 KydI2OLDt5RExup4B8Z0NkJcozlULV5kKwbfRzpb8LjPwh07j9Nzy2FNPB5QVedELl
	 8Sr+sNzCy0Cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF5AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400868282.10102.10871433497047868271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91349aa5a960dfbf2c064026330808cf716650769bb3209750e112667a54eeb3
Date: Thu, 25 Apr 2024 01:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714008682
