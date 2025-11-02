Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302AE1DC198
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762120194; cv=none; b=Gtj0rLr2GHIn+Q22HNXRD6Z+K3kv+NbtQJAnwqW/reSxcqeCPpasLPYUU8QdjTjbB7r66NRfU9euzXlPLKEmmCgagE3LNcp1B5UxLs3GYdnbETHk8jenBsyWurSFsaKzrBlbgTj1raBQETDgmGaGJqffjfbc5YAyP3whHXjRMCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762120194; c=relaxed/simple;
	bh=/cjTRNXSx59ZeG3WMqScUwpFXxTCOM9tFPh9U+vJJ88=;
	h=To:Subject:From:Message-Id:Date; b=hbWpqkRvE2n2woBp24JbtEgJWR4I0SD2IyYPB2+bHzBjRPJS+752aU7cCShZPotazb18q0Bjj7qTje2qT7agapk0EdgPz6TeKI44ywOiToNK41CyqNtkyXCfucpg/gkkthY0AyyHgTGo7apoa90T+LC17QJXGKn9qi/9WMpb3AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbprFAx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbprFAx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4662C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762120193;
	bh=/cjTRNXSx59ZeG3WMqScUwpFXxTCOM9tFPh9U+vJJ88=;
	h=To:Subject:From:Date:From;
	b=nbprFAx4kYhO/so9OdngVaASYAsow1uXWyBMoMebvyo8QIpTvKgcfS1CP+Fgs4+vG
	 hf30dYMxcJL1BjOmN1hKLbCtFPMoOPyyfu8RMw22JsbzXGky6VBY1ZjQoUFlERwQpS
	 b7eEhyJI9amHKyJQykb5C1+AD2ksxtmJqsJCtl0zkK3mKalAkC57hpmrL9dyiwJHg8
	 lBg6th/y7wwip8na+6wdbp7+HwsW3SO93f+XgJuurU00jvWyTXmZJVqpf+Fng8ttDA
	 nQEAjBuVfB68IJsRE2+pnOhNYTk4D8wx5+7Jp6iaxc45cZO3NDX8GceFlZGLUddDiA
	 HPts7ABt3B1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AACCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212019358.10604.17380094844561307643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3d873548db6b7b664d4f5efdfab6fa58aaf1e3006d72bb090ee299e79fce3a
Date: Sun, 02 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762120193
