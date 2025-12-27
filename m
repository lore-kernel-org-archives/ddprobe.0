Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1B12AE77
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766797434; cv=none; b=bz42UTEAAkrmnC4jkRaG35IheGQ76esE9+c9lk0eLwqiQMoYDpR8Yj9UNAtXqaWIJ3+CRLMkluqhhpYPKpY+MDOlIYOQR49PYX04dGK2hVJ+E9YlOs43ViCgbXC7wSs6ht3dlyOxdoSqDfXp2yECrsTUbJzwa23mtdxKcfGBJes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766797434; c=relaxed/simple;
	bh=PxIWPAlR8/bsohwRAnldeENz+fVQ8plQb2gwiLF6Zj8=;
	h=To:Subject:From:Message-Id:Date; b=ZhtGt0qxqMBXRk9U0O0VslWtJ749UuQRI1tyGRP8XWkF3pIxF5OfI/+I82OADIbHCdh8fK57+r3EcX4BByIgd/lDAtrwwyAi5ptsT1xRB4xby/BaeH62E3J11BH95ymVxboEgh8TjhSiT4jHMpOdk0HN4tzuw1P+H6dVBZPDucQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ON0wh67p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ON0wh67p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0417C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766797433;
	bh=PxIWPAlR8/bsohwRAnldeENz+fVQ8plQb2gwiLF6Zj8=;
	h=To:Subject:From:Date:From;
	b=ON0wh67pxxXdO3HJxpFLInBMh/rByl3AZCWl2jw57N72CQJtLx1jxL42Baf6TQZpm
	 PShP7ylmMaRrLiXNa/ubeXwPA5hUKDvGKY5RikCkmDzxEixN4kfzWv5pDaTCBi8X5O
	 5tjxTi0ZtOBgOgoWJ5Nb1DjrwgFTltPAoU40ITJoEK2wv4c+vkMCA1jeH3NcIT6rW0
	 58pC30jIfcSSI+a6c+Qj1YRHkXwGG5Fe1kPSHm7tGzyTp/ikntWia4UHMSbRQj9gif
	 5xjQgC1Z/FMTdVmtn6Hh+6/mrzaaFSoLNo7dFzLfrCTi/SHKIlEd4ixZvry8aFYJh/
	 Wyl3gUKlwKY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994BEE8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679743360.1481.10264977508715674880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81262bf865ef8870ad78d8c11b1f266335915478dd2b66b89bed3b5bba430f06
Date: Sat, 27 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766797433
