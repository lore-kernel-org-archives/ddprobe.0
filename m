Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393F82C3244
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748930395; cv=none; b=Lcy7BET3RBGIMEd6qaDblFtuEwPDiNMu7IN8p/G429B7usqurxH3H/N8PSLzvDV2hRuQDqR6ml90ZiCAG1oddobrgiGlplE/0DGNXUw3ULep6eqg13B/Qa+d/X8sYX49u5szoc2Ly5HWuUYo3nK3Egd1pBdEfS1EJcr/CnI3Erg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748930395; c=relaxed/simple;
	bh=4CxcrNT5hYOIlajbONYHBKe8rBhcJuagrDe2/GHfmUU=;
	h=To:Subject:From:Message-Id:Date; b=qTVlbDtP0M4lqEDQEWJXg5jWnvaEhnFf+PAwA9uURZY5cC18poBl0H+edifN/hjtz3KIr+WypJiIUCHQKYUIKw8YIh6VpgnHh7SsGfbz0Uc0RoKpNz6v0dwFfnyi0uGvxlRI1r5PdzrLVJ/JvhheehOJeVaCO+4mGiphkj4iZnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHDvImro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHDvImro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A77C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748930393;
	bh=4CxcrNT5hYOIlajbONYHBKe8rBhcJuagrDe2/GHfmUU=;
	h=To:Subject:From:Date:From;
	b=CHDvImroeAbeF9QImRwoGTr0b6yV9mhMmLAor+QzD91MPQeBAEPg02VNShce9iLte
	 Vo5tyOyGyZIm8NTQZ81/3x+W1nxyz2fErvsWnP7T5hNkCBPVMC4/LAm2b2URp7GTDm
	 0XTaSY83ej992G4H2eYIebGezIgIGDBsmMyG5tD8iUzcgKISzbViPsOSMfVPbPosNE
	 VEgo06TXN81AKxzErs35zgV/P9rhcd823HkI5grE+dvabcQC3RacuerNhVrzMJM65Y
	 sw8eMs/eRAMxrOc9Fg5bdZa2dqngCSgoNa3I2NQ9OjaZEml28hwvBa6Cy1Y1F7/Fue
	 4j2fraczSq13g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F029C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893039357.9529.3354742414875199407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e359df952c5d5e237c61aecc89cf4a81a6145a2512485da7aa3dd3224078ea70
Date: Tue, 03 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748930393
