Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26663187346
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767297834; cv=none; b=EJNed/vckx6X9wmce0feSN6P8KyQXgg9iDRqntdAnMs8h88Y1K/Tfcf8z41S970qYBRxyJwXzUgiYy3TC2TUIQkELN7DaD2AZoDXwaiOhknISzClCLcCVM3mVDl31g+Y1Tr9dVnbFN39VrjcEW4J56dA2qFyda0ZJ99rzjRjpv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767297834; c=relaxed/simple;
	bh=X44fIGEiBglHXYxVH1XFVrsQX65P2Z/v+UWLrlkOeC0=;
	h=To:Subject:From:Message-Id:Date; b=cXe33axeIlou7vGjnwo6Bb4+GjJpdKlw9JUnSZUoUlEf4Oo5atmQ5SNlwRyTL/ZGrH5WuVlMb/6axpzSIlhpJj0xLj7yjvphOe6pQTuL2bzJnq2iU+F5Otdz9BVrPDv7Yl5MjlRJEUXpE+riD2RNBoCfst0SlSngMEqJLqcyPOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDH7Ho4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDH7Ho4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767297833;
	bh=X44fIGEiBglHXYxVH1XFVrsQX65P2Z/v+UWLrlkOeC0=;
	h=To:Subject:From:Date:From;
	b=SDH7Ho4rOAIutnk4yaYytLxgDHhWkZx3E5JW5YESoe65V74b5Xf7CVCR/+qD3v+9h
	 8ggjv/vRPgj9CAZsESaeeILd5B94OX4yXj6Rj+iHPfGfLAx/hr7DGg1u/+LFmbCIsI
	 z8s6r5d/ioSLFM5RfK3oeXlbsPC5qVEee3dSnzONsEHc3SUm4/lQgheWFd8QKKJm/m
	 tDiRheFQXbZ8L4WsScYB/DGATmaM+Ka+ZnDuQhpnSrySs2SqOMQ2d4EOZAaVHG2410
	 ouldOHDDHJAXz/wW7t+U4wMq9WL56kH6YwtEYMl1U4nz/FXsYUr29GHN5xk/48iN4O
	 oW3ns5A1VH09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C32EED630
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729783358.19730.1424734903877051531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f45581adebee135aa1a3c213df2c74e9392f2cc7aabb5e41406697c6fb5e3b8
Date: Thu, 01 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767297833
