Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8783C13E5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789442434; cv=none; b=ZU76Z+AIE+crbvIOfdi0u12WDwd37SAgLqIixspG96ufgBwwNkIfruglTncdwZcRCGuHGSlpVTiNDB08FT6Op3yVDXJmcD6bEgxYHpSVP1zQKjIkcTsVb9Vv+Z2fyLK4mbXlLifKCu/HGhwt14+LT3LYGyT+lmSNSSFKSuESIqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789442434; c=relaxed/simple;
	bh=Rk4RoDwRUzY1e46qG08JXfyaneoNtxkr0u95Es2DJIY=;
	h=To:Subject:From:Message-Id:Date; b=DcS8HPugWZ/JTQuljQWjT3jcXFu/mAWj1Y+jm7oNZVAkwan7BfvGmn2gr5z3o6ATWHbY3SOW4G8mhMJLcQ1OiiY7NyjGBdrGB2lNNamYIkP2Awd4JTlmPb9XXKBCwoaQ2d2Ys2Rzp8dvlauGNgVczkDESGw0+q6pIpZyQjXyJOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8bfJCAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8bfJCAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBEBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789442433;
	bh=Rk4RoDwRUzY1e46qG08JXfyaneoNtxkr0u95Es2DJIY=;
	h=To:Subject:From:Date:From;
	b=q8bfJCAJKPAtrXKZq+RSyivxAo5pF+aSI21lZWsWh0/uSUp5covCsfepTvFsGrg3q
	 nHBBISVwWxhKazTXVTyJqHaBiaFh3tsY6ZkwTMSgA7c/aROUNGyQ5zboLoqngyVqFw
	 dJBZ8Y8Ck5GQMaKBxfrLfBGYDvGPiyiFgdLziZCzh4BOTt+eCOqNbunoDl5TAtHhjp
	 pP2ZgdQMLsa1zAKA2rTVKG5Jl6rHoureCovBr5gC9roKu6vVpHAQu2BZOSnYJU8vFJ
	 sav2sMvzG19GaLYvK116Th5T7Qbe3ABR3BBFWtFthZryl3+807/P2wocq4x4jt709G
	 RpaRpeUH26OaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D4C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944243368.9458.8965522077462090646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab25616ddd3dc362d142f5927ffc5ab2aace95f42891db79520527a752e8f78
Date: Tue, 15 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789442433
