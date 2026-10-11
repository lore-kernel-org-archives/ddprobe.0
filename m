Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802C13644C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791708034; cv=none; b=X4QhjPavM29d/Dgfs/0RyF7y9ky5Sty9VBbYQBJOL2H5YDBACsOAj5ll4yK2D9bg9Ptl2HQx1Y+y3I99OmRnp+XmKOB4VNZ3Rx845ln0EC/a+o6PikbcU2CYvZCoVFs75WxvwpALWyB5LR1Jxw33ICYrhRdUB+xnwsLE7rr/8xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791708034; c=relaxed/simple;
	bh=ghZd7JbnWNGnDaOYyXlQjA9Y+BE9CLdht7S9v5M7YKc=;
	h=To:Subject:From:Message-Id:Date; b=Jeczt4+9Lmpt6dGEDtYnzYDduX1rnEFcCGmX+nJZuTLHIFjKNpT6p5gC6JNpoXp/tZ4e4roED7tINybYKfWslw4br6cx6sqsVHmEc4m+OSI1Z7V2qQU3Spo2CAhYeFV+506hpyN1bT75Xr4vTJ7dZ2/obIDDsEZUdmtwWK1pLOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slP8QNLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slP8QNLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DC6C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791708033;
	bh=ghZd7JbnWNGnDaOYyXlQjA9Y+BE9CLdht7S9v5M7YKc=;
	h=To:Subject:From:Date:From;
	b=slP8QNLw2YfzEanqrq+aVnKVDZZxd23OdspWUPPaLz2o9k5Msdhf2Vsla0uXM33k3
	 h7ac5sBa7WIhO4asNPXbQjch31b0ExNUzb8ZipemFsH5gccoNjFtKmvL2SFUvl+Bha
	 BN02nj7u6IgUvAxg3zN7sdt4/oUwIJPGLEztYsYfR+gTh4yNjx889/Vmy+7OuxieEo
	 tPeNVw2XGFbDGDTw/6x+bQs/mIjoOA7QcQnaat6u3Bo7bZ6P1JJokztTmPoIDThTG8
	 pzMIAEOkgjx3s457WP0k6uUvDAGVFpcUGGHmdrOoZ4NSIwy3O1Kg7385HN3x5pQmaF
	 C3fMP4dgkBx1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C93CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170803373.1764.7225520569276463614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc6ba029385e6cc56a38f6e4ce8a7c3326730e61a52e3f48b952c462fafacaa
Date: Sun, 11 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791708033
