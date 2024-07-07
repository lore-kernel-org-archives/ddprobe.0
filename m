Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5366E2914
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720334183; cv=none; b=dDeMSMrobfO8NqMnBm9JtauF6j9TjoNozSkarpl8XCSxebIaU/5Oyc2I/iJE3cQGiCdS7/VhyhkJ2iRJ+6a5Uta/zB66wgidRHQSRNjd/x+QFrpCfEvC9gUjStDucZtFv1JmifomuadEEJVxJFQumnu/R82KNwN7OuZy5cV3oRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720334183; c=relaxed/simple;
	bh=PRvuOOnSXc+oYqiXopmg+LlAsS13nNMqzvfYzqorYcs=;
	h=To:Subject:From:Message-Id:Date; b=YGuowXyDOc/mHTGzOaEkGO7wAwQtZE6065YTpRl/KucKdx6tLNLNZXxgRQ500J6RIICskgd6wAy5w5zPYHSnRyMydpCuMimZreY6co7TrZfve8eTzhSXbOxfNvcwR2cHSszMqjP5XTCFAx9gGGXZbI1kuItl96YAWo/wfTtC6TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozasawJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozasawJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA489C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720334182;
	bh=PRvuOOnSXc+oYqiXopmg+LlAsS13nNMqzvfYzqorYcs=;
	h=To:Subject:From:Date:From;
	b=ozasawJjtIJ9B83NGnn3lA+bzlz9PdxOzKf2X2AQoBqVKbB54dmWejmxyZjvbtYEp
	 WnsE+sN3Qa3BIKqaEfblyNn0VHtcT7Ixb4MYAk3p6KIGDgTHHB3DA1JbL/uOc3XOxZ
	 c2QWQqNhEeXuGh4y6h1BRxLZBPhG0AGubkPqvSvIz2zG1mbvPSBFBGtczbcRHBKDAk
	 GC+j/vrkRX3WcClGmaOQ5Vftzrk23HInYKRftMActFHK3Gb2z5jHwRN4ML9v/K2cug
	 XXAMQLYdwVZZVA/CGV59FO0c90+VOZmV8XxKwUHJPar6vgcIk52eNwu6nqWqdrlgH/
	 tCmyeVl9evIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5665C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033418278.2064.10576382010976157291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ce030e22798041eb0f96c33e6acd87a308f715ab4aefd893c05c0015377609
Date: Sun, 07 Jul 2024 06:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720334182
