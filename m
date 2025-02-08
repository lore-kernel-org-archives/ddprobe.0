Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4D241123
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739042156; cv=none; b=oKIo7bt8xbeEZG9yLjHaXZx1Qcvw8Ltc2DHWA5Csa0SJsioWXO48AqPfHxYuzSlwE5MDq0VN/0pnAEOK0MKqsSiW+AsbkKC6ADawvPIj2s9Fpwg/dOA46BKqdDEIQ8E40JjEWROtOeh7DJWrAxPEL6dg4J6IXNPmRKD17QsMbDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739042156; c=relaxed/simple;
	bh=hxDDpTq/hm9NuPPtFAzN3ralw0d4+q6v+45luOn0odA=;
	h=To:Subject:From:Message-Id:Date; b=XO79R+u2GM10n/gCkz1tFGRVBS6UFXhEc9v5uwaxNlyRXxP+isCfW03AiR++nbNqqQksHw62AH4EQqZQlCYu5RDTbCwzItSj+WG1K+Se2qgNVXkYvZlPWx4IfZJSEAp80gyLmRcy18S8sP2Jsr0q3VhvlRtviprD1BI8cV3KufQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yaoq1J40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yaoq1J40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF49AC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739042153;
	bh=hxDDpTq/hm9NuPPtFAzN3ralw0d4+q6v+45luOn0odA=;
	h=To:Subject:From:Date:From;
	b=Yaoq1J40llQfMhqZlRvOCdweZSQuWokyzXbzF+6FC/g0osaZQ+yzmec+PHrf9iNxt
	 sH6Ac6FGQSejVGaNGOpZX54vk6t9KLAJwH8CXQOejqOQ5NSWt0JJrC9dE4FA3TbeI/
	 pNE+x+qJAa031wBKZPRlrI2r5E6/6Wj0htNVhlJjGb4tjBatF8TymiVhEsSkum8S/R
	 D04k+I6RjFRZpAUAUj813rnvAEp7p5qWEIzeHdgzUKG++jtmXwDuul8C4+qJQvgF+m
	 WFs9tiSPTUV+1Z9sn4pb0VjnyRDPbgy4GANn9Px4KoTrfZsQJkOKlGUsrhqhQnBVG0
	 oQxDyDs9N15qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97420C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904215361.19855.12912744136629958480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e939564d736d77228710b5a667cacc063fc351149e6a706248a3de976270ad0
Date: Sat, 08 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739042153
