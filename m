Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD41B5AA
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724810154; cv=none; b=K46yEjhp/ZIReCDbXFTdaK9fDsGYZITnLa9F180FkyUKU3lBgKt4REOjL4ZVVCe30swftI49LG903m9RLpRVbSTX9gS43zjb1qvixpOKtOK/CqNxp29Qb6DAPIcsr3Fz0OhNLYbqnc6iemiLVpQ69i8g1yZhjzh2K2DnZg7Ja/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724810154; c=relaxed/simple;
	bh=H4jEy7JCPPeoibdrPzuXjWFiyE+DwYnL9VVW5dvLH1E=;
	h=To:Subject:From:Message-Id:Date; b=Yo6MOMGqYKeQeec5Ou3aKm2G/pOrH3meCM8+r6rOaHfkmzgYK+MZ+2fwi2uTJRktW8U4XDC0MjwRrBn7FaCeB8bbUmWOy75ruiPqMu+NzvW4NvjMJRONYUtFYG1LK1lfFrVY9lwKXuM8R7ISZZ4ucVlrDPzoStt7nStB7qda9X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JySb09x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JySb09x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA8C4FE12
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724810153;
	bh=H4jEy7JCPPeoibdrPzuXjWFiyE+DwYnL9VVW5dvLH1E=;
	h=To:Subject:From:Date:From;
	b=JySb09x0dfEBZnlVk/RA28N/6FU4Y/goLnC1Etgr+gBem9wtsqTIvRLCD9okFWkUx
	 vKR/DG2YSelV8qIl2RkSBRUtR2Q1p1BYvgmtVaP4FbCJ86d5WbHyCZv2KbLezTQuOs
	 P5sdE1kpQgh+o7EgLlmciHUdzt03gdKwswOQOEZF5Z3xDXYTCECzPi8RPW5nLnnJlf
	 BlVCzf2MZlXMlqQ4gdUcs5l7gFhuKr8xRhYbeHUoH+vAkuYlvukdE/Z1qsQF1RHmuy
	 WJvWA5QJRurXLz+fS9E3YJuVl1nGROYGBwPV2w07fDr+yuG0HdXGl1h9ZVqZqTQGQJ
	 Y+wevm0Y3PIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5D6C54747
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481015362.26134.152505505505666752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95693d6f8ae3ec4240ab4a36ff588c11b7854c99bbd864bb78ee7a5566ef0a5
Date: Wed, 28 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724810153
