Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791F639DBF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789295434; cv=none; b=p90LaqQEXO4nKS4hZFp0l+9XneH5+3OIZE0FmoTydkaFpPYa3jiD1VC9mELp+m7lhqorJJtW1DSC3pFe0mK0QYqyfDC/eQIWRVXwIWF+GSxXht9LY3jmOAlNG2a0GPwnWGNZ941zFq5gC8jLYldPaqqnmfhybKQ+VKSr9nCZwk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789295434; c=relaxed/simple;
	bh=3AsLbNi91dfsyfKROQNhuu1v6Y2rueGUyWDq42QgD/Q=;
	h=To:Subject:From:Message-Id:Date; b=QqZgJElaWfHVg2bSzaKsReQF68K1/7BPL2RiYBp68l8ba/NGvoJEJmSCUwdQN+3xgHU33cfBGoi8e2JcSIqMwbOYgYqAqA3gyDSnFljoUrYgEQnTFF3DDYd6jy3XDoipTNY73FPC+pRbC+EikAEIDth9a7iaxu08itWeQ7TqceY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZaZCo6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZaZCo6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB25BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789295433;
	bh=3AsLbNi91dfsyfKROQNhuu1v6Y2rueGUyWDq42QgD/Q=;
	h=To:Subject:From:Date:From;
	b=VZaZCo6QlHoO0R0QtaGg9QK8Rnyfk6PqIFgiWOaWdrK/eZImU2QMwgG+1ChyyQRqp
	 1TQFiddA9lFc4JBNcfvtwXGrTsCOg6ub1aV7V6ndEZOSLCywASY/cZNi/Zt+sA5Rts
	 zKBI0yX+O2ytQceo2BffMLDbZfpd176BUT5+3V6HskKgFdch1CUAG198S2ZCpc2T1s
	 yIm2qy4HGPUF8wr8i6eoM3KIp0j1Ic4y/hRXyYZv+UxnT6m4oNYxdZgZnPTZCm5CiK
	 s5b+N95zFsmTmTvJnzmAUzNE9EajZEPW9cwF/wvHIknqKL70wMA5EKUv7o/ViK3mZT
	 Tsn1o9//UojSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA207C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929543368.31396.17420370750765201729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319e5a650414e2a8e5b5ea1b71449f1e7d538bc8bc40cc13aafd80d705ac7272
Date: Sun, 13 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789295433
