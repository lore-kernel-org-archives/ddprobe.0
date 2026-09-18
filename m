Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC4B2C08AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789736434; cv=none; b=V/dF/6Z30fbhG5/Svga9+Qy+N8YaBcb7061iuH6RtJ6ZOwncjJchYk9zA8OIqryxG0jMMX3IdyJYwBbTWJRQSsFIkpUF8vcHQlvfZXSpGxgHkJA1arDM/jP0kT4J2lSvp78f/IYNdmUHao6yjNXTFFmiQf2HowKZKulq9BBTpYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789736434; c=relaxed/simple;
	bh=pzFbrmXkUip5y4iucpbcq0roQyRISiGpbNlLcdLrrIc=;
	h=To:Subject:From:Message-Id:Date; b=JWe7OA4rbSHPaVTn+2JGv4bOWeznvbtMpjskUvstGcI3X+nJhfqgCuSSOn1dY9nc69u4ZPo7dGqwurQNo4TQbrZWdnCy790Z9ke6jIbKvHcG40d4ZzN7yLt3+EzUnIllRAGmMyJx+L6YwC0+mWib1G2fh+NgVa+bD8AbcrpjJPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMw+oyWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMw+oyWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB29AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789736433;
	bh=pzFbrmXkUip5y4iucpbcq0roQyRISiGpbNlLcdLrrIc=;
	h=To:Subject:From:Date:From;
	b=pMw+oyWhC3+UHefsQzU23/zzuzj4dbeDQmnRkpo23RMUM3yHQMLNv164wsH9jTtW6
	 3Q5od/Lhu4bQQkx0xcajdQC2i4DPwry2QJtcDIPPNmx4shvN3CRkk5kzecerit/t3q
	 NILrIBIa3A+wHOg4kfIAwVuNAYjAvheT2UD4vut2QVspBnSbhwsRmqJzx+XTPDXZmx
	 hyhP4QZErA/L/5u6TpNbfYdeYbqujjoS/sGAmiB0i2NMwS/D/2MGyhb5p4v8CcZ1Ht
	 4i0Ty/wtSEvoL0aCmLWP7nxWuEQIAkcneFMBpJcZA1wG9nT5cZIS9fvE9uH4tAEx7N
	 v0tNplaxlbS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9727C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973643368.10305.14521791174354393448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c639dcde2f20119bc032a3de7f43f01b2515be4041053279be6dbc2c2d7ee2
Date: Fri, 18 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789736433
