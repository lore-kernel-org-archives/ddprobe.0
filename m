Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E942E5424
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750957194; cv=none; b=LAMp5zeU4m9qz6fX3SSBkfB4OVGGiCXV9Z+3VEqYkCZ6kj5WbICvwnmCGWjJekXEQLbTHaee4f72eUxrrE1cooKnjnFFHqzrfPEcq1wylo27BJM+Nby99kiiSGVMB7oAvJhh4p3pScCbiucP5PZcN5Wlaok1ULJ/Y/rb9k5D4Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750957194; c=relaxed/simple;
	bh=kOdtlt22iJBYyRIWB65duoGcUXiYqMxDtO73k7tWTHc=;
	h=To:Subject:From:Message-Id:Date; b=Ri6SlhtUn7rMnW/VNdoHkY1pBxK+i9wR30AzLVzrN8GuZRBB+ESKYZLBIclcMLF2DCteYhaMqTAO2IINkSCbOSbdv6QiwzSzzcWMScVywYeBJHH8kBeexsDyp2MyAa/faL6CNA3z1XTtWK5/MmzRGAAqYUdDV0mCB3WcSop6jh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IusrhE4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IusrhE4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77C8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750957193;
	bh=kOdtlt22iJBYyRIWB65duoGcUXiYqMxDtO73k7tWTHc=;
	h=To:Subject:From:Date:From;
	b=IusrhE4YHW2VEekaV2IfWmsr7thdFXCdDAW0u+ZZZj/XPBBLcEet+HAxIQ8+jmUOo
	 b/5tiRfmY1T1pyQkUWRxuh+K/MD+tdf1ELMzc9NqLBpvs+1DZ34otvE5OzkZKLaWZ5
	 PwZIxmGRndHoZKF60Ryvd9V1Q3GWFEJEiSQzZZ7pzq7e8JdnMAMCg1fnKbBb1EALjL
	 TW0yR/wD8RR5PzVH0AyZ+URLozAMfrHnDsR0DVDu/2HunFBmG26K5VgH3l2GsYPEXB
	 xpU5wVUO7K5vsE71xhGdj4BsLmKP30KS+TA/bUlV0jJDivUczSbR/4KBTTtaWHYIZc
	 dUstlCNktvolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA8C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095719359.15972.11133545433741481519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2128c06f8a3200e684e5b081a5552bfd7a7b3312778566682d52b7b6f64f0b
Date: Thu, 26 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750957193
