Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258591E2307
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757654394; cv=none; b=JXZWHZEieV70DG6yVLvI8Dmy7kIFAPuDlSDkBkOIGnPPU5N1kH4k52Q3Wa1a5YRHTyomyhnJDlNLxvgfBmpzmJRongzzX3OBFKu6GCog4Vkbol0cCmSIrmIkjWE15ngEMq2B7CT581HDtky1EiK484T/Hs7KD1lgiPzBS1XHPi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757654394; c=relaxed/simple;
	bh=mp5QQGUswGjpCptiNjBTAR5OIR8ncGokYe1ZvlfYyH8=;
	h=To:Subject:From:Message-Id:Date; b=lq3lyeAIhxlRyMcSCzAltazU99Xj2XTQCBHReAJENIBTTZjQo07V+Ei/Ob21k491Rdf0NOOExlYzbheI5i7E6cr/E/BJcs/XKAU5/T52bgIa12qz6gJj2y+87zHlOswZ7V5G73kmTsVQOKJ2uPSovQzP41rupTe39MGxO6kU0ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3q+LnKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3q+LnKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0529C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757654393;
	bh=mp5QQGUswGjpCptiNjBTAR5OIR8ncGokYe1ZvlfYyH8=;
	h=To:Subject:From:Date:From;
	b=G3q+LnKf5UROZkrc2PXOGdhioVVLPH5B94BKocjUaOAKkrK2gMQ5mhOtiji8Ywwn/
	 SbcMD4gB3HfwTGpRf3Lty9pLAgz0eORSBqoouTk3ehEXvRGe72ja5R39+yrHEoAOul
	 dXcVURPuCETJwr/sFX0Hflva07GiqSxDkHwqadBhpfB3hHiMxU1KBf8jupoyDQI35u
	 iiuSuc8CeZcL/lR+bX+9QkpiWlP2FOOPmjJfYd/DZeWHXqtqrfydxrejRh8usn28hc
	 3SoHl9nmdDdVyw8gZK/aJTqJ6JkUwsPXRCgDmFMT29bhfOyOPCgGYsfhnzZlYJv9kC
	 e0RT8rh3WAubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA7CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765439358.23914.5342058032319588679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afa1fd6bf1762a7c62e92abb20a00a977caa00a1efd98089e9149a6b7a0f379
Date: Fri, 12 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757654393
