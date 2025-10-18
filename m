Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346C8A926
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789994; cv=none; b=EqKPC+IZo52F6HBz3fUj5peEgEgwmPc1Kbeh2xOkCIf2xPyc9h+nwjFkNHa1zdPr/M5njg4upj4Z2h1u876m2pQw4nl6h9hqR6uEP73VSmoziN6jS+AdvUbOgXfaYQzJFWnO/kJdcqYUfjX6WyoiGvPMGBrSzMRtYhMgYkUPJS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789994; c=relaxed/simple;
	bh=KL01XUjPxC/CYo07zPu6RnXQR50UgM6lEQp7BGXyhNo=;
	h=To:Subject:From:Message-Id:Date; b=XxGOzxGevGMVpVvC1KpHFhoVP79d/8ZXLuB3RL7CtxHWCgk7GmFLz3hq2YFDc/FfojmpnzSL5+67STJro3/bFsl99yZfpCCXfx2KE38RBFufJvTENPcFtWizK6JCV4KnOdSst2iX7evlgNUP7YQsNYKxgeUMxM6cx5gYVzVZaNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDTTT5li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDTTT5li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D06C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760789993;
	bh=KL01XUjPxC/CYo07zPu6RnXQR50UgM6lEQp7BGXyhNo=;
	h=To:Subject:From:Date:From;
	b=gDTTT5li+VjD4RazY14eBykgxE36UDFd0ddBI4GXzRIPth3+QlztiUFi/JWYc2S7I
	 /hGz0pp1XJPKNRAHbIJA4KruXoBzVOLdjk2O6ZoOyMmE36qpzwfFVE7XGVzfo4i7iv
	 iP6l1XYqc0bLqw4EhYswCqrJckj4iveWecr8nHczL9FjmBkIJYBts7f1FNQ97khtvM
	 ewHzA6tOutzZJQCsOilO39gcV2Yz86xLeBPF/vEeg1PuTLEPcICQ7slKfwo1Zxk5mP
	 iRFbyawLj9s5vd48NIQso7cR6pCOv0jAa83W9BdzEULdNNM9BdQUV9nzMMjPUkIaEn
	 S5jUI2wvJa4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95650CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078999357.9610.10937858317875155740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6ebd22cf94d632aa004bdf7026778cc3029b685cc361525a9e6c3aa702a6ab
Date: Sat, 18 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760789993
