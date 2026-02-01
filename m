Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A41A238F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769965434; cv=none; b=ELww+Ui/LcEhbPrpoYPBKaE3cK9/QdEorT75vi3JxsrCVjmG7u6tP39SJV7omB/MQI4Y/CmRgv5aEqXpWDYlKI0DT3y8uLfnxtJZf8OcLrbZci0k0MTMhAnBLvgwM+lBO4xT/Drps5CImcOMhTDQgFbxB+UoJ1AmcqaCukGDnUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769965434; c=relaxed/simple;
	bh=FJZRDIZgaS0LPnNqALt8kE2KUHP4+28jRnEYknjVrcM=;
	h=To:Subject:From:Message-Id:Date; b=qLvlPEFxlFc4pJt9xRpgRJueYexwcWatUohGWRCtPgNfoV2bgAEULEBa6O/6XI1nWQ2rAFagwR3P5BUui5EKUlqBKasgrpZ9Vj+mcQxrtM5Io4lsA6mC8w4a5kpUksDDfRxkFPxJ78MbRobm1MCi8qRt56hxnbmcSzMIBHqjlKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRFxeLxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRFxeLxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7FBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769965433;
	bh=FJZRDIZgaS0LPnNqALt8kE2KUHP4+28jRnEYknjVrcM=;
	h=To:Subject:From:Date:From;
	b=GRFxeLxcRoYIu2w9MQmOPWGjVW0UBhT4lIXpzb+f6Ge0LDtaFEfRJQ8RYhBX+T/KN
	 u7kEDgJ1tZaNtynDsWumKo6GAMv4H0SEsCHOemxguL751NlDwPzqE7RYWzTdnTQHvt
	 og+y7RF77t8iL4XCErWOOxVZHcg9RZ5xMrXti5CEkBZctZ298fzo26aBO03IrGIUV2
	 qd858QtaSab2bE6CSHtedQTp7ykCvwepPEqp03tqIKZgUSO9Bae0W7F/FnVbA8kvRR
	 KaeEHNfrel52f3+BfyHpVoKhN1SncBxkgk/A+scdcmMeRQ55Y9CQooFxpYgPgbWBqU
	 15DGNK/0pdowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3382E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996543360.10066.17928983732662660530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbce60f079c1f9fd2484cbb519b9b8725328d573845fb081b2e4c4c17f395af
Date: Sun, 01 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769965433
