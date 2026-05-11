Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3405454652
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778472034; cv=none; b=ilD0kd2FjxfKqviqofJV/eCVy0rgO89LxUot/ARXcqxH0VcQd1k7/5YayEl5fWaB8iiz611ttrTCfenu/5C9EdZNQIuPZdHwTFmqlAB5bGq0wGYhDUeKW90KR+4/KVsndUCXQQMOH3wyUtIqHQHbBY3lUtd7YDSfreM1nUfpzy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778472034; c=relaxed/simple;
	bh=C4FNbz1ox6ntREgneqNW0WD0eSjB8whrWg750ODjLwo=;
	h=To:Subject:From:Message-Id:Date; b=DBj9138BNvXs8p4Rnz5hYhEizseI6xe7aqoy6SFfOr+Miv6pHt30RwV+2piIKxbB9csPbawWVHYi9mu2od3HuujaZgSIkEyefaD6qa3FQeMiBb9PW+G6fB2FGckDwjiIGoF6hnWGKK7/Qn43GCNXBuwPrkf4JXiYjv64yr4RL+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reb+gMIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reb+gMIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2734C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778472033;
	bh=C4FNbz1ox6ntREgneqNW0WD0eSjB8whrWg750ODjLwo=;
	h=To:Subject:From:Date:From;
	b=reb+gMIOMZBopGYTStvbsRstTo89HEh/oUO2KaaD42o+2+Z1ePZnsCcvNsaHcLxVr
	 PnGc/l0xYNL3x9MIUwcHIo/g8jwOYakcdrOBtISn4++6m0VyWN+o0gFcxZrF5sybUv
	 7pvaH6ERI3Pl/JOIO69QxIq2+o15qudd3idpfHpjhs3FHUdc0qPhPxj2PVyNrweALT
	 URaLmG87j4Ch2IIZCHW8WcAE5BNokJvW/QKf8tQzwSSlfiq0SxYxJGNpXkeUPvL6oY
	 3ZyTkRoJwEyJmBlPly3GxwUPxDUtcKYGUP+nvpe62bnZai4lG26kdBsGf+3MW7h17+
	 5oPdszOy74gMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CABCD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847203369.8176.6445204313699448679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705e4f3668a8193e4714a96d2e05df6ac8ef3bf6869ba8d965df760d13d05f76
Date: Mon, 11 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778472033
