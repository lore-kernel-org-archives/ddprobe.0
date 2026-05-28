Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB543ADB92
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779974554; cv=none; b=Y1tut+847bP2Ol5DfHzYXF+A/afTMa6QrtNQKmhF0djdY62/3/cmGsFhZ3VY3EmYwyCJNY6MB+9f5bYcd9eTS/n+jRIWe66ioiGBeYHrRzn7gdhUwKx7aepRuesjFW0gfXv/00dkpUec8yfkrT77s0y66uLhBaIUrz6ALXglD7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779974554; c=relaxed/simple;
	bh=mm4fEv9dTlC6BN+45hlCiImrkPBaPMXLJWHrFDBdOSM=;
	h=To:Subject:From:Message-Id:Date; b=nZviIiLwySoqbNQPZGlduIqK4CejjKnpMeXGgPzITaC2WpiNLqSSgJGnl4PmBcFx6J3OIN02xLeiQ9KO7FJswfVmVEAX6Kh/TS6ovVmrb66ihoeLHEK1iJ+HYZiUrI3QGtPytRKXpGSEGhzEfkczXsseHF5nvmIfXHnUDsxeMZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9XWtfjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9XWtfjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F38C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779974553;
	bh=mm4fEv9dTlC6BN+45hlCiImrkPBaPMXLJWHrFDBdOSM=;
	h=To:Subject:From:Date:From;
	b=N9XWtfjPbkUkqE6TSdMXdmpy4KcBQXtsrskYWnXT4liAAkR5eicH+/xt6qk1YIrbu
	 u2yDwtG2P25hnUT5Inniox1u94yNqLHkBYnp4lwHs7p/oMPaGt/FcrDlUmf5WlWNoh
	 BIS1dbd4dSDzwvvKKjHHno8x7xPqfjX+SpR+VZd3GrhMeqCcFMj3jryJgZqLNoT7hN
	 GradVbKuMNQki5vXAYxKVV2/kANt2zg4aA9MkAOaseq4iuXfLgGLaoZ90bLDCO8tw+
	 XJ0F1Je+n4l1EOsNRnLJbG2mav+HERqL12JbkhM6beptddLqLVZHjrxEqJe6iXnMqk
	 Tmi+Jjx6wUFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD22CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997455370.29577.18176654177230571044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1167b2f8085d62389a91e363714adf3e52bb6ec9e179e4090e05b477b32c473
Date: Thu, 28 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779974553
