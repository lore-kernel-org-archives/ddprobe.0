Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0031B59A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736522154; cv=none; b=oYmZmVZKuWRjxTPRavfAZWOBahVpl35wYv5BigVRwSEyvST2MP8TPqTvwOcdORx3SP7kbD0pIqmR2owvCXh4zcTdPnY4o6Szm5kTka2PcwB6TjcZqHhI+eRBmGEU4HvEyCwCKpo9Hkxrs6UY/OnRaMjtSpYsDlJKwXhx7t6UtLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736522154; c=relaxed/simple;
	bh=8oexy50k1FQRlqOjY88IYsx/w6gfF867+BJLxB+9Xfk=;
	h=To:Subject:From:Message-Id:Date; b=iRlmkrEmJ2PET9P5wPznzZUuIprB0XVyZFuxdtMTKkDHxvIVm9wTfrw9S1reoDDS6YEUSS8s4lG0JiP/8ItiWMzHny2Jv6C4PsoJ6XongrjcN1AZdaj3vN8ezy+5i61UvIKihEOnSaLEKb4tn7OJ6qsAKf511tB6EE3lt3W9G8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYbbHGtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYbbHGtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A99C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736522153;
	bh=8oexy50k1FQRlqOjY88IYsx/w6gfF867+BJLxB+9Xfk=;
	h=To:Subject:From:Date:From;
	b=CYbbHGtSiIbZctbqNP8ArSF1DRziSqi1zmIE3+LLm9pr1xFuMmG2V4qB2mG6taTOE
	 EBw2Q1GYPFMWlVpPX7MlOR4WQXLD14dRHqx8BHsulPR3odm2CFSokyWsUafZwaIvyg
	 solPUNSRAnROcz6PpsOrYXHo4OrwCEqTjVEZXPi1oh8DR+XYSeLLAelZkMe4e4/BHn
	 tgN3/dvEnPTml/i88Dx4Op0VerTRcs1Q+B9agEGJF5ngEl+cezfATXjUu5s+fEgd1D
	 t43odPrPYLlH3ZQbSy95b5JkArtU/tiU73YUBPL/Rqxe1GWID8e9VAwkUYdYYdZJam
	 SS3/zx+UrG00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271DE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652215359.7153.7556129715647002193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f72d7b88eed6c02dae97fa262ed10d9e457baabe53abb6d644bb8522830b49e
Date: Fri, 10 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736522153
