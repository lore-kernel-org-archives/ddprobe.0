Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639C2AD04
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765146774; cv=none; b=oyEyP2f4mKuuS7tHluzbRoJAWeRkRbJVa0KZ1RQ6eQ4Sx7mGwU6OZOfykC1bMmp6wA8OuwAWdmvNEepazRLzIhfhWK2KBktJ5CBsYhzoFwYiMCZrgoEaBihgYPP59YAo8oIj9ln9UhdOzzECWCa56iSxyCvD2lKhUdSf8nT0Eoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765146774; c=relaxed/simple;
	bh=H1lTDkp8uqzgq3ucnWkKVHgfpqT/+O/ijFEHmUROuUg=;
	h=To:Subject:From:Message-Id:Date; b=TOqH7NGoUCno58ZTHt1oeSiaZeKrWUxdA2gYRkbGy2gd4NeoGWolFyAnGECXNUnsBRyyRDw2PY9+9/2TiBDfiFS5h4qgtuSkA8IersPJlNniokYz3wL2/ayEATYVEyoc+JEVbn4xCa4w4CEokEKSrMNREjlWz1ttXjBCUbUP36E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiJzkDx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiJzkDx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD73C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765146773;
	bh=H1lTDkp8uqzgq3ucnWkKVHgfpqT/+O/ijFEHmUROuUg=;
	h=To:Subject:From:Date:From;
	b=WiJzkDx7ISRJp1lPa48KfwidlfKJTWpdYapoAusn75plIbTx3ylATHPgAENz+Wfty
	 RiRw45RWO8MyW3/Mex+XhFhmkrC53FUxGZXxCKfEnK6RiHZ2K0WlRgRSEnUfO3G2L3
	 sDkkHvICnF5GiTptW0/q9agsBRhCCEDuAlhr2plAWW0gxRlEmunkCMz44Wvq4IUhuG
	 bwoIPwK28bUrUA6AxVo4LM4vNUJtu874Pke4INgZTzXinMVMz4xAbNDtnKFLQq1+wJ
	 90Aham6vQKzylrcyDAZlGsTYdQp11xpbIg2nSyF/o0LyIpNBolLTsrqvGP8brlNtTz
	 vn/sB0hekv/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C48D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514677358.16310.15994265943526741340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9281460acff14e6b814ede83f8617f8d9ff3ea03603eaf309176b124e8b7b5c6
Date: Sun, 07 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765146773
