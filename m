Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2DF3368BF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775276134; cv=none; b=f6mV9jAVx6k/1VO0Vv9ggrd2one1ly4R7Eba2Qs2KbD6h8Wt7jCRKBxlHK7fhnpDXUqRVVIBELzaakiBEOv7Xfqx4w/+gH1046iPsd3OSXdynpdmrFu3OVBQ0RamM2Dm7QHCnwuO6Rc1c3ENbkYQk0ffgmD9rP7ng6zPERD/NE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775276134; c=relaxed/simple;
	bh=ob7wAvWH2c4uWHTjxU2im3fBdA+DamgjdzhPoCwCrGk=;
	h=To:Subject:From:Message-Id:Date; b=Ea1Shy/5KJ7nQkbU73VoNnGVDegXTe7fCJyF0KccOfAbEJCxHYB++YU/Sr0ColyNtWc4KO0pPMo6Vcc/zgxrf6iIdK1Jak+K6bkc4XmyGZoA+xT6PKy4WqQKFsdiELk1zGd7PTRkCfQFA9UeS0s/YLJVLUuK+AmI4fVt10KyEEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2FaV+GB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2FaV+GB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C22C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775276133;
	bh=ob7wAvWH2c4uWHTjxU2im3fBdA+DamgjdzhPoCwCrGk=;
	h=To:Subject:From:Date:From;
	b=Y2FaV+GB5m8Iqvy2P1auzwKfQYUsSQMghfuAoOgppun3K0oAQp8WeTfWCE2FtDjYw
	 2/wWxUVPDLbiFtSK0ARsXLmrrC28bzIdiXrgSq9T9rbiyOfMQcybrsyPk2GHiGr41H
	 G1PLCcBkR9OkmwxLonQPZ19KWr6Z/yE2sSGaNoJyTuPwB5ui/AeutgQDipji2X8gWs
	 EWDb7iaNRXlRPcmeSJ4FEad4cLv5JY7keFCXdrllFGcsAdW3fFzPCckS0Dkys+Pg3k
	 W8VAdmxf6i2eslyXLAkTg1i7EyyJU+My58N8PWSIjLhwoSWpTNYrCPHpaA0AVxKoR1
	 aYoX3BdCmXXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F3E88D7A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527613370.21153.1307914370377999678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3842ba75386fe8ca733eb941ff5d6020d3e2cf5310d3fa89d82f48181570888e
Date: Sat, 04 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775276133
