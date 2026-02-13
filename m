Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C195A35F8B9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770997493; cv=none; b=BJ+MSpj8XD9ihq/yQ4gs24WlJ8C0/5RPPIbmXwNkzFv7Zl09ACEZh16RXDbu0vp01tmN5EuPFxHYWa7DpUH4ao4JtekzfaO1jqziW9LlT+qS0T3aGmtxOvWCuQyFlFnQ2pL29lL/TU3+/21lVd4gHYHHVz25Kh+KTuVgTXOsLcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770997493; c=relaxed/simple;
	bh=C1PfaeQSqxXTjTYgLRmoXKbu5fTGBLU8PWV4s2/DAz8=;
	h=To:Subject:From:Message-Id:Date; b=MNiSy57X4AfWeq3A5LdYgCNO2CjMj6erfseT+XQiHqKf6tCMd9XaqRjDJ8qX5VySw79bvgipq2ujnAgiBqHi2u8KPvxQqZhYK3SDW8wGzqGDtP33+j+9bsGla7QojQMgxqdaw1MD8DszzyWE4s5+pEvInSI4ZAwMWtIeS845yc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csj3lAFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csj3lAFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3078C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770997493;
	bh=C1PfaeQSqxXTjTYgLRmoXKbu5fTGBLU8PWV4s2/DAz8=;
	h=To:Subject:From:Date:From;
	b=Csj3lAFv0K+QO7nXwQgHAxzj1DuFbAH1qb+lpt+pl2vwqYbHfVjUulCyf/FNY/JEm
	 v2nIw66kxX0H2Kt09aB9lKRrG8iHDKwd9ldeTySXA1ZtBW48RP8ki1qDxJzne5DYoM
	 IsMJsw32msZdqoJrq5qR98PedVZhTFuZnC1VWCqOy04UVhVhYK74UTWVvVb93VAlx7
	 RZn0tioBz4XWfrSaSyCff2xbkmhpHrgG0NJSn/c5aWxN0euuOLgBYLHSDiRP0VyITr
	 6nWjNSyydP3hNNBFQrMl3b8Nelkm6xUdgxLOO6NFQ/1Oh2ccJtB9Rce5IpzMZQr4ni
	 vh1J75BoOjk1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB9EDF17C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099749359.28818.11676195204386314393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c84367abba008c4c5052f2d4e34aaa90b7d7bb823bb9abc51fe9c75b8d5e3d
Date: Fri, 13 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770997493
