Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994D231832
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779324634; cv=none; b=otgYNo0ruViK929eZOoDypqO+6yckpxdPWqN3s8YGV0UJ7v0E6czp6ZzTrzOQyt1d6pIqPuPAwenPYplEhT2+YJcNCChwCcnj2oatdGuxf3JDqiq1HQ4r5UuBn20OeY0w3Gh0tKRWU+/uq7gtmdYuQ+v64keV1cDfdDe6/Ul5t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779324634; c=relaxed/simple;
	bh=aNla9NGwuU567xregNWe2JPhgwuztlJ0c3wP1T6CKUU=;
	h=To:Subject:From:Message-Id:Date; b=hbW8tdmwm3QDtCG4DCCQv4zatu5VpKisMRiGRX4Zae/lqGqtGVOTc4p5Md6CRaBc+xyu2QVqCYlBIZGR+8csxmZLummfctlpZm64mgWTVPYunrZvJyAhggfJGBozKTlLEdTX7+6CtER7r3s9ih+S2HSA8UNy8zvBRGW4rmBsLoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUUY6cWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUUY6cWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B1EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779324633;
	bh=aNla9NGwuU567xregNWe2JPhgwuztlJ0c3wP1T6CKUU=;
	h=To:Subject:From:Date:From;
	b=DUUY6cWn45rVkme3T9T8ZqvbE6i2Lc8/H8RUi1xi5GVIuEJ0nBfQUAdfR6kgpM/EL
	 0ZWdcbx+jyQ1Xx2Vaoocdbw8aM/3Myqd4Zo11792ZvA+lcth1PWIU/Fr4Bx/F7VPil
	 P/USd1n01Y/ctAizfUB/NvSxgd0WqumPOcDWp7IPXb6wUa5ZFa7PpYgXmXkCHkTJUN
	 715h5EeWPtRLbXv2jMcBappzLE6E32ywq3hImvI7mZGn3cjYZwsunOhne7mYv1CkQH
	 Fm2jS51/IrOYsf/2ga6lOiLn/e6OgiSJTefWPapZufZ3PmS+VSaBl0BgQUF1AY/ZvB
	 2jn3XpukF3Yiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD647CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932463370.2469.6308635023974544366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64d1337abaf81daaa01d037605b28282071c6212ab532a8846e2ed4e471d3f4
Date: Thu, 21 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779324633
