Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4724E1E3DDE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791188434; cv=none; b=dybJcM28EVaqWdYvAZUHcq1239YPdgSV2ntHpnObXYpbZMw3SFekwEk4pPN0N7u6VYkwdh/kAfQr/6SDIfq5JGEUO2pbr2r8sqOY4q0v2QrJLiuoIODsMpHriH5WZ+plS1vVbKhGvTJrxt35ofoMwQeTBkK+jWwhQ3w16Nz63O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791188434; c=relaxed/simple;
	bh=7p0S+Meok8l2TiS25yJdGZAp3bGqO2R+Ftgp7rWoTl8=;
	h=To:Subject:From:Message-Id:Date; b=KLcUx0Qny4lz9FV5oNt382xWgWcIZALDaoaim9/4G0adOCWHbFDpgFTSUAvxY5F+CyzvfSvysUzDLHTLkyrJIYBs42S75xaKb8R/kOdAGeZ2TIG0QzGQupnJ9h5xKDgvo6e6yOCEZVKKGFm/y1CnJozZf7/3oVYfIJ3kPjo5eMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz6HpcF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz6HpcF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791188433;
	bh=7p0S+Meok8l2TiS25yJdGZAp3bGqO2R+Ftgp7rWoTl8=;
	h=To:Subject:From:Date:From;
	b=Oz6HpcF98bYdpFY3ZVsRyzzvCFMeybTgCyJYAK9T50HrkFC3/CvO3KcHztzGLB5AZ
	 hkwCROWdO4dtTW7RfZ6Du4zXq5cWUHn26Od3gkx6UWlRiYeDZ8bSt8X2uwiU7WRnN7
	 7deAekoTKllm+19O2ThxYZnvuR2RAgoNasKRzFn1yLRTL0Cm0ZzQRrVXdAQYlz7v7u
	 LivXwcKcj1wKy+d+TjRHk5FJyPTcRKo0cM5GRD8YC1HSYzvf/xCBMLlchsls4D4Xlt
	 0jxDV8oDobKs9FBrVd7FOYnXUix3YwzKvgV3GeCKZ5LW1YjqSQ/YaQa3lyh8IvPFEN
	 TpHS/VkGi/zuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC40CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118843369.20134.17634313966479055397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1883a56dbc5b5969126e22f680703f6b5863ad83e6be787d91485fa647b22d2a
Date: Mon, 05 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791188433
