Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B852322A
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778905234; cv=none; b=r3gMtW013oiQXw0GWTZl+awIWLjRdlgVjyP5ojxy1x998eu74n7/7K1Q9jaWO3NBtk+sFWXVUYBbUgXYtx5WmtAV+5/mH8/Lp8EjTfL4kMg/PWJvcvSP6gQjZyOBCfF0UPq8rSmE9BHB8P9EUyMnnj+5YEUN4lcMastZxw9CUNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778905234; c=relaxed/simple;
	bh=pMgNUUIyElbZIjI635iS8bUgX4eqqLjyNwlBjb2CPcU=;
	h=To:Subject:From:Message-Id:Date; b=FwO1qMSo+CpmuoPfP+wFjo4ZLDO5pCRxE9QqG5DTTtrh63HNRYk1RwCGaKzADcJHGOuhHECtDL/GFE7/lvvD3eq/1KPkkMF/bNmAkeMS8n1o2Dwheo+oVwUtczriRfxkZCyWPnBnujzj91/lOIQHGUttDDmYi3aeO81oFyztsnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Stt7J2kU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Stt7J2kU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C637AC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778905233;
	bh=pMgNUUIyElbZIjI635iS8bUgX4eqqLjyNwlBjb2CPcU=;
	h=To:Subject:From:Date:From;
	b=Stt7J2kUBoMkSx5yrEZBD9e7KTfold/XpQW3MD8ZLrS4A933L0jagb+JKsnihy9CF
	 s+r/OejMcmV/P3r2yxCuvPo5jS3t1m5Ke2kvlhQCcpai+jhckw78B521VtEcVhc2Bj
	 0+6ayBUAr+2XU0ImIYMfxu1Sh4FupdIuxMCPObQo8tXrY9V7gjWswOyoiHXOsdTxDl
	 5Sx1qGU/lH0T+9vNUwlxISc7oPghjnc9e/OGn4Doo5RC9Fl3X47t2nwgrqrqg+CfXO
	 DajSfLW02oE/QHUhZmxZIrHt4YtR73RTkqH8agGm17apK/JVsb6IdcRMmttm9VAeOq
	 Xvy7IlCW3No+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F97CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890523372.27659.11397640730422790589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eff4954b0fb52c9871e0df1d7d6194b13bbf838034d2ec2a0d51d7216ad781
Date: Sat, 16 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778905233
