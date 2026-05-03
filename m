Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A2129BD9A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777834654; cv=none; b=FxCWzEJAtds4H6VNzNE47ViT98H78PYM/utF04w4NYii6al2PISXIPZWmmOX1MwFUfRAywpjrCBcVPsfu8Ze5r0J/kl5Y71e3yx+YhDrkGS1idnGqDNABcEmQ40pQJUfyHejV/RCke8IRg1IMULSU1Bgms30Ht+6f9TK5Dtuyw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777834654; c=relaxed/simple;
	bh=zR723L3cf6ofFRCr8x7DoxXLNMKueRE9QlbzRm07fQ8=;
	h=To:Subject:From:Message-Id:Date; b=pXXSKnnffOiySBgZjSeeOKRRE+vXQOqcd6IWs1iqAWpxGdLDWFLnl6DPDdrzZHtCY2Sv0Lm09vMFjl5e3SWDVj6j+Qq4j6YdJiEhq44msfdVcomeY6MOB5oM6B3rOMBIeZ1e6NOn2BGXwoyBLf2/6brM7u7TVD2yzV44mcSZCnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXeKlYh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXeKlYh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E09C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777834653;
	bh=zR723L3cf6ofFRCr8x7DoxXLNMKueRE9QlbzRm07fQ8=;
	h=To:Subject:From:Date:From;
	b=hXeKlYh2gRbd1wX5vXfHk+rolsMN2nqND52PUa6mN34evDZbSYXO8iF+CNvZ7FjPH
	 tpoqan1Wb+JQ4eWrgZzrYEpajVPcc21uIpUzFXYd1bjpjO3vQ/flt/IaqdxymyCV4I
	 zIGuLRjE+4PXtoTDhpF2SHF0+LZPW43OhgSgVlYn2LgZqRIbuqyWrqKhnTvdRlpEGh
	 NcwU/4pSOuGpvjqOxfUzwcdxG0OLn+fCOYcKW+Ir7t/AY4kOLY1qou8FIWYVw0MWwR
	 xunq3h8KTFfVwAjOohG0/UJEAYc+yoPW23x6cbQ+5Vd0s/djnDxcWeq1EwDb90kWh9
	 oXezZ4OBZhzzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E6FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783465368.31427.14101603518891908480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faacad401063b289e759656cb8b2526016b41cb089b70925f8f4321d122207a9
Date: Sun, 03 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777834653
