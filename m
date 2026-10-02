Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508D32DC79A
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790940634; cv=none; b=g0kC/UbRhW15lVuRD8XeYyocfEh9dpzzxedwtXqAyErCCx12Bz8XRQLlbrbCJrPlHb1PDJUpCO8MeM5BhPSJ614iZvJ1e82es345ilWygVgInUI/zWuwOK0mUOlB6dVtsGFjaxtuqsNqUzU7HR+lTS8+xazIuGfguOBinSvE38k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790940634; c=relaxed/simple;
	bh=5Xa1rcsHVOHptOcWo/6ETBTV0jdGP5UX4kBfwJPYTQg=;
	h=To:Subject:From:Message-Id:Date; b=I70XFaqwcZIFL2k5gwF3ZIBauo9trkkijrdPX+XDKWih7p6/iqKZF48R1qpkYDwYxmZo7AUITEnFktc8Y4DP9LyoHendwfyNk1p9YC0FkXTW96YXAX6bBz7DiKeJCeRK81JsSeddVi/+Plm3K1OdReuUlutXknt/DUCUiiF/bck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBG5wvdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBG5wvdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB5AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790940633;
	bh=5Xa1rcsHVOHptOcWo/6ETBTV0jdGP5UX4kBfwJPYTQg=;
	h=To:Subject:From:Date:From;
	b=CBG5wvdWkMk7jomstXqL0tqH2+MaAoqVRs7FK/RyxdmR3Z+NDXjKEA6AflfwnVoYe
	 sNsfi8/QBMly80SnekooD36AXZ+ULroPgkW8z4QbC1wOYZPJvWahIw3hYAMItnczOt
	 lfo2TXGZhfMq1jrr21MMei7oz/e3av+Xszgl7s7lqIfJt5oynYMAm4VUDWlYCpmkfC
	 nfPfBC8fZoZOF1Gsx416lBw/cNocA8rh+4Wvj8aWY8nRASnvib8CLRo9kSPNVkL2Ku
	 jx6t9W8VL0kvW36YYCn2XdJuc1rLbREmaZYpUFqyFz5cXr5MloBu/JtxjMg/r52nZl
	 2Up8uQhlKpmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A82CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094063368.13125.5320702899052325855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0497d1366bc524ed958e557a88b2c7805dba897434cb42c240dc4b90e1d08660
Date: Fri, 02 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790940633
