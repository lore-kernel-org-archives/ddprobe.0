Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D54F3064A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773172494; cv=none; b=IW2zUP86vdS/LEdoMM7QPqp0XstdVc0S2jT2mvaBcdLDcuSPQJERjJd3rl7KVu8AW4DBlnpo/WDA/rVbSwtBFAXF5wbxRl2lu6nClbhyvgO5fSW9XbJkVGAEI6DrPA1eg5WmoMM02bFWfXxCTV7qlTCtCS4l+vZU5ckR79xU8CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773172494; c=relaxed/simple;
	bh=4hqTVLrHl1VuaKEjxYSRF5miGAllnT9/yI66AsexymQ=;
	h=To:Subject:From:Message-Id:Date; b=ZBet96bGxiVwI0i+UHCgMIrfou5nktcpeInHQe2lWYygI/OSQxjdfsPQ3dX74kKPI5tsier9b3diSyPFgGsI2tNf1FAaz9IElBS4zCCfcvw3gJezg1u6JXnQ+PETHokGfJv96QYAb0HWGn7jFojmlj2G5Ma4Pt2fVSNHLMaGBQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgvAXMVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgvAXMVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD7C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773172493;
	bh=4hqTVLrHl1VuaKEjxYSRF5miGAllnT9/yI66AsexymQ=;
	h=To:Subject:From:Date:From;
	b=hgvAXMVqX4nAmSWNVPMjT6JG9Fb5DBEEhXu5RthvKPis71Xq39FgQ69BjjUw5NxZD
	 GSrrro+Bu1E27fKgiysc4keL6WDuc77naV1ldkLZG9nxEahsl13V5B/XdQRbNVI9s1
	 xyolTDTHNq/eSnjdYffo1duCHRpY8YsSOKase6Bs2Cc+yEXT7mfQH4x+YYK0gdPPzo
	 f+kKh/fbIwPDhZcCwqKI7NoGx88YDvZ/gIJ/jEJ842Ir5oxKbyoMAD07gAV1VrnOJl
	 uY0DHjCyEMCRcijW/aiyoR2O8CP7+jAkWtAbeD5MH0kZKhSGXMKWCmHi0xqk+lgJpk
	 6EXmc97NBbyFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D4FD4F2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317249358.5846.17417600530648676953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03756fabc49418b8487dc13442416f0f6ca5a15ccc97526c3390b6312ee1e5de
Date: Tue, 10 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773172493
