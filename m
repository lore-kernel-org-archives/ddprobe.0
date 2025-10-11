Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B549245014
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760181594; cv=none; b=SOD7APf46ZyWFoXbw0YPMYidluCcsLiTRAfaqrOH0JMV6Y6FYbBWDKv5iSqLGzIJ60yqraOYZSf9PErtFvyNHmACrvkcO87Ij4JBxuFFsE7wcJZYWNod+6rnakLpMnaaWgN0bl6VUuIqCyhjQPWg6H6ExL4XyLHJD2GbjPwZpT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760181594; c=relaxed/simple;
	bh=Y/eeVUzFPU66Wo43i1TXH7UloysW07+P2RyHw4BqyM4=;
	h=To:Subject:From:Message-Id:Date; b=e+lgFhXBpQ3ch0u3fa6EiYrv2nQGnIkZVwDxoM8gF58azkIv41IthdoUsxMJoGYgJZNp5JbXCjdr7GixYqvHXsKGwTWc4RHA0WVgjTAFrFJqwPQJEYq2eaox+kfZWyY82hBIkpt1+U2LLUWwIJy1QHT81+lV09q6bvuhyvWmawQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVdZ0Xu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVdZ0Xu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D89C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760181593;
	bh=Y/eeVUzFPU66Wo43i1TXH7UloysW07+P2RyHw4BqyM4=;
	h=To:Subject:From:Date:From;
	b=HVdZ0Xu3/0ICBO/8WibcOHI3TVo/EQME4UlXla2VBVCiL2QBs/nGK7GhztHgNoKHm
	 UK+CwCDGmfLyo8HVKGqHBmacRhJYlv6fD2aMhHYwzCMy/PigEJkZM9CjKS78dOvzEQ
	 6RGSk0I3Jdz7VzuUV3YUSB1wULX9vuqn1LlDa9KqG8RI7XehnPpgGAuRDbyGA7Jc55
	 Bs6GK4U7Wz582wasL7DVXOjyP8pfKFBT+0TU2tEj9vsbEThdK8aXCwr7VI0KHhvsj4
	 ZAEw5OsZtL+7Dluo7tF7Q4jwJPGThn6F9WlsplGD6cFrdzV7+4cUvx8MwRyOfRhF52
	 Wz6EH93VZPJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6CCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018159357.13798.14295730231481882499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3528e3168bcaebb59cb87818bd451a27215cf68a29943669d1d9bd74a0b7694
Date: Sat, 11 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760181593
