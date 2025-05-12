Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D61E261574
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051794; cv=none; b=OL+0CBVFOOTtM8VY4t5kOUTV5t15CkSTmGAjpzp4nOX3tvX+YGo3cJYpDYakrKK0rKhd2b3ENwhNgcdbqN/x04DGRgF1JJGVlzHmra7OoIPSzM334KO27las8Z5RtieWZPlBvsfTB7o9aPr8+/pMe9K4IHLbcgr77MoWer3Fu4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051794; c=relaxed/simple;
	bh=vHqV3ocXdlbKK7g97jypX4pgQhzRDmMJiyFtmOI7FGs=;
	h=To:Subject:From:Message-Id:Date; b=Rbbet1MJGSLyb2t6KpArbYAUtRALvQoasLYibEm/EuYW6bDkhU43nAdQowwUTlclvo+3xlM9N6u3r2QmdXroF3iPGUTjvM4b3qbz3fqq8Txw9bgiSb07x+6mh8/eA6wbpbGsLZbKI8A29JgMaGvUve4Cc0tR5VONk7rTbrYjOxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4IpokTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4IpokTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747051793;
	bh=vHqV3ocXdlbKK7g97jypX4pgQhzRDmMJiyFtmOI7FGs=;
	h=To:Subject:From:Date:From;
	b=Y4IpokTs3xFHYdtDRemjSTFjQ0rwYsGN3dGyEb560MshboA4JWpmndy/MQ3vvNTkK
	 iEJKeSfVgKbqGu1m58kiSvtton0wKIrJYoSiaU3wZB1HLuLb5x6wzvoVq9AZiHF3a6
	 9qLdBpFF7Guck0JGm/bWJWj7Bkyyh7TwC8SDlbD9rWbTuo4l2D36XC0Ywo+dgbgyKg
	 pvlTWKpRkFd6iaJKKAAbq7nmjXsqZ1u+MC9g/4QuP4N3tT9SIKtPloJxCfH6BLVzoH
	 iU8NPG/00bAbPr49OYTwQjjKJSGIf7BOYaRUaOnTFKaa1YDULTeeDAtwhtd1rdnsQj
	 ZzyAAswLttfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA6DC3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705179358.7414.5179332339220977080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e01a83fcda305b55e20a6043be730ba68a95b2b8cdd38f2bbc4153fce9f691
Date: Mon, 12 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747051793
