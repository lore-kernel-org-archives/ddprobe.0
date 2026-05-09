Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9271E9B37
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778337454; cv=none; b=aKJ1p4b0e+HjaP2b9tyiQ6ZOcqX0ffIfaZ5RbDFE+JJBB8l9QZwd2MwdwnVKWGRp9mchGcNv1JJYYLXpNmLUI8DoQ16hN4gHYR0K701NcByeeLW97TafmEH/L7rrK5oxha4ZcdQwetAPFShqFzHQq7muPAxTmTSyaZBsBue/J0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778337454; c=relaxed/simple;
	bh=C/BFT7nvEVX2+Pyy4ZY5azoqnT3QE2Yv3W0sWsTUdIM=;
	h=To:Subject:From:Message-Id:Date; b=Hp3lreEH1pflrMXw1bkkVW6Or+7QfllgXBBWvV7mDISR8D/t99qblFYH/QfAQHBa1tnh4pVPFn/z2U8oR1DjrSkxx4+WafYwNRuAWXXqwtBXWfWCLiOvCBeQ8o8PpKi4JK3p5r2moyEVzRAsRyc9e8pVwKOmWc4zrVT9a0Pnjzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7285knR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7285knR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 001A8C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778337454;
	bh=C/BFT7nvEVX2+Pyy4ZY5azoqnT3QE2Yv3W0sWsTUdIM=;
	h=To:Subject:From:Date:From;
	b=p7285knRlM+R/Ep+38BHkITKE/yQ8OHPyD4PIoOtB6NWICJSYyUhR6ummvF9MCtZd
	 vizfU4RnkTCzpG+LpUJipsXadVZueIlUxl95nwfbZ+91bbPWf2GpSXd9VU6F3k3q7I
	 2u3/tgg0IGfPsJJPhkypbeEo20x65g8sIzgzImsR97XxNH53DZCDMI57m5GVLiaY0v
	 dPNbb+0UPPnK7wO3NxpI0Fo5s4zLI1Z9aJWGwJtj6tlYMGWSUh7RHWwaBIeSq/lu2l
	 TEIo5am9dm3lktEjztWr8zZsNyCPiIAnb1vn0hxl5qxHylv4F7y62Kaj/6Y8vdUnHp
	 yLC5qgkGM/1Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CB5CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833745377.23904.13527031791031378275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c14c590d578ad0ff0efcd8d6a26b23057869e19d4e890e4047dd07dff1f8daa
Date: Sat, 09 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778337453
