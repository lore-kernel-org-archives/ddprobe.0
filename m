Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5EE3B0ACC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785261634; cv=none; b=HPC/BO7iD6JCPyjj5MQlVIUvcDPEhc8KaPe3oQFA2KxtCf+5vgbqinfLv1kqon2cuKNW6s6rYBrT41IFlBKz4/9bdgUjJD7Wwom93xdHgFXxM7bTUa4CUgi5nU/NGDgNGxN91TPo1NW5oMxD/GwmTeHecxtQm1N18UKC+4qwMLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785261634; c=relaxed/simple;
	bh=u1+5RgjFxaDfKuH1CgqQ6l8KNgLHEB2lvcetT/U+cxA=;
	h=To:Subject:From:Message-Id:Date; b=fgLc6vIFU6pxzxPyW/qnjPnxK6yDT+Hmrll6wq+noGQsM7CKTwBT4yjeMzZOfkN0EQdsTH0teW5SON5aQYCKC6Vx6UyJJJ+7r981NH8JApYOq+VuGJfpLLM/6Gn77T9lc5Q6mGt7fSNjVDuWyHs6SdatBP+Nn91sbndSVuD0IDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwncLZtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwncLZtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD8BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785261633;
	bh=u1+5RgjFxaDfKuH1CgqQ6l8KNgLHEB2lvcetT/U+cxA=;
	h=To:Subject:From:Date:From;
	b=AwncLZtvTTImKZ6e/sKdkHQOC7sujV+MuWMOm2Hy9hEcbMawV2Z9wb2jqBwVCAguw
	 yjYqItStXDVhbOXHwmCg6CC33Z5SZn18xylvKGy8K4RZrbg4LT/VL17xQK3TAPlnJb
	 8raYzUzD4AOkYigcnYh6BklYXh4hZoZSnhzMsOoxASTO/IPgsltLA9ax6IFj23JJlc
	 MnMrS7wxNYdGFN8PC42TSwlX31XPNPdtPfkXXg3U/oAtpCYLg+eEpBCjy/ZDdkdhQB
	 Ldi0ksjdzFY5F2PKDOdNCRKRuXCnVPGjazJ7bYDpyPL+4+rxwogtgEaaEemSyjIwn2
	 2JtZUiiX+xy2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A6C54F4D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526163368.14640.4486912805539156434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a648425d8f264a24b8e142a590dfebe1eea876bd1954b94dc5402616c7dfb6
Date: Tue, 28 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785261633
