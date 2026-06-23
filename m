Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377893FBA7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782182194; cv=none; b=UNbNXcga+LsKBIBXyQBsRjMpWLRcVk97sPRjzao87gZYwJlICQgNDfuWUAc2EOXc7ADLt2t6b8hmsyiMKynAK57TczMd0ljvYTYoOWL1cXXo1+1WFdu9Ub1RS2+2X/6lU2cJc7aSGgiACdmf5hA7Md48n+4NCNx+iSS2I/WkBeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782182194; c=relaxed/simple;
	bh=d20JDEgNHk9jVC8MxG6QfmO905nIg/AIr5zpkNStkns=;
	h=To:Subject:From:Message-Id:Date; b=maex4k8nIDDZk4AZhmvffzYCNbzwRZ3MqrlrWgrpMxnpAyfmU3slQO+3+rayaEO1pPkSkjab8yqAquQ/omfgmHhPue+DWhlYHXsXUOZvfsNsu28Z4vWoN+yNEtjR7DiYLqkHZnodCRl6JKKsFY91VVL/Ho1FAffgRb7V1n0PrF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slJwJgSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slJwJgSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782182193;
	bh=d20JDEgNHk9jVC8MxG6QfmO905nIg/AIr5zpkNStkns=;
	h=To:Subject:From:Date:From;
	b=slJwJgSvzL4fMGDCK/JhUQLBmPKw3N8VbIMXxodhtob1Oyjn2smhVs2OonVwnYszR
	 r3u4D5X8cRVPi9HutuOO+UA/eRN8Thz+qLcQK2LpDD+4GsaJvsK+vVJduastJ93hZ4
	 W0Fy6heVF9rPuP7fM6HyS2CDyqIF9H2tBr7lCZtmiNHUY2OegSvG0Kp0Uims96NJDc
	 k4Ry0MVtmwoOgwCwaDWRX0Wofo7uyViM9a8LzmCfKGzYtneCclHkoS8njsQ1ZsLqQW
	 dMciYjSR6II+XGZWTq7RmPveZ/O9mkK+puHXrdZuQW4Cdi9H8YiUYsvFOfCGgmv246
	 GUxgg98gUrLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4461CDB46B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218219371.9562.16659523742117923172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cbb8a0c4e638e1edffacc3809ad6fb7c17f6776c6f113f5462f1429537f179
Date: Tue, 23 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782182193
