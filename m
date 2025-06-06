Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F262323D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749235794; cv=none; b=u3OVrGHJP8K1ISbQXUxVxbZLg9/vTQOVo7ROjNwBRTa3N1O6RQm8S0CGoNUScJxfHDjYJ3h+ietjuSJpuqvHmTqP8Kanai7nY+BJZtWCWpoNFz4sPoxbjp36IC53qEsovf5iH8SR4Of6jlUkamrpTc5LCsfTcn546SobC/CR8/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749235794; c=relaxed/simple;
	bh=xI256TY19+QrM7kFx/aojnqlPKIEDG0y+FtqqJUbjf4=;
	h=To:Subject:From:Message-Id:Date; b=EpSwx+p21Co4/g9yiYVGVuYAf+2tYOKzuhegGSYsiF+c+x6NsKhWoYptEQB8NB58y7XLsQP+d719g4T3iuM0P2u9U9r71tpH7DKbiGbzpmS/c2NJJBTcfZOLPEp+ooit9UfqJMETT9ot923eB7DCZ1mNxKdiK9dQrnoxAqGo1Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sE756Zxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sE756Zxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D57C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749235793;
	bh=xI256TY19+QrM7kFx/aojnqlPKIEDG0y+FtqqJUbjf4=;
	h=To:Subject:From:Date:From;
	b=sE756ZxzYBLFgiwyPKMmg2avQM8z1qm6sHYrAemVrzV3AiCyv6zMXI++OSEZ4KVPX
	 gCJXZwa430c+LRofUmqPvtMUeBqf/S1MMCrjDnXev1qechvVlXOIunKzfQ46yhlqev
	 oG2j4pTIF45RCYfp3tC5Ix95N2VFX0tZBEMQ7eduVyxxllyfw+laQxDqyS8UZyi2v2
	 REFIjBgG78QaWdUn/n40pOJuIPIxS9un/sBMU3WPcH9VNrmEEOpCt9b6FtxIQGDNbt
	 9nnti+EoRQ2ZbDoz1jPOiwiqh32XUEq+A6tjiChtiooaN3wkyjupwpNBjEN2NoLenh
	 f2MrxTQaMwK9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBEC61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923579358.26439.11397532773726538578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6d8a1858530f6c8bbd8c6612b824a12c1c9b12d6d35c665a0a580acd5e5e6b
Date: Fri, 06 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749235793
