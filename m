Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3AC28F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756691995; cv=none; b=p3UvOW87e1yOjxc1MT2pS0wx2yS2mjbgT0eajitvWP27EE6gFP2CCtAGP+IsDPqN0NuzBq3GoYkdTQPMQE1VwJIinST5ezSjcwregh62utUHaDhxUaNhq+ghdXyPLW0JLN729btcUnwZ349/B53INOrwEB0uYaVOWlrcU/Tqlng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756691995; c=relaxed/simple;
	bh=zhfpLLpTxxRUKma2QnjWma6cn0qnWrnQD31ELFbzhUw=;
	h=To:Subject:From:Message-Id:Date; b=r3nzqGlLd7njzJPcvaFQrXjIQ31gexIJLN06DNAOt92CxRNOesLhx8b3Yyy+JKmZE6BDVerGPEgLx66zqk42PVxDl5GMLiZvGP5Anrq3wLpH66LCR4nRG9Zrq36ENqPQFJgQoMI4am1QtF1oiHpUYIo5dQEOmCQwX1++RQWLMRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3Lf7SCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3Lf7SCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B3C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756691993;
	bh=zhfpLLpTxxRUKma2QnjWma6cn0qnWrnQD31ELFbzhUw=;
	h=To:Subject:From:Date:From;
	b=n3Lf7SCH6w9QmkuiYVIMYHfs7YqkleV33JTrXoH+l/AupZhzDSFGZBxy1rZRHDad/
	 RNghNVf80BWIMH6ERwKpV/j+P1tU3WRCwdUXwZz010JtWLdVDWh/9VQvZVS8+XoUrT
	 H3v69d29gqspQ3KieRKD6n0P4MsoO2HgqaloXCuhVvg0BWlgn96HgLTUaUKwo03pkC
	 RiN7aXeuUvxyinjl8VBwgxNFhAOGUPuL+objFjGl2eCArMk6/MWhJzIYbPK3rKb7mh
	 Bp+LCg9bt0NmuX30ulfdU/8GBZd3A/mXun2kMQGGC+TJ3FTNcoSpfQW4hYH1z2kJ8p
	 gwhbhG4TlzxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A89CA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669199357.5587.11527830475776333867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad02b1c01a3d6def136b79298048df658cad8c6675260520714713a79e516f4
Date: Mon, 01 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756691993
