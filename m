Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D225C81F
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752559794; cv=none; b=aGDfsFP5ah1HrUngMQl3ipGxDBeclsz5VlUCQCJBmEP2UZjK665Yi8ZC2Px1f8XV63F7hxujPNuzc/H06f3A0XarbYcdN0+F9r2N+bIanNJMKEebVDWxiCgMWNYsqEuYc26lmWB2yOCgOs6H7KBcupRlQXqx5NgDDa+GRhUXilI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752559794; c=relaxed/simple;
	bh=qKAUbUzVGl6XFa5rgEOLpBdBcpvRHozzbP8nm4/G2nc=;
	h=To:Subject:From:Message-Id:Date; b=haf/MeLQBk4icb9Od2MZGTSEnJoL1nPVJ9ynZ3JBRX9iyKPIIh/x7gWfLTzOcziIqNK8tCoebs8GPtUjcQw0W4ywmwHNWkZv+tWBk+RZnU8xY8PplsbCwDRNR2x50ybYdN8pui3g9p5AVp4UsFoRglPfViL5kWOLvSlmjfHVJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivDNVGrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivDNVGrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752559793;
	bh=qKAUbUzVGl6XFa5rgEOLpBdBcpvRHozzbP8nm4/G2nc=;
	h=To:Subject:From:Date:From;
	b=ivDNVGrQDai/NUiCIeoy+O+H/BWSqLgknxYZ1hNV5odx2jkk4/M+E8Smcd2ERW7Nm
	 13bM13yPsr14KkjWs/zPnEbf/JMQdS4Sf7kfWiAKikBG0FGx6k5LIL4ZfeSBglq5VS
	 lmg9sRwL25YS7KeIa/m9o92bSdZt2dH9YDwXIZraghCKL7ljO7K2sGPfewkJmZM6lj
	 0wGhnMin9BzjqBXqIQ+EtZYuhDetXNIgg6Px2EX6Km+EN36dbQL2yBcXFLbSlLd385
	 K4yhIT7C4SfqlzTtnkRYI/I8j5dLLATkEiwnk9oPLMzf3Gx9Y645fhreTSE7nPSZmJ
	 yIHTxUpA7nrAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90526C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255979358.25281.10734783582681351855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9a09d5c159c5244062de1bd594b84278a9581852cec7351ebc612d215aac6f
Date: Tue, 15 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752559793
