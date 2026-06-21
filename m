Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381AA217704
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782065794; cv=none; b=EncxpiBNS+VaaU2STHz+/tY8ddXT9sfhbzU135u3tFbsbPkuTVa2qMNbq7D+X4DfUBE9QQl0Ci37OCm4hIhOPDOoqJoOcppsZoTdql0Dzsuq/QPpRjlz0atAzt/rXGxg8v9Xl49840KiKq+JJuC2KV74OasuYF72zhMtkG6SKvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782065794; c=relaxed/simple;
	bh=hbjwNWhs07Dmgfqe83D0m46m4SZiX9MkhfEfJewvvOA=;
	h=To:Subject:From:Message-Id:Date; b=BbW4nHdUmv/CQRZ0hloWCsxYTuXonPPUHtZNd51c+0vb8xuonLQ8RR3+ypop7kFiAgKt00DucvgaaNj0feHiwKyTjpAPFGLpMp0SigSOb/7+6YUf5zMxVVXYEd2QTUVp2wmf57ZqRTW4AQlnAW01tCCSesqFgO8/23pY1tl73hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiwFAmtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiwFAmtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BD2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782065793;
	bh=hbjwNWhs07Dmgfqe83D0m46m4SZiX9MkhfEfJewvvOA=;
	h=To:Subject:From:Date:From;
	b=AiwFAmtkb947O8COaDAn4yrkXKoCJEaRIA+PBENHcP0ZtvVkTjwrbldpR4wNIRch0
	 rxB6GWtHgDTi+n21bx5DrQua0UE//Rmjn3D1MUBgG/2Jteg/iqtvrA5+3+n4Wm7ijp
	 +0OcKby7RzfIPi0uEuFCEG3c1KzTg6GTuBSMiQkLqf1XYsAWvZXrL66YupznUOM6o8
	 GWvYVBlwRyW7tQeBos8UbVkGyL17d+3SF0RpDzzidK16R/ZAf9X7AXfq3FIhuQ2Lt6
	 wRpeXz2uis40udRgYpSLr2QnqYmzu3cqdlxPzo7Q63Wvua/FVkskHiYnY7plViJ7m8
	 AIwvHZtt0ZbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0DCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206579368.23260.6733124510740783622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56428ff78305d6d92bb91a8828c6708a4516ebe2eee98796650719c563d9faaf
Date: Sun, 21 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782065793
