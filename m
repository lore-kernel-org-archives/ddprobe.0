Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210062BD580
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767579234; cv=none; b=LOki4D/ri+xf2fq0xE/bRlgd52hw6Zam1p4IIkFCa0JfugjGN7utNULOKB0uGalI1KfAR7qfm5XAqrzy+LeRO+jfOJW9ugVQ1RXEKZhNhhGbH+j2tCYzclPKvCpKmT9lqHB1u/z3NYAA+PToTRGehLDPvTMYUwekpBupNUB43YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767579234; c=relaxed/simple;
	bh=cTR5JTmqU5539MW7GB4YZA9ACb+kkJGghJzjrn9yG6k=;
	h=To:Subject:From:Message-Id:Date; b=UZb3JVr/Rl2/CUTEBPZuihfWz80WF7fsf0AuiMcE/worW5sAa0PKiupnAAnrzdExgjudAvXPaFkzTGDC/NuMv08K5g0tTz2CQ07YCN/6l2DRyp9Z566OzGpWrFFshqyxAWC95dBQRL3Ea/v4KKza6INw1ZfP66qzeJYaRzT5WZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIw1L24h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIw1L24h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B3C19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767579233;
	bh=cTR5JTmqU5539MW7GB4YZA9ACb+kkJGghJzjrn9yG6k=;
	h=To:Subject:From:Date:From;
	b=YIw1L24hUY2V9B0kuFIJYIH+NQR6+91WQzo7BvuaPyd3WJp8sRH530rStpNrQLwlB
	 TB2FzH73gX6mMK7tHH3ajGJD8BmuDIkmlSeVpeZ8VHC64133aTJUvFuycpxFykLBuL
	 FxmFnUzYDau8DKfnfhXP/JFbhiRa94q+8Q0lCBOT7ZEWGziY7r7l3ujq6tSX0HI0wR
	 SO27sHH8tqTWOZUjiAaRg3u3NyTclmPJ5WkmpMvA68KXvywfhhAqlcFEcITzcnr0TN
	 sMuKHwL1tRm3JoY9LkyivUj+QHoSOnYBVnnur4G5BCS18uebe7zyvturmzliErrvHt
	 gbvpreKM4KPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E0AC2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757923357.4285.7121839686267570758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391023f5d174c23f9e4b6be567d92a46558a3a97eb2573876165c0c058338f95
Date: Mon, 05 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767579233
