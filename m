Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E6B2770A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771743894; cv=none; b=pZEarU//uzCW1oqegv9c6LROsBmmCE//5IKB+4ELvWzf8SWWxy53FEiirdWCcckBZaP4pWpIY5ZKO/QHBwOmWbxutTZ5z9rzs0jFmVteTegCvtG9ndUoXIcI/lnxaKkVsi0zxaDfKfjjaQMljxQlm6rIpEnK/qHqoSFjxH/eUyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771743894; c=relaxed/simple;
	bh=wnwIZtgzqPPSGy8A11EQGDsgjEeXk3GSYqM1E5SbFJA=;
	h=To:Subject:From:Message-Id:Date; b=m20+ETTsmcMlxWHe5FnMHXV0xSdTKQX9/cNem1aAeMHPlI/TTOdvfOzXYo5Zrf2cogif37FyDZd0PqH7fKox5j5oqcGIrt/AWMN+twhSN9sK4Gx/8qEeJT4KS2OLzYVQLEqwymQjjZQ72aaVXSVkE3lEE9HkkgNAQuOLOooK7Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA73LlDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA73LlDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3564C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771743893;
	bh=wnwIZtgzqPPSGy8A11EQGDsgjEeXk3GSYqM1E5SbFJA=;
	h=To:Subject:From:Date:From;
	b=pA73LlDPSCZzjdm+pEZ88qB9eK4tqmvw4167IoqFzD7WG5qjJwvR4kfsaWOH/Yeui
	 +/IkJcpDTGudRMO3PuIuqsiwHdfCp0SInTeY3/t8g69KQKSu1OP949nYBtVKZbKUCA
	 YQ1gABDZFiykeUAE6p3TUDVqAiexW/yxyfBGPJyN6oTWUEf3pNGuKcvgLhzTfQiQiV
	 8JWyM1LTwKAkBqBBWuldzd7B8CI47Kcm2xM3e6Gb3GNST73EIkBPVpOesj1nwRJ7Py
	 COlDtpPKyJuS2+EcMBKR4JCv5z0jUl/xvEMzxvWxAVRW6DnL7xEXHOvW7RbXGNVoC2
	 +bdPYuXK/Zn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14E9C624D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174389362.3159.13950233383478753670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbb4e6a9c91bd77a88bc878fe5b46f072332e08eba18d18c7a3a8b702964514
Date: Sun, 22 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771743893
