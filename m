Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B12225785C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782413854; cv=none; b=JuJ8NiMSfmNdsR4kes2iXgvRs/MQVvtfyiLoh+58hM3Aqx0PFkR7AXRKZ/t7/Cz+wSejlnu2KWYDMsaumSIpJy9NUtACuB+yEkVeR9qarY5Pafs/SXkf2gMHl2ovY2lJkAnM43JjH7n4giPqOYQigCtD61vrhb1E2vKlVlN91C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782413854; c=relaxed/simple;
	bh=xh+rJmhmVnGcxsGNXB3PIfGS27YLo4mxrLxLFu8Qcbo=;
	h=To:Subject:From:Message-Id:Date; b=INuuttsHUpUMZebE+YPyL0LBmMhdAvrQS95xs6YDX6KqPnMlRX5uA4QkTKZWSQFiIrjFIJxTmAak+oVVbV4Itqwn65YeiomsRWiFiApDW+8fRlFqLOam/IUKWfIiDh4g0EAPVWwS92+1NaBPLlrZ+X6a/3WsTWa/metsiCi1Tl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxSEEGlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxSEEGlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0375BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782413854;
	bh=xh+rJmhmVnGcxsGNXB3PIfGS27YLo4mxrLxLFu8Qcbo=;
	h=To:Subject:From:Date:From;
	b=DxSEEGlL8L/X0wq8w4vtBB/3UE+9Ld4oNuXij2oepEaop4myjtRR3ebIkx6TY5lKs
	 h8p7VGljHGGArINDKhhuI6M7xxMq/QshhKxlWM9S61NCfWeV153jQ4rOFb1v/zbXl4
	 yBbB0RtkLm9s9XknjhTbnWgaplCR60y1uVxxRyIYQjko7Qd86TCo7YdQhmqpHSWFnB
	 Gs4kvW2+JcyICYfkn+8mfNzLOXmoEGgZUF1CnRBU7dDe6CmFd7aPDb4xSoG7aeVYZ5
	 Og9t6G8kSW2LCHLSCtbE9wL4mgeTx2A3PUQmaZEAz2pwYhN/prKHcXujJZHHz0qEvW
	 xWV5ZGr3pOdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1A2CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241385372.13610.4355248613639687827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd23e25ce477a0b0c89b92d5ddfe9bffa58baf9a6957dc93483f20754cac0c34
Date: Thu, 25 Jun 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782413853
