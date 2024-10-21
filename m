Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C81D0E1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729493754; cv=none; b=PgqKRuysEUZpz2HVnm0zj8x871Xx4on2PzD8vk7GtpHsMcYjnr/Q3ytLhGZ11NVTKAGCvP4n85shaDXzSGXwV1PaTMdXIDqIy4NN9vAt3bpQFIM+dzEM9hn6NH89ZYIwZFU+bLhPUuEnwkOUlA0C+MyXWFM9ZGX/lTf3PFaB2Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729493754; c=relaxed/simple;
	bh=WSrAPBPigVNXQwk2TA4ox40HOnN6v7CAq+rUwSk2Wlg=;
	h=To:Subject:From:Message-Id:Date; b=Qj8Le2rIDmmwUNnMvuie7oR/VjHww2wnN7ysOdwnBHhcHrMMH3dSUbtoA65JZcuql10Qxd+uQgV6ZU/8ZP/k2J5EH3uwhCIoLfxraaFuabvU8XIYRECUVDs8FjhL5uU7rolHOV6WhksNzbxZzI1KxTOx7pxJOFrCSiBNXHXs8JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgEOzOYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgEOzOYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC001C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729493753;
	bh=WSrAPBPigVNXQwk2TA4ox40HOnN6v7CAq+rUwSk2Wlg=;
	h=To:Subject:From:Date:From;
	b=IgEOzOYiDhErKQad/7/6cbZSXXKBG+ar289qGRuLoKkJjgo1sIXAkcqdBcfZof1IN
	 tqcZPrDyNmuPMtQ9COgTvstcCrmq5B4qZpsnrfwmCxI9ECFHCjSiOM89RXDC+LKqPB
	 YyKEMxWuBNsZU5Y7d6dpltseMpoFIP35ajwhGipcg2C0mq0m6ydO3Iq9kWqLJQzyA8
	 OeEmeY32fArCsAgNk9AnK7rAvTLMCFZiHR0XOqh9QNNMpOggiXU/1KmT5UlApex4+4
	 KlM3O9dre0AtPyoftl965tSQISgVsyKnWDV1KzgPOcrNEdABNhCxQgHjM/fOoyDMjd
	 Q74iJPl119X+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CF4D3DEA1
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172949375367.9203.4585027314772933827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426f2c7d917bf620f1059544aef0d6ec6c16fbb719996ae31e9e0c3c81cda36a
Date: Mon, 21 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729493753
