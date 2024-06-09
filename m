Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CD1D26A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717922243; cv=none; b=sBOK+iYcAfDEqqLGsubPjsUE9D9vXaerlZb7JGMQIKx6kHur9/g9fd56Sc5NVKDxssRKvxKWmP6J7/Ly4AbLYjCA1j7ugjz8MIv3TMYGmel8jrnk6VglmMf4ZMdY8vBqbJqKNoKOFZjwrV9K9qRPj0qjwPKuBcNipE4s6cvuwsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717922243; c=relaxed/simple;
	bh=y2GRu7r5bZDBd+M6qFF9u1UZfVtA2lFZI72mzVzliGc=;
	h=To:Subject:From:Message-Id:Date; b=eNayR8kZyqADTLWeROnm7gcbgv26hiIsimPyO2u8RKQbB3oWw5/ikazK/N8GQ8onDl2sb40YrtkkKuWT26DeI6xmWDhQ3JqtupdllVIGTgCvU/r11+N989NpTgcStFchtV6+KvQyohL1y67aHJxILwLSVf3sDYWtLUG4ZnpPGoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YELOImZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YELOImZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB28CC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717922242;
	bh=y2GRu7r5bZDBd+M6qFF9u1UZfVtA2lFZI72mzVzliGc=;
	h=To:Subject:From:Date:From;
	b=YELOImZVI6wQfVoKtABuJmBNfiXBO5ZoHCtk7BCGCgsTfDezDR05QpFXbtg9vKovY
	 30kGy3z8M5ZCFzSkCWAO91Tm/kYuh/mWcN8PS9OPJF5CRQEX8mP3amAlwCEvfomB07
	 82YDjcFW8Cx0SnvuwJA8IaaUDJYm9frbKIROHcwgaTcWFRDLxHSepC5HZ2qAjPC5KF
	 m7DBrAuIXD760a+RNdIBYQ4hGzmA+0fM4FihHDY4YYNshll64Xriu5gJ13Ppg+RFNn
	 /uijXDH7X1OjA2SwbYzuzErZP+MR/wk1CnPxx6Fck2SMkRi0j0OV5ynM6MWJfGOVQc
	 6sunCZEDJD6/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F9CC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792224276.30556.10789016213018189414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8620be7df81b45aff3eebd3efdc196097206e0003e42ff875c9b12253cbcec9d
Date: Sun, 09 Jun 2024 08:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717922242
