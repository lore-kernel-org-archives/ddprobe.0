Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4049333FD
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746689395; cv=none; b=un5GnLH15QDAarYrj/UhY7m98tFY4bSoYAk87ChEKkZNl4X2X+XXv1NWHOFjZymQeXVzK6CFjsKNkEU8lY3thYsW7EpuvWIwCO0GEzy1RXlT5KQNRdX8W1du/R3/R8w29Nb7fsiTtxKiH1LzJCvg6BGuifB7a00u+lFOttiqYXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746689395; c=relaxed/simple;
	bh=2CELlZpWFsvNnKNBjlIAMDZ8YiRGGDeiFmXB4Ce6OhA=;
	h=To:Subject:From:Message-Id:Date; b=KohiS3ASp/nL7iYHDaNUPBhCXMInEERYb1zo0jhbGYQOH7hOdRjS2FMC7feZZFXeqFPpYHndCLh7+T4BQo2Abq0/KWabuMaLiJORyT+NKDDGQlgVj3IK/731iOE+j3nMiUN4/5T4dNoJOEsjqzN2Ftlnt9Mpw1dZlbs/DmsQYzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0QPxuU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0QPxuU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746689393;
	bh=2CELlZpWFsvNnKNBjlIAMDZ8YiRGGDeiFmXB4Ce6OhA=;
	h=To:Subject:From:Date:From;
	b=e0QPxuU9rnE5NT7RffiRwa1XZ4AhFQyt4/NMsrgD9kbPRKKwkOXDicq51fcGwRqp7
	 hGlVtM8GgSMbpQ3aWxNFJYMfX2rTwKurF67jSkiufoaHjP3KBo/2cLBGm3IzYslen+
	 CIlOmz+LvZ9ZDCrG/nBV69/WMXUJoN7hidSGqSxBFEvlF6yzGSWsmfBMUs+iWuNRS8
	 Z1jDWS1SKKmrOnv29AtnI6qPro3uiQWeGqj3hwOhLYZvyGf4O7646jJ9Q2Eu0yM7vq
	 57ikvJOFSnBvi16XmQOqa0XndMDBeaX+iG2uk/7hiuAfindSNP0cG0XRFMQyJjwk75
	 UKEJ2C0jLQLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F703C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668939357.476.17424195220109608251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e2cf9574906acc7e56fb5f6fd6a0216cc4ff8875b4a67b4e75b578317868fc
Date: Thu, 08 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746689393
