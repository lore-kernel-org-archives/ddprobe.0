Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F55500945
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767917034; cv=none; b=mu4P4p/WbFXkPcCLEOJ2BmzKMmBSxlwsli14l23CBDJuWdZrwzzdkJ0Hd0POXzV0KUDMKpl9pcV7z63UIijuZNXWLuvdOZtvdeJs6UrY5nllWeI+ItRcdpYM0TgTmtRUAahV042jtMwBCNbxqcZtABW4eqzJZE7TLDyQ1eadZTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767917034; c=relaxed/simple;
	bh=EgAfD00IGzPwb+cdMC3L+9op/iq32yRxyq2W7wQDx10=;
	h=To:Subject:From:Message-Id:Date; b=HUhFcebpvs1chqzLSaJxzQXqqxnIFasEt7AVWw72j9fUUcD2hwiFCNsF09LnoBb18kFnqD98j2x9ecURCJZXXfSUf7pP/JoMaOyWQNKwoSkN18S/j9iTBaSkihZBrmnBT2yHU2ZM8JKOKjqsDRvMGMNIpe//PcAJvs9t0j/K/r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7+U0dq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7+U0dq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A771CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767917033;
	bh=EgAfD00IGzPwb+cdMC3L+9op/iq32yRxyq2W7wQDx10=;
	h=To:Subject:From:Date:From;
	b=K7+U0dq4pXs2CMGGNT2pGLGsIzX7/A0JX/a3LWnsJKaCPvgYmjGLcgm2+CSGcaj1r
	 wKZs2jQ02KNi9JqRrckSYlzPqvRPuGJ/DkTuZIpUqJXuv5EnsXXhniusi32TXgl9FR
	 rGpTQsGOXf/x+Bb82jYkUJnRkATDZMEBhSBbjNz8PD61m6KBhSwqOAxbJQPnE/DmMS
	 fc5B5WiAxOlkb5hvZ/XPdMJIJF85QeHjPzv0IALxXAUYFZPaXyVtw0HdsAXi3dntAM
	 xZCv0AAuGqFe9QiIvsZ75MzE7YWEWrYgKFdyKrjDV3MUwpwFoLd5bVD9CcrWrB2I4C
	 LFhafbhUZAoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B6D232C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791703358.25146.14824422867956876562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2d44716fcc9fcae148c95016277146d4e135e73d43262f4e7d403d0cc29662
Date: Fri, 09 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767917033
