Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3444B2AD04
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754620194; cv=none; b=FsIwso4rfiT9xUI7woI04T9q8Ym4arSoWlB6jWld3NxBZPNZu74Q9aPUOKbUDfiYek/gAXjTvlJw2TgIV+0BsnYdYUtkmliwxwgeJ2ELClb0jwpGXuQjs4k7b/Mj5ADVtoDPnmUPQsU6Dfgp+zFhqehmAbacnGsJXuuldeZ44Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754620194; c=relaxed/simple;
	bh=AjrOgYSFL9gdx/mO8iBoBKt/TRMPaXNg8D2GOG8v2Yk=;
	h=To:Subject:From:Message-Id:Date; b=YK2ZyUxX4ny+J35KxCagivzkCamy71oAIX8R80xW/2hGfCpIPf2mIbFi4JSKaXr/SXjc0aBfE82ZRr3GeOtQbDsSZvnnvaW6CgUYKF46pJTwA8Z4WaKlWghCoNS1hn5x1yFrv51BQQeK2dgHvKnnnadqnxpeYYUGGA/66S9tRRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5vjAue+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5vjAue+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7863C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754620193;
	bh=AjrOgYSFL9gdx/mO8iBoBKt/TRMPaXNg8D2GOG8v2Yk=;
	h=To:Subject:From:Date:From;
	b=h5vjAue+8Vm3W8CSJFwRgjx+Qmd1hXy72OrKcw/409myJNxTDTpKo1JERhieY6uZN
	 nI7OPkUfk4kqu2QEio8bUUU73gKz2gDrpgae/gfSH4Qezjakjz2BOUm4VUB56ATWT9
	 Rc3dL4SvZoKL9Ai10uneLdYbWww3DbuIbK1oaW5X/XUIEjV2JFzi7JWILd2RyL1i7+
	 pd15o807/xeirOJZ2r4ntEkpfoJB61xnmpHuKNHujq24aKtbFtjGkZMgmRJiPfG+Jd
	 tL8inUlLdqupXqGuMU+ojFg8jqjT57G0qscMC0v35HN5+BbYg0aNnm9LWkxiMWWItL
	 m0flYwwdy1smQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CAAC87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462019360.8811.17644731411428091299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0920199bea31062e750080c9d8d62751e2bdd1f1207a84cbc275048869f05452
Date: Fri, 08 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754620193
