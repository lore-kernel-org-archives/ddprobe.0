Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3F1D5AC6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754816994; cv=none; b=nwVbaqk60VeXT7uhSus3wSH+zgzAvC03uTYIoPzEke08CZYNjdMq3JV3XZ2Wn7NroEEXGDIXYmwupen7PdG6ncbDVGomnV7Cn2IQdkj93ulmANPU57PGAKDW5ZlKDya4Xwo5L82CgxAC0ZTuZZm+m668+o/d03IAU4A8p4aYF4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754816994; c=relaxed/simple;
	bh=CJNJHdRQvf4i3lDCzHRIkmbzaJBbJiXhDcpJTCEu/SY=;
	h=To:Subject:From:Message-Id:Date; b=lre+hY23JAgPxxkuiQF4MyWpX0kPCPXkEg7QunKsjJHQKKcYGKAI8gL99G4c6h4Z/SKznSNV7vRlpdP+iKIBFTQLYC22781NhIvVgCpWtV2PQzBiU+rFyOEyJbs5lsXu1QXCiIhdQkbNDtq5m/Jb5tW+FDPXer68ba/lr7yex/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuENdqC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuENdqC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6070C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754816993;
	bh=CJNJHdRQvf4i3lDCzHRIkmbzaJBbJiXhDcpJTCEu/SY=;
	h=To:Subject:From:Date:From;
	b=TuENdqC01La+gG1gwt/zM1fhCw69tyRMhc8EkaHYWs/xyqWxtpTmHFJ9XEroJk6kx
	 yhQ2ldA3RgAD/JGk+a/ACcJOvG8qfg2ao1MWJvtXDgIpg7vaWMTdb93ONzqn/Ew44b
	 uvEEnB5L1dliuCwcZugqV8rZdW4QhCpww7j0Pj2bVqcqv7xiH/3i/TmDaWXuap3esi
	 zo0fh78q5uM6nMD6f6s3y0/AXsyVzwz9WtbnQ0y6UbVULYyvv7ooHP17nkUTfswk+E
	 KZjjsdQkaJ4W790ab7PNLclz7myEUFJ6i1+ZOEz/FsSGA28wBXNtOB3DxsU3RlUU7F
	 gX1nYzTJ8xoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94270C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481699357.12549.11286099897343893923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a1a0af2c20f1f7d8ab519315ed35998c4598103dd91182c20f6e62f052bac5
Date: Sun, 10 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754816993
