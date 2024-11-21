Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE51D8DF6
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732194354; cv=none; b=EzWwgXX+33grC+99U5jIku/R0zsfzW5ZO6rTNdVEF64hVyNPV9M06v+8kIYC5dSDW7xW7Tp8GYGVorTJ+S5lXm8HbHPz4gUvoU72os/H3pbz5WFclDgQ3HJG6F5yZJxwtn4trkOzHRyyeoSb8vw27SYZTrfqJn9eIcpU7PxXMFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732194354; c=relaxed/simple;
	bh=YKZ1ewQRZuqJwLy/42YNc02t3v6cYOBKH0Pt+GcGlxM=;
	h=To:Subject:From:Message-Id:Date; b=jpgL/2x1JfXFy9gD6D0AGVDZBu+S+l+pCfgJheykAef4OwGK3ulV6APV1e29EDOz/o64hrydxUoDuhgK1htfCyGIlFOR0P/DUmGPci2hWlKO8olroCWJJlKkNqANtFb+xZRHp/GoupCXYrI2RVkTfZyRV0K0J+x74fvyLVCknyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFsqlZGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFsqlZGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD602C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732194353;
	bh=YKZ1ewQRZuqJwLy/42YNc02t3v6cYOBKH0Pt+GcGlxM=;
	h=To:Subject:From:Date:From;
	b=DFsqlZGj9IRDzirof48JcGCrS5ABogBhmQ33QGfY3pagyjsQW+Z4sZA7ShsezTaEa
	 2xjWaA+6Vu22dmQP/v7GBN6ruh0+RcnfNmd2x9u7lJeh61pl8+Tz1srOPb25NslE+R
	 3fv/qboQGYDbM0bFCZ2aX2uEnyOWNe+MRyVtqZTeNJVNxiubzek7qHcMMrdJPnxU+j
	 aB8+xFMT0fSfGRPcB/bSe5ZIfpt8TXdX7XMQJ6fKTE8zpUWs4MoxgIGyTRUWRxP9Kc
	 R0jDtDLbTmsHPnoaiLwJNfbsrZI5x9vQG6ZMd2c+1/FrWQah9KXYRKz1Sj3staCFKb
	 4qnZOU68KZV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564FD6ED26
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173219435360.12534.11444720132160911140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60313a1bd0a8b8657f01e26495c2bbebd3ac24d985e67b9565b884df3ec1a3dc
Date: Thu, 21 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732194353
