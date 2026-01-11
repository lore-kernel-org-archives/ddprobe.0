Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31E37262A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768136634; cv=none; b=D7exd9s5cxTKCWLQnNSiFI7fD9cmnQNrQcDYZpvwDj1AFRRN1H9dAK3jYwpWm350w/Hk90Am27u0Qv6N6NretxiwvSVzvumPrrEcdGuB3tnwNRnk+amY1uaPeWH2Y41DX0bGzIqqifB1QY3C99HzTtByD4QsqwVjOtnk37Kr3CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768136634; c=relaxed/simple;
	bh=MI+OaWAxmS00cXuc4aM1dil8fk0R8uhHjDAGV4+LqjM=;
	h=To:Subject:From:Message-Id:Date; b=oqrSSHdu++fZ1NrH4PmopeNUR7eIzyeuV6zRP7QNN5NOyqrGveL89Ylil2P40opuvfm/SJH+DOYzTYJ0TmMFWTiTeiCtOiKS4uFxwBATOSM80TJzxHCAfTFE86jkDnGtRz1y9t5ef++JfcIMpSLjseYxOibJUl45ey3GsAu3AIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1Yzev4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1Yzev4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F5C19423
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768136633;
	bh=MI+OaWAxmS00cXuc4aM1dil8fk0R8uhHjDAGV4+LqjM=;
	h=To:Subject:From:Date:From;
	b=m1Yzev4uXwlJnCtXb2YoQLOe6P9rl/odYPdeviJb5xZD/8IS1M5qb5wbk+D5ySQGy
	 pBQk35++zAkG9cRYaW0l23uWGrO/8T83GMP4coUhajQoggCWR/Mt99e6sKxIXLhDWn
	 dIAiPyBu44DjmFqx6dZMzapQdrhosU6qW3Nr7TNTMsEvTiRRBErglOcRcK71DJsk7c
	 YUtQ+BSgwSgEdGfL085oEd68Y3Zs+Z00v4//zJ4HGHX1c0xWNoJCsduOnyLR1kzut0
	 2TR9k6sDXZCuUBgOpvgCeLUpl3kKr3fE7jg6/Fqp54SA2jnRkmb1fgHXPz9VDaWphJ
	 oVWF+p3Qh0B1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B8D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813663358.23617.10064999436969367063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9ec811b6dc17b89dcf15154746626f8e9e90ebe68bb630492ae8dcea73814b
Date: Sun, 11 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768136633
