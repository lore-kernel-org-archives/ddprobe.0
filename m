Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAB38F66
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746529795; cv=none; b=ZPyP2V29Ex7z88BCLA6O5F7qnDIclsZS1HxxiCfguf3nENAbYFsaN1Azf1PSCr5UN6QFicEC9UjJJbP4moa6n6fbJn+MUT9r9BE/+opSHfbuF0AjDt4BzhysDyRVicupaODpIA+UIjuaxAnXPUBB5la4jJOT6CpcEnzImlXRwbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746529795; c=relaxed/simple;
	bh=AvFuSJ5pxukINKBhM4Ol1zoihEgY3BEVPlABSGYtjsc=;
	h=To:Subject:From:Message-Id:Date; b=Vm8oKL0NlUsdCPhJaonAueeEdUqyrol7heoHLIZU+rvwW4tpxjFIZxmerrxk2SYX/hCd7fdLXD5pAOdhWoFGtTrgdoww/ENAYgAckrJNAzny2R/+qUSWOd6zsQh0lilyjMbNcaHqAoDiP77Q81DBo/mlIBkufv1Dm2y0baJW/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoPTOpL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoPTOpL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D1C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746529793;
	bh=AvFuSJ5pxukINKBhM4Ol1zoihEgY3BEVPlABSGYtjsc=;
	h=To:Subject:From:Date:From;
	b=LoPTOpL7hxzF6W0ZMV2fUoS0DDOUxEofV8cXOse8phCN7ptD4W4HrNxUCijGlwMnA
	 PLvZYJTlVaMkZyzPtSn/5H31w5Ku12qT1BSGqRcKUBI1HIlEQLGADFLKnzF/wdiLc4
	 8uMRD4MVO/yC2w9ZXZ/dersjt+ThJumP/pVTCoPmOJnOTljZSLd47dUQFCehsRfCgV
	 LHEKkCnqSenSkTu/nFHPiGRuVdROWZUhpaJbBQf+GjgOTtDj1HM5u3YRgtLqw9bjij
	 SA+jndY8tF/zYgJOR3NKb4acjVV6f9Y+1Hk+IVzdnR7PoLfo+2nCAZY0W3wU/57Wf5
	 YiuPuAKSkbYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD3C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652979357.9886.5059771034356773113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac662c159d3f29ede938aae84d67bbb29c04cc8a48ede8e9774c45758156eca
Date: Tue, 06 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746529793
