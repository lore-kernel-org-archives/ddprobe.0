Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C41D25785D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756575594; cv=none; b=Kle6TlmGy2E4Z1FdoT1CBcYWLZNEh6y8pMc94oRJDVT3RXaCUG8gwwHFJRoRqMONBfA5smORhCMOY5WzRr2HqqtKgv1lN2frRoZpULBRdRq1cfj9qkxQhCT8KrVyOQ8qat9DCVdbq9gr99pxVJM89JhMwFp+bA1w+IBU3Vil6ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756575594; c=relaxed/simple;
	bh=0MzMeqQ9xVuvyV2obeK+KyYSPFsFyxp+X3UdAirnmKo=;
	h=To:Subject:From:Message-Id:Date; b=Lc3dPkTx919F/GU+7Lhda4dneLqJQHM+ZLvFZZF1pjRbd2piYu5TlV5JlwH1fnqI+X51+edOybrGjvA8w86o7bVZWDPVvYoERblJmeN6pnhnLNfzMrNSCJKMjk7KYPCzNfjMdfQLdmvUs0Zi7OGMgg0eaoHQb5KZz75XlUwOuBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxVWZR6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxVWZR6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4F1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756575593;
	bh=0MzMeqQ9xVuvyV2obeK+KyYSPFsFyxp+X3UdAirnmKo=;
	h=To:Subject:From:Date:From;
	b=FxVWZR6i2VyZjhUKlEiPXawNSC371HWtDXiIJeJdvTzkT9WqUp0iJaY63KLmSwhZp
	 wPVHfJTWEEVNA6fMzSrCK4nn8eh98lSh9TqvrNLIQ6vYOMGP/4yaxm5CainfNONW94
	 JsqTcLQr3i/SYGo8XQkzxLKAvNAosHu/DOisJ2MqeaZb585wPxTpmecSJbcbK4h34p
	 58CXOkuNaDVBYDW/Tlgz+VJ62cE65dSssLP5dV+Lll3vr8p+zfQTvhJSv+Q29QvXRZ
	 swWGmxE1ALdSuodetS0DVsZqijmZv9YL99lfk5NpMq/lH/WmbpNIiT5T9AEJOsB55g
	 OqmjXXpjC1gaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E671CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657559357.16764.13002182842807695994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c785979767a02f3fe600ef5b6f438717645670c2ea1bf272ea1d3e60238c42d
Date: Sat, 30 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756575593
