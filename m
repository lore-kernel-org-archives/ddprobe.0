Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0AD279DC2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790813434; cv=none; b=nJtvn6f+MhB0XcKCD6ElNL6JqHDAxfp+/mk7XPap59IX4oTxytwQZ9a+UIAyY/3WXZnBIMV6/+KOg3ube59Ov8xOzraXn7j3LYU3yP2zRyefgNsjQIimBcR0KuU7R4DDOTd42gyEHnzRF1iqhFCEtzTpp2fjybwVfVLLUKkzUSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790813434; c=relaxed/simple;
	bh=+O3FRo0BaO2aGfmWjvs88A4LpQ0M3WIS8Chonq4hAOw=;
	h=To:Subject:From:Message-Id:Date; b=Rh889fCE3z+uidXVeJuxcELj7Iud83dfC8d313C8whdFRXoegjd+t5xBjWDVkb/DaTg9dccG5QSnWY86dBvSuooGPcRq+Z67hLiPwdJTWYM+PJLnpIVk99YmtaMGOAiVRaiHiUbFTmx1vjz2QxeM6XZAgyHYhKxcCLfalwpLs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHPtuqni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHPtuqni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CDDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790813433;
	bh=+O3FRo0BaO2aGfmWjvs88A4LpQ0M3WIS8Chonq4hAOw=;
	h=To:Subject:From:Date:From;
	b=MHPtuqnipWpIeCwuGJJblAqCA3EsbhGoNEaYQOg+cQtgijCEq4mmefAriX/ggxWwb
	 RHs/+p9RBRGCAbspUmEjQoztIVQWC+qCkV/RNLoILC9XoROemraKe8fbio++EfP4Yf
	 KUM8CywP6li4xTdiRsdP4KY2ErL6WrdXl0MhMO/kZ+r0JO5YKYngZbQlaN++vHR7Ky
	 LenIgYn5aHflX7WSIbDHPDOkY3DFfioYX3aF5W1dbagYzN1Ck7666eGxl33uWqaGHP
	 2P8odGYz37IcdtrAoN6GU596zNfdwX4KwJhhmfmFxngPrmeOCcZpRkGge4bZoUM7HA
	 iAlni+ax+BIkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1267CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081343369.23856.14459064001483774262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214bbc7b07f2c925545d914c42cf47845344d996ed55b8448924312f4b8adc39
Date: Thu, 01 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790813433
