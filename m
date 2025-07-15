Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC57319CCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752610193; cv=none; b=exsuA+4WiBIgLeRxOagS5lYHBR5YyOkzPxXB9CUdX1bNXggAtMztUdl1jUwohsggR2kvC8jMkBCehBV3XJNFSecIAMIJl5DOxeS8Mjr13TK1TlZrmU7/QrHLfjkuLcIXUS4TuI76UebdSeZewYh09wwInQd3RJU67UIHBb7Nzp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752610193; c=relaxed/simple;
	bh=yDig5ZSNZ5nBtho8ZGQjU9D7cjJaInMjKVbfQ7y9jFY=;
	h=To:Subject:From:Message-Id:Date; b=BtQEGo8Z8EkRUEkjVArFVj6Cg8wqnZ+yM0ty80GhzVJDpQ/ZTlTcn4Cf9jN79KATq2JVIWU4aBpJ3dJbh/Olcl5V0Rg1HSxrK+qlEcDb+MwdlGbRUtbqdmfWnIZE8KnXC/aJOGAZT3RNkXNth47B8pPibX8pA3pkjTC/eNVPsQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UExkj77z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UExkj77z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B35C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752610193;
	bh=yDig5ZSNZ5nBtho8ZGQjU9D7cjJaInMjKVbfQ7y9jFY=;
	h=To:Subject:From:Date:From;
	b=UExkj77z3b4mNUZo5fro2z8snl69SoqehVt7pz+CHRiDinp5lGq3yRI1253Q35Iq8
	 0A6nqt7mhV37u0osB3r/n1KrMqbi8Nr1bFn16pDbOxbwa+whknpWPSHYvHMRCgnXSn
	 jrrZ7YEhVImLMSdqk9BP6n88Z6dsOh+nintsUKvlypjS/Z2++uGyxXWR5LtTlamCpW
	 H7cqikNi5ctu7/SBkRcTSHVZeWiiInXynm3puFsBZe8WwOKPlpkwbBkqvj5Gfr8hCF
	 HW8ZiHFo2AOKBfkJlRxY5xxnWJmVROzTXT9FLQlXfqmSbWV4Y6yyJOg6zc+fSz2CwK
	 VkLbVweBy1EQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90547C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261019358.6288.5373970400316816730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f597ec1a35fb17fca29f83b1df24b3b73ff5310d08b8ebad20ee77a9545b635b
Date: Tue, 15 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752610193
