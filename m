Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D0C389E09
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770061434; cv=none; b=YmBPaoJFDVJNV5sin7Oqdkqa2yfjCg10Prig9LYCU3fVIYZcOdBJ5L8GMjOlrYlhCMxRt7CtWmw1Mag0hKmmVqMi/hkvHUQjcVhmZlGB2ieqShH9cm+OQzUaSyWUc/2/LKeUTaLRDbSfx6Axi4UZ4FFa8obZPlSWKyVA/RoYBb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770061434; c=relaxed/simple;
	bh=18g6EacRw/vSczkuojejoGFJg9h5lioW0QMEcx6V6iI=;
	h=To:Subject:From:Message-Id:Date; b=KbiC3vCI+BKSSmrhi0Pnn7sqpTvyRUQRkHfk54ZZ4IBl4MimVJ6FdnfdXtGcPbOWbYVojBdYk8ZlrSW7bo+X+7msGr1rEvBu3zqq9+8+yXo2ce0MVmR2+6Ko+jehNjMdiMp1muqVftY1yWp+bYyWOVEe+ZuGUi2ZAERV67pEv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsOK+RPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsOK+RPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 120D1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770061434;
	bh=18g6EacRw/vSczkuojejoGFJg9h5lioW0QMEcx6V6iI=;
	h=To:Subject:From:Date:From;
	b=bsOK+RPtSCHSxS+OX9VFnY6t3fWy5NduC3VDsvXokcEntS+nhQYETPnR0oEq3pyTZ
	 nR/Tt8HUNuXy72XaRPcxhyvhkUjw2QW/9TVzvlk7hynAOmrNhsOP7NX+myiJ7xJhm+
	 7v6saiiU6eW3Yt86lwzl5s68uvpieP+01K8m9BLntM5euIBguxNCGF5Mv266Rs714C
	 p8b3GCt8NJmIDI8CSWiYDorbuyJmVS8/niu+z2/bPMdE5T8Aau3YSgBRtd//SvOdQV
	 2XsTELM9LcPn4jfElTVlAXqpKHQ6szTv7VspywczALjrS8JUGMjuJBkai+81DB8PNF
	 VFt4D6jy15JXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0554E73165
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006143366.27523.12277743842756504063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5156372facf91e624b030719c2d6a994e3ff596765160e62595e38f428a9b0
Date: Mon, 02 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770061433
