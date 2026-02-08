Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322B323A9A8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770591834; cv=none; b=HGtB4eo7RkL5vRoXXqb3VVHF+7LpNfIeOBr1AmnniyCKmQ0jr4KxSHtsXjXXLMUu5mcqp6ELBysHb8CoSLC/S4D/MBlvNPi1O02Br3YD6INKZNJRhwH50LuJgl5TvG/HejU4n+U0tTnG/7ULSsf+x/Vb8fbrS2DG5nNco+oduZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770591834; c=relaxed/simple;
	bh=6qPEuaac3QJe5zQmlMQbV+nHyYAPIf3QTc1y0a8PwUk=;
	h=To:Subject:From:Message-Id:Date; b=eTrkQUI/L5U1wVoyCUzu/3+DVm7+QLDChoQN0RfgN4121H5uy9JhcvgTcgwYwVQEybJrxMG8wQlFJO24ACxvJaaJFUp19yj2ZdtWDtzykgiLLLVDC+aZmttVspS/8HYnJEVNt6LY94bV5Ix9fLuN/RUeAuN6n4DG5VhLxaht9SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEagWPf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEagWPf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770591833;
	bh=6qPEuaac3QJe5zQmlMQbV+nHyYAPIf3QTc1y0a8PwUk=;
	h=To:Subject:From:Date:From;
	b=OEagWPf3DwmXnemYK5vt+/3NwsjmndfwRfai+E6rVsl7UycZgk8T7EjutUPZK/Nbr
	 j/r8j2ORtilEt1l2NaVqJqJhcscR63qpYOyXjITty5xrVH7FRo8jiTyfs+/OMWC/W6
	 j5LFdDrOQRHt3qieRrhzpVDs9y1k0rScWNu36pYq990j0c+yR0ujK3evsKpy5kmoy1
	 jZJdl5bIkmP8E343h7og8i3ArPKd/WLl9eO/hl/brHT9b6riRm25xrIT7vp06eSX2E
	 ZY3cQs0CEOYzX3SCGad88jtqfjXhiFKkm9D+o4sVOpNCH4ZTkT+sfKORLtUfRT4+r9
	 tNsNWfYgodyvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E36EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059183364.24981.7225558106349993146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0371591ddde7a5b1cfe2a74e8b99ee18ab68271a7e11680cf8f88bf4d94f81
Date: Sun, 08 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770591833
