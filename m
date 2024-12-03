Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AF71E1A3C
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733221554; cv=none; b=e5tzu2Wk89PvAhruVz1BTgOjRwmmyz42mEdKGi2UIFR1e+olSkxPfj4Y9iBWINJoIys4xpDeX9eBxSpa0BrY9OD8yfHxg47NxC9XinP2C03r7USAopLdzsduJMCyt5IQ8ENDDd17WbhBOjkZ4YEchVsujYUps3wMlioB8EoFvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733221554; c=relaxed/simple;
	bh=Oo5h7hBBachvt04konS+XMqY+z/sXsdGgSi9bGAe3dA=;
	h=To:Subject:From:Message-Id:Date; b=vB9QUBD5YkJdAU54xwFXI8OQVwWEJ2wXZa/MFcrZ2qH5gWEBU8r9vkqPOTbN/B73AckmeDJtsFdnd7PuGRTgwz3o55Bf+oCdY2grcxxWXNpRbso4GUdrd1c3eQiQe9IvYPV09rR7BMjWl3GDuqJkXLYpHGJg6RGtQVXRnc0sNnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TurBgMYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TurBgMYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC61FC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733221553;
	bh=Oo5h7hBBachvt04konS+XMqY+z/sXsdGgSi9bGAe3dA=;
	h=To:Subject:From:Date:From;
	b=TurBgMYYKmechYq0TPDziD+Zv7bxebws55nHXE9cKZ9bB77H8ByPhUEr+Zffqe8y5
	 W/H776ownbYBgbsPOJ/9lBw33+xzyVxr3QRV9HC5GHRTfrqW1W/QVkn/4pS635oUxI
	 IdcTafKn/gqTXMtCiecC7+EpoyPR+4pGRmYA2n/jOLj1yeSQt5iNQeeyXDdY8sZnYk
	 Q5k6iHZ9AJjDoFG1nZjaaHloU2zWA0y13KgLgd/OwQhaljAELuy8UL5dxyctaO3gvn
	 h03giY8Yypt5zj7tl6JRTm/oxt6744gxvx/68iV5s47s5nDqOfBHEkR/SNfUiom+1c
	 7rQa0wUf165eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D6E69E88
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322155367.19993.2133632158582620119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d167bc427d7efab8725ef00c85a91db948c3a2b9247b32f7d13b0929170cc0
Date: Tue, 03 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733221553
