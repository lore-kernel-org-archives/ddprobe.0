Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440342F5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739252995; cv=none; b=VIU7xy53N/ydyTPAGAvI3iDZmbSsrNMNwhS4fPzNEtCaUACaOpFy8FAKyVYyY3F1ecBovgLBkz5kyzQELdJLDbC2lfjp8XKTUskiVYB0uRLD3Efb3ONms1HZ1cFm0pKAnqHKcDtPJA1TRSNvaiBiSylie2+Rvv298BOQKI5diwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739252995; c=relaxed/simple;
	bh=EEthACyHJkr1X+AryN/8BNdeZ/gqU8odIk9ZxxId++k=;
	h=To:Subject:From:Message-Id:Date; b=o8gYAcnfnzQgCFm1Po3rN2QjZF4DKdHeeW1NXLD7pGgOmZPD47K3DtkjZTR3FhnBSpt0AEq9LcytmWmQJMynBedGlgO1lolxyCNEy9dxUrS5zTxW+xGhBMU/YFvQx2dJS/fCfORsdCYL8rTe+Qan5OpjmDICOz760uU2jMHV59M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgbcVhsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgbcVhsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07EEC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739252993;
	bh=EEthACyHJkr1X+AryN/8BNdeZ/gqU8odIk9ZxxId++k=;
	h=To:Subject:From:Date:From;
	b=AgbcVhsHTq5uxpr6AAJP5wZaYmu2U/1UuZut/biBPaVWnB+8I7je3+RRkW68KhIzO
	 hh+kYyN6KMnCkuM2Acux1j8rHJtrlrgYAH598aAK13FUiwddmHtF/xK+jTvVgxiwKe
	 3EsulRzgu0pjXVNae3+zwZzVe/YsmdoKoMlEyBopkAqJgDDLGs1U46ulMr/xVrFQrL
	 YHyURXMyvK1ixOrfank8fM0qGEGAaG/ncGIYaejULfVg9b4v7lwagwP4KdU+IBtJRn
	 yEErhj+XcVCynziaaDrOxrakhjnM6l2OOn2PF9dRM9QqoR9HFwXY8d3kKBR5IIMXx1
	 GT06+WSwl9iiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96930C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925299360.31734.9840447015963089997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9d12c61214a4145ffaab47460e037ac256b991fe234ac6e2e33ad367fed8fb
Date: Tue, 11 Feb 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739252993
