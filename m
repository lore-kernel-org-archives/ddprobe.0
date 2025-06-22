Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E604409
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750625994; cv=none; b=lbByU7QdKNmkeSdapHzsJNCxOENbNgyh70RLh7Ve+t0aazVOk8Gahzdo3uP4n0AN3xi9TOQoeWeBu8c1RwfmjyjitPpTeZB3JZC6gD3YV9V2wZ/6/MN9r+k060QPBGaRoVEQ7lz2od2/xBY/M6SIo5IgotUoMrMQFVNCYqxqvhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750625994; c=relaxed/simple;
	bh=G0pHXKx7sgqeS8o+0IoZf9ZaE2U2SootJB/HneeaixE=;
	h=To:Subject:From:Message-Id:Date; b=NnPBO2P0bsDD31a1O5R8tSXbivFZD0Lyjn8PXOzsaQeCvEgAbq9uXggQ2rQalzUwW+mkrEHGrCJ+lRauqeiPVr1w8Gre6ad27mInO4s+xlWBQylM72oJ2kMeEPMKSAxiiNoInZLh8bPnBsupaOjES4/B7V9bcCdUnT89vIQEOTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfGtFZf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfGtFZf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750625993;
	bh=G0pHXKx7sgqeS8o+0IoZf9ZaE2U2SootJB/HneeaixE=;
	h=To:Subject:From:Date:From;
	b=tfGtFZf9QGFdDadqcovcbHx6qOyMUBppQe3eP3PTEZrt+Pt6FJm7l7FSbHSUIHYzJ
	 hNOdqBDp+wMkO7DazKSc4dcSEjrLT3b96oTzdyIakh0cD7EUj89+7qTp5t28NJ5uVU
	 ytNaLw0kWdkzE21LsbMP/ORurihlnZHL+Mx5YEbQlh2qP+8dzQHTKXi3rRogDNgHWR
	 fvOXQ8iOyNBqJtOETQ1bl0IWSjUnYjLZdcL6zD6qAKS7szW0xNIUM89LF6jFBfcZLZ
	 C3f5sGSJzI8au3+1LGn5zOUHOe222uI7Evf6ZrqwJD2bO3Iof/HnSgubz8AmRZLJJm
	 hkreA7SJAjurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062599358.14736.10309883751374441715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c4f90447846aa5047a8586b96cfaffcddb324256bd00f3d1fe52279515edf8
Date: Sun, 22 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750625993
