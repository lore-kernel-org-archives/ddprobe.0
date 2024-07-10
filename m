Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBAD186E5D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720603583; cv=none; b=OJ/rpPIH4i2n8hdBhwJ6ueZ4rsjHLzW+QPuxSlX/iYr4g2v7p0bmM3zgMlCFYVhfo3Knyf2kuRBRD9ReUIFndhUDgiR38QfZgvquTiHynFNCbQ+npMkn5IsbiDcsPoogWgKd3TgSKv0rW3NoDvzLF4LCO3wIvzUAPvjWgf6yv/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720603583; c=relaxed/simple;
	bh=LAowgphIIYnmmHV767MBFzfnirejaKMlOwYrNqVvksk=;
	h=To:Subject:From:Message-Id:Date; b=Wm3JEWV+QyyPWg8U/H/+Epmo25zmEEBL0tlMUN4qlGWvlYxBUYg6sJEvhmp4jS7o179j27EHRd8s1uuFyKwYreN/Iaiu5X7DDPUISPYcPFgImQbb3vrqACUdBPmWVWb2TVuVJuQE3iBfCdh5xYB6TasrIgxYBuFJCPL6KP9ajXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8sLy56l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8sLy56l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D146BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720603582;
	bh=LAowgphIIYnmmHV767MBFzfnirejaKMlOwYrNqVvksk=;
	h=To:Subject:From:Date:From;
	b=h8sLy56lPMpcUPSFpyNt6nF9T3wAxCkvUpagAMJer4A1hOFPcQMH4U/ZRXsCNgwbt
	 2KPOD5NX8+Gx2B6THZN5MRttvGZcPm3C69IoO1VGeuLEqyu1K7E0UCnd7TMNf0VvY6
	 MoigJv6ltOmJNGyorZVDU60XSKCog9BMrx7WGmKn/PW7B/8r2Bfvbo6vth1mS2hifi
	 CObhq5zwZbv7ouK19SGt5R1C62dQzuWgWvlgqOQT6Ei1zmOnhItf454BcQ+23TVAB8
	 Sm1CeY2XwhgSRY4G+Gmq5EDCc9Bd2NrypxvzQdtnBo2dJpVhglBlODGXTfCFfOIenE
	 rDuVkRrNf6iGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD750C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060358276.1952.9540093257730163008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3ae21fa25923362924fcb47c72e41ee5a1bb1e6d56d27888033210ee50d571
Date: Wed, 10 Jul 2024 09:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720603582
