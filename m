Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DFA2C029D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770888294; cv=none; b=pjc06noVA2lT5l09HxNeeT4zVzi0oa0MENPF3t8NCufgg6ngchCCZbc1ZoSTzuSKBimg9VfIQcT9D6baFzxdUglc242zgr8WAK8cxcFFcRNzmCXXEYQAFpi9WgiLXNs3Yt4+OkjGGUMDui5mabvu50CrKeV71AXCxtVJ3vIppjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770888294; c=relaxed/simple;
	bh=oH92sM06Ug8Nu2gQYBM5/ptjRhfxDkXxqK+An/3/RzU=;
	h=To:Subject:From:Message-Id:Date; b=Su2paFmU75P2Rg9erS0lkvUIApO2do9sDlDRzc0O9DC4A0dd9vmnQqFGeDqR9dDLueIEtE1ODUwfLD8ezziaU5mouxmvK2iKDyUmnjEWv2esI644ysC3NrEDsXrOF1qSVmvvPpfQx2TvqwB9OQ+j3nm4KA2yfIm75BTvPfqW/DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlC/5RNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlC/5RNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71B0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770888293;
	bh=oH92sM06Ug8Nu2gQYBM5/ptjRhfxDkXxqK+An/3/RzU=;
	h=To:Subject:From:Date:From;
	b=YlC/5RNrSaDgXWzApoYroJ0U2ft19OQu6VGWas/dpLzjEHwjEWVRpVxvM2EIDrEkW
	 51QCf10RwZmzlPWILGo9UdCtMVIo2ptNLDP59xgOG5izTH8QsYxIydl11AMH5CKD3/
	 d1KPUMlEAgHUJGB/meFGD49KUEpbtARJqZTWaV2QzqSCbUJqk3jLU0O1xFYUk4xmNj
	 G05CfNj+txMMPTGk/dns6ras9HeXX0JcOrTZgmoA7SKahwUWxbZ7MhEjWQWTs5NYXL
	 hBzWeR4Rwy6+VwpnAA3EnUnlzz2FRglFvsou/hR5PNXXDV1ATMfQAuOiBik/nh54ij
	 f6mpsT/zgcrIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15DBEB48EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088829364.9728.15290222900493108979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603a834cd93038f4b6fe71f39926037707332e9b5abcbf726fa67a6ffe00a868
Date: Thu, 12 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770888293
