Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0E81DA4E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724618754; cv=none; b=rlfcuxrUPe+FTbCDgVBIq7Itf+4IKmWlkA3p7vMDBfOeiYwL6tdmeSiBsCeFeyBtuj2yWRAM0ewIqEUAAdCc6n9te3HBkSDmGnG89VxQJxbWQrlwcK60I9MQCtDB+nQRWrVixIC9TdzZ5ORqUguk2daIsvcIfNuQrSykrOwnxDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724618754; c=relaxed/simple;
	bh=jRaDvc4yUJEUBCJF/v4bqiFsx0dJanxJs2wMIzRCU2c=;
	h=To:Subject:From:Message-Id:Date; b=CT6x8g/RAjmdxC4+Db76tiuUskj8yHsJpvyD4CeI2M2ggu3wc6Y3+PjHVd+S0oEDhXnIZ9vFSySgUy5HnaSSSf3iTQO/JoKpMcPsbNdOxEVeZ91VlQ5jVlBxiYJCGwjYEXeOavPsBQ0PmYsOsecotHxRPzbKIX+pLSuUltHTWPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di8iMapd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di8iMapd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41F3C4AF16
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724618753;
	bh=jRaDvc4yUJEUBCJF/v4bqiFsx0dJanxJs2wMIzRCU2c=;
	h=To:Subject:From:Date:From;
	b=Di8iMapdlwbF5h64Fvn9/0pto3rh38uQBE5K/v9jw7g8nFIFYopgR+zR3TWevw+W6
	 2zNhVaPFCLJ/okmy2U8CfWpvExLsCBXYQVFy7mnQv8rsFZeMzybIDaCY6KZeOgGp7/
	 x+/DR3udBXSUchYdIzgQQXJhTsl83G3tufXC+vEmIGuvvbKEtiCF3fQCY4unkT+UWW
	 /TIWzKZOzOD6EG3MWZjjVzhC8CX5wG5h4UpUWAJJBNWlscgqOe+i4v97JvOTsHkmlZ
	 dTZ0h7DUDF/vaBlLpi/3sCBHuevvuiec+TmnhTVLl5YNt8isrPB3m663DyDXIPsL96
	 UMtECWmVvTBsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6EDC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461875360.31637.144267598278661023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46576a1b93df62de0862d948c671251961fe32e026d18c31f6f5648af765e340
Date: Sun, 25 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724618753
